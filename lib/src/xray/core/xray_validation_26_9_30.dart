part of 'config.dart';

// Platform-specific TUN prerequisites are left to Core on the target device.
void _validateNewProtocolSettings(
  String protocol,
  XrayProtocolSettings? settings,
  StreamConfig? stream,
  List<XrayValidationIssue> issues,
  String path,
) {
  void issue(String key, String message) =>
      issues.add(XrayValidationIssue('$path.$key', message));
  final masque = protocol.toLowerCase() == 'masque';
  final network = stream?.method ?? stream?.network;
  if (!masque && network == TransportProtocol.masque) {
    issue(
      'streamSettings.network',
      'MASQUE transport requires MASQUE protocol',
    );
  }
  if (masque) {
    if (network != TransportProtocol.masque) {
      issue('streamSettings.network', 'MASQUE requires masque transport');
    }
    if (stream?.security != SecurityProtocol.tls) {
      issue('streamSettings.security', 'MASQUE requires TLS');
    }
  }
  if (settings is TunConfig) {
    final values = settings.autoSystemWfpBlockLeak ?? const <String>[];
    for (var i = 0; i < values.length; i++) {
      if (!const {'dns', 'misconfigtun'}.contains(values[i].toLowerCase())) {
        issue(
          'settings.autoSystemWfpBlockLeak[$i]',
          'expected dns or misconfigtun',
        );
      }
    }
  }
  if (settings is MasqueClientConfig) {
    if (settings.address == null) issue('settings.address', 'address required');
    if ((settings.port ?? 0) < 1 || settings.port! > 65535) {
      issue('settings.port', 'port must be between 1 and 65535');
    }
    final dns = settings.remoteDNS ?? const <String>[];
    for (var i = 0; i < dns.length; i++) {
      if (dns[i].contains('/') || !_isIPOrPrefix(dns[i])) {
        issue('settings.remoteDNS[$i]', 'expected IP address');
      }
    }
  }
  if (settings is MasqueServerConfig) {
    final users =
        settings.clients ?? settings.users ?? const <MasqueUserConfig>[];
    final key = settings.clients != null ? 'clients' : 'users';
    final emails = <String>{};
    for (var i = 0; i < users.length; i++) {
      final user = users[i];
      final email = user.email ?? '';
      if (email.isEmpty || email.contains(':')) {
        issue(
          'settings.$key[$i].email',
          'nonempty email without colon required',
        );
      } else if (!emails.add(email.toLowerCase())) {
        issue('settings.$key[$i].email', 'duplicate email (case-insensitive)');
      }
      if ((user.pass ?? '').isEmpty) {
        issue('settings.$key[$i].pass', 'password required');
      }
      if ((user.level ?? 0) < 0 || (user.level ?? 0) > 0xffffffff) {
        issue('settings.$key[$i].level', 'expected uint32');
      }
    }
    final addresses = settings.address ?? const <String>[];
    if (addresses.isEmpty) {
      issue('settings.address', 'at least one prefix required');
    }
    final families = <bool>{};
    for (var i = 0; i < addresses.length; i++) {
      final value = addresses[i];
      if (!value.contains('/') || !_isIPOrPrefix(value)) {
        issue('settings.address[$i]', 'expected IP prefix');
      } else if (!families.add(value.contains(':'))) {
        issue('settings.address[$i]', 'at most one prefix per IP family');
      } else if (!_validMasqueAddressPool(value)) {
        issue(
          'settings.address[$i]',
          'expected a non-mapped host prefix with addresses left for clients',
        );
      }
    }
    final mtu = settings.mtu ?? 0;
    if (mtu != 0 && (mtu < 1280 || mtu > 65535)) {
      issue('settings.mtu', 'MTU must be zero or between 1280 and 65535');
    }
  }
}

// proxy/masque.newAddressPool reserves the subnet address and server address,
// plus the IPv4 broadcast address. Check host bits without truncating IPv6 or
// relying on native integer widths, so this also works in Flutter web.
bool _validMasqueAddressPool(String prefix) {
  final parts = prefix.split('/');
  final ipv6 = parts.first.contains(':');
  final bytes = ipv6
      ? Uri.parseIPv6Address(parts.first)
      : parts.first.split('.').map(int.parse).toList();
  if (ipv6 &&
      bytes.take(10).every((b) => b == 0) &&
      bytes[10] == 255 &&
      bytes[11] == 255) {
    return false;
  }
  final hostBits = bytes.length * 8 - int.parse(parts.last);
  if (hostBits < 2) return false;
  final value = bytes.fold(BigInt.zero, (n, b) => (n << 8) | BigInt.from(b));
  final hostMask = (BigInt.one << hostBits) - BigInt.one;
  final host = value & hostMask;
  return host != BigInt.zero && (ipv6 || host != hostMask);
}

void _validateNewTransportSettings(
  StreamConfig stream,
  List<XrayValidationIssue> issues,
  String path, {
  required bool inbound,
}) {
  void issue(String key, String message) =>
      issues.add(XrayValidationIssue('$path.$key', message));
  final network = stream.method ?? stream.network ?? TransportProtocol.tcp;
  if (stream.security == SecurityProtocol.reality &&
      !const {
        TransportProtocol.tcp,
        TransportProtocol.raw,
        TransportProtocol.xhttp,
        TransportProtocol.splithttp,
        TransportProtocol.grpc,
      }.contains(network)) {
    issue('security', 'REALITY only supports RAW, XHTTP and gRPC');
  }
  final masque = stream.masqueSettings;
  if (masque != null) {
    var template = masque.path ?? '';
    for (final variable in const [
      '{target}',
      '{ipproto}',
      '{?target,ipproto}',
      '{?ipproto,target}',
      '{&target,ipproto}',
      '{&ipproto,target}',
    ]) {
      template = template.replaceAll(variable, '*');
    }
    if (template.isNotEmpty &&
        (!template.startsWith('/') || template.contains(RegExp(r'[{}]')))) {
      issue(
        'masqueSettings.path',
        'expected absolute path with only target/ipproto variables',
      );
    }
    final host = masque.host ?? '';
    if (!_validMasqueHost(host)) {
      issue('masqueSettings.host', 'invalid host');
    }
    final credentials =
        (masque.user ?? '').isNotEmpty || (masque.pass ?? '').isNotEmpty;
    if ((masque.user ?? '').contains(':')) {
      issue('masqueSettings.user', 'user cannot contain a colon');
    }
    for (final header in (masque.headers ?? const <String, String>{}).entries) {
      final key = header.key.toLowerCase();
      if (key == 'host' ||
          key == 'capsule-protocol' ||
          (key == 'authorization' && credentials)) {
        issue(
          'masqueSettings.headers',
          'reserved or conflicting header: ${header.key}',
        );
      }
      if (!RegExp(r"^[!#$%&'*+.^_`|~0-9A-Za-z-]+$").hasMatch(header.key) ||
          header.value.codeUnits.any((c) => (c < 32 && c != 9) || c == 127)) {
        issue('masqueSettings.headers', 'invalid HTTP header: ${header.key}');
      }
    }
  }
  final drive =
      stream.xdriveSettings ??
      (network == TransportProtocol.xdrive ? const XDriveConfig() : null);
  if (drive != null) {
    switch (drive.service) {
      case 'local':
        break;
      case 'Google Drive':
        if (drive.secrets?.length != 3) {
          issue(
            'xdriveSettings.secrets',
            'Google Drive needs ClientID, ClientSecret, RefreshToken',
          );
        }
      case 'template':
        if (drive.template == null) {
          issue('xdriveSettings.template', 'template required');
        }
      default:
        issue(
          'xdriveSettings.service',
          'expected local, Google Drive, or template',
        );
    }
    for (final entry in drive.toJson().entries) {
      if (entry.key != 'template' &&
          entry.value is int &&
          ((entry.value as int) < 0 || (entry.value as int) > 0xffffffff)) {
        issue('xdriveSettings.${entry.key}', 'expected uint32');
      }
    }
  }
  final masks = stream.finalmask?.udp ?? const <Mask>[];
  for (var i = 0; i < masks.length; i++) {
    final mask = masks[i];
    final prefix = 'finalmask.udp[$i].settings';
    final settings = mask.settings;
    if (mask.type.toLowerCase() == 'xdns' &&
        settings is! RawFinalMaskSettings) {
      if (settings != null && settings is! XDNS) {
        issue(prefix, 'settings type does not match xdns; expected XDNS');
        continue;
      }
      final dns = settings as XDNS? ?? const XDNS();
      if ((dns.extraPoll ?? 0) < 0 || (dns.extraPoll ?? 0) > 3) {
        issue('$prefix.extraPoll', 'expected value between 0 and 3');
      }
      final domains = dns.domains ?? const <XDNSDomain>[];
      if (domains.isEmpty) issue('$prefix.domains', 'XDNS requires domains');
      for (var j = 0; j < domains.length; j++) {
        _validateXDNSDomain(domains[j], issues, '$path.$prefix.domains[$j]');
      }
      final resolvers = dns.resolvers ?? const <XDNSResolver>[];
      if (!inbound && resolvers.isEmpty) {
        issue('$prefix.resolvers', 'XDNS clients require resolvers');
      }
      for (var j = 0; j < resolvers.length; j++) {
        final resolver = resolvers[j];
        final type = resolver.type?.toLowerCase();
        if (type != 'tcp' && type != 'udp') {
          issue('$prefix.resolvers[$j].type', 'expected tcp or udp');
        } else if (resolver.settings is! RawXDNSResolverSettings &&
            ((type == 'tcp' && resolver.settings is! XDNSResolverTCP) ||
                (type == 'udp' && resolver.settings is! XDNSResolverUDP))) {
          issue(
            '$prefix.resolvers[$j].settings',
            'resolver settings do not match type',
          );
        } else if (!inbound && resolver.settings is! RawXDNSResolverSettings) {
          final address = switch (resolver.settings) {
            XDNSResolverTCP(:final addr) => addr,
            XDNSResolverUDP(:final addr) => addr,
            _ => null,
          };
          if (!_validXDNSResolverAddress(address ?? '')) {
            issue(
              '$prefix.resolvers[$j].settings.addr',
              'expected host:port or [IPv6]:port with port in 0–65535',
            );
          }
        }
      }
    }
    if (mask.type.toLowerCase() == 'noise' && settings is NoiseMask) {
      final noise = settings.noiseItems ?? const <NoiseItem>[];
      for (var j = 0; j < noise.length; j++) {
        final item = noise[j];
        if (item.type?.toLowerCase() != 'exp') continue;
        if (item.packet is! String ||
            !_validNoiseExpression(item.packet as String)) {
          issue('$prefix.noise[$j].packet', 'invalid noise expression');
        }
        if ((item.rand?.to ?? 0) > 0) {
          issue(
            '$prefix.noise[$j].rand',
            'packet and random length cannot be combined',
          );
        }
      }
    }
  }
}

// Core compares url.Parse("https://" + host).Host with the original string.
// Match Go's authority syntax directly: Dart Uri normalizes signed ports and
// empty userinfo and rejects some host characters that Go preserves.
bool _validMasqueHost(String host) {
  if (host.contains(RegExp(r'[\x00-\x20\x7f%\\^`{|}/?#@]'))) return false;
  String port;
  final bracket = host.indexOf('[');
  if (bracket >= 0) {
    if (bracket != 0) return false;
    final end = host.lastIndexOf(']');
    if (end < 0) return false;
    try {
      Uri.parseIPv6Address(host.substring(1, end));
    } on FormatException {
      return false;
    }
    port = host.substring(end + 1);
  } else {
    final colon = host.indexOf(':');
    port = colon < 0 ? '' : host.substring(colon);
  }
  if (port.isEmpty) return true;
  final match = RegExp(r':[0-9]*').matchAsPrefix(port);
  return match?.end == port.length;
}

// Core uses net.SplitHostPort and PortFromString on clients, without resolving
// DNS during validation. Empty host/port components retain Core's defaults.
bool _validXDNSResolverAddress(String address) {
  final match = RegExp(
    r'^(?:\[[^\[\]]*\]|[^\[\]:]*):([0-9]*)$',
  ).firstMatch(address);
  if (match == null || match.end != address.length) return false;
  final port = match.group(1)!;
  if (port.isEmpty) return true;
  final number = int.tryParse(port);
  return number != null && number >= 0 && number <= 65535;
}

// Go's strings.Fields/TrimSpace use Unicode White_Space, whereas RE2's \s
// only matches ASCII space, tab, CR, LF and form feed. Dart's \s/trim differ.
final _goWhitespace = RegExp(
  r'[\x09-\x0d\x20\u0085\u00a0\u1680\u2000-\u200a\u2028\u2029\u202f\u205f\u3000]+',
);

bool _validNoiseExpression(String expression) {
  final pattern = RegExp(
    r'<[ \t\r\n\f]*([a-z]+)(?:[ \t\r\n\f]+([^>]*?))?[ \t\r\n\f]*>',
  );
  var end = 0;
  var count = 0;
  for (final match in pattern.allMatches(expression)) {
    if (expression
        .substring(end, match.start)
        .replaceAll(_goWhitespace, '')
        .isNotEmpty) {
      return false;
    }
    end = match.end;
    count++;
    final arg = match.group(2) ?? '';
    switch (match.group(1)) {
      case 'b':
        final hex = arg
            .replaceAll(_goWhitespace, '')
            .replaceFirst(RegExp(r'^0x'), '')
            .replaceFirst(RegExp(r'^0X'), '');
        if (hex.isEmpty ||
            hex.length.isOdd ||
            !RegExp(r'^[0-9a-fA-F]+$').hasMatch(hex)) {
          return false;
        }
      case 'r':
      case 'rc':
      case 'rd':
        try {
          final range = XrayInt32Range.fromJson(arg);
          if (arg.isEmpty ||
              !RegExp(r'^[+-]?[0-9]+(?:-[+-]?[0-9]+)?$').hasMatch(arg) ||
              range.left < 0 ||
              range.right < range.left ||
              range.right > 65535) {
            return false;
          }
        } on FormatException {
          return false;
        }
      case 't':
      case 'c':
      case 'n':
        if (arg.isNotEmpty) return false;
      default:
        return false;
    }
  }
  return count > 0 &&
      expression.substring(end).replaceAll(_goWhitespace, '').isEmpty;
}

// Mirrors infra/conf.XDNS.Build and xdns.NewDomain. Defaults and uint16
// conversions are used for validation only; the exported JSON stays intact.
void _validateXDNSDomain(
  XDNSDomain domain,
  List<XrayValidationIssue> issues,
  String path,
) {
  void issue(String key, String message) =>
      issues.add(XrayValidationIssue('$path.$key', message));
  final name = domain.name ?? '';
  final nameLength = utf8.encode('$name.').length;
  if (name.contains('..') || nameLength > 255) {
    issue('name', 'invalid XDNS domain name');
  }
  final lenLimit = (domain.lenLimit ?? 0) == 0 ? 255 : domain.lenLimit!;
  final labelLimit = (domain.labelLimit ?? 0) == 0 ? 63 : domain.labelLimit!;
  if (lenLimit < 0 || lenLimit > 255) {
    issue('lenLimit', 'expected value between 0 and 255');
  }
  if (labelLimit < 0 || labelLimit > 63) {
    issue('labelLimit', 'expected value between 0 and 63');
  }
  if (lenLimit >= 0 && lenLimit <= 255 && labelLimit > 0 && labelLimit <= 63) {
    final available = lenLimit - nameLength - 1;
    final remainder = available % (labelLimit + 1);
    final encodedBytes = available < 0
        ? 0
        : (available ~/ (labelLimit + 1)) * labelLimit +
              (remainder > 1 ? remainder - 1 : 0);
    if (available < 0 || encodedBytes * 5 ~/ 8 < 17) {
      issue('lenLimit', 'domain limits leave fewer than 17 payload bytes');
    }
  }
  final types = domain.types ?? const <int>[];
  if (types.isEmpty) issue('types', 'at least one DNS record type required');
  for (var i = 0; i < types.length; i++) {
    if (types[i] < -0x80000000 ||
        types[i] > 0x7fffffff ||
        !const {1, 5, 16, 28}.contains(types[i] & 0xffff)) {
      issue(
        'types[$i]',
        'expected an int32 resolving to A, CNAME, TXT or AAAA',
      );
    }
  }
  final edns0 = domain.edns0 ?? 0;
  final effectiveEdns0 = edns0 & 0xffff;
  if (edns0 < -0x80000000 ||
      edns0 > 0x7fffffff ||
      (effectiveEdns0 != 0 &&
          (effectiveEdns0 < 512 || effectiveEdns0 > 4096))) {
    issue('edns0', 'expected an int32 resolving to 0 or 512–4096');
  }
}

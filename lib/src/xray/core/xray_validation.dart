part of 'config.dart';

class XrayValidationIssue {
  const XrayValidationIssue(this.path, this.message);

  final String path;
  final String message;

  @override
  String toString() => '$path: $message';
}

class XrayConfigValidationException implements Exception {
  const XrayConfigValidationException(this.issues);

  final List<XrayValidationIssue> issues;

  @override
  String toString() => issues.map((issue) => issue.toString()).join('\n');
}

extension XrayConfigValidation on XrayConfig {
  List<XrayValidationIssue> validate({
    bool allowUnknownProtocols = false,
    bool allowRawSettings = true,
  }) {
    final issues = <XrayValidationIssue>[];
    if (reverse != null) {
      issues.add(
        const XrayValidationIssue(
          'reverse',
          'legacy reverse has been removed; use VLESS Reverse Proxy',
        ),
      );
    }
    final inboundTags = _collectTags(
      inbounds?.map((item) => item.tag),
      'inbounds',
      issues,
    );
    final outboundTags = _collectTags(
      outbounds?.map((item) => item.tag),
      'outbounds',
      issues,
    );
    // A simplified VLESS reverse outbound supplies the inbound tag for
    // traffic arriving from its server. Core ignores root reverse options
    // when the outbound uses the full vnext form (without address).
    for (final outbound in outbounds ?? const <OutboundDetourConfig>[]) {
      final settings = outbound.settings;
      if (outbound.protocol.toLowerCase() == 'vless' &&
          settings is VLessOutboundConfig &&
          settings.address != null) {
        final tag = settings.reverse?.tag;
        if (tag != null && tag.isNotEmpty) inboundTags.add(tag);
      }
    }
    // VLESS inbound accounts register reverse outbounds dynamically. Multiple
    // accounts may share a reverse tag; these are references, not declarations
    // of duplicate static outbounds. Core gives clients precedence over users.
    for (final inbound in inbounds ?? const <InboundDetourConfig>[]) {
      final settings = inbound.settings;
      if (inbound.protocol.toLowerCase() != 'vless' ||
          settings is! VLessInboundConfig) {
        continue;
      }
      for (final user
          in settings.clients ?? settings.users ?? const <VLessUser>[]) {
        final tag = user.reverse?.tag;
        if (tag != null && tag.isNotEmpty) outboundTags.add(tag);
      }
    }
    final balancerTags = _collectTags(
      routing?.balancers?.map((item) => item.tag),
      'routing.balancers',
      issues,
    );

    final inboundList = inbounds ?? const <InboundDetourConfig>[];
    for (var index = 0; index < inboundList.length; index++) {
      inboundList[index]._validate(
        issues,
        'inbounds[$index]',
        outboundTags: outboundTags,
        allowUnknownProtocols: allowUnknownProtocols,
        allowRawSettings: allowRawSettings,
      );
    }

    final outboundList = outbounds ?? const <OutboundDetourConfig>[];
    for (var index = 0; index < outboundList.length; index++) {
      final outbound = outboundList[index];
      outbound._validate(
        issues,
        'outbounds[$index]',
        outboundTags: outboundTags,
        allowUnknownProtocols: allowUnknownProtocols,
        allowRawSettings: allowRawSettings,
      );
    }

    final rules = routing?.ruleList ?? const <RouterRule>[];
    for (var index = 0; index < rules.length; index++) {
      rules[index]._validate(
        issues,
        'routing.rules[$index]',
        inboundTags: inboundTags,
        outboundTags: outboundTags,
        balancerTags: balancerTags,
      );
    }

    final balancers = routing?.balancers ?? const <BalancingRule>[];
    for (var index = 0; index < balancers.length; index++) {
      balancers[index]._validate(
        issues,
        'routing.balancers[$index]',
        outboundTags: outboundTags,
      );
    }

    return issues;
  }

  void assertValid({
    bool allowUnknownProtocols = false,
    bool allowRawSettings = true,
  }) {
    final issues = validate(
      allowUnknownProtocols: allowUnknownProtocols,
      allowRawSettings: allowRawSettings,
    );
    if (issues.isNotEmpty) {
      throw XrayConfigValidationException(issues);
    }
  }
}

extension on InboundDetourConfig {
  void _validate(
    List<XrayValidationIssue> issues,
    String path, {
    required Set<String> outboundTags,
    required bool allowUnknownProtocols,
    required bool allowRawSettings,
  }) {
    final knownProtocol = _tryInboundProtocol(protocol);
    final listenAddress = listen == null
        ? ''
        : _normalizeCoreAddress(listen!.value);
    if (knownProtocol != XrayInboundProtocol.tun &&
        !(listen?.value.startsWith('env:') ?? false)) {
      final listenIP =
          listenAddress.isEmpty ||
          listenAddress == 'localhost' ||
          _parseCoreIP(listenAddress) != null;
      if (listenIP && port == null) {
        issues.add(
          XrayValidationIssue('$path.port', 'port required for IP listeners'),
        );
      } else if (!listenIP && !_isCoreSocketPath(listenAddress)) {
        issues.add(
          XrayValidationIssue(
            '$path.listen',
            'cannot listen on a domain; use an IP, localhost, or an absolute/abstract socket path',
          ),
        );
      }
    }
    _validateStream(
      streamSettings,
      issues,
      '$path.streamSettings',
      inbound: true,
      outboundTags: outboundTags,
    );
    if (knownProtocol == null && !allowUnknownProtocols) {
      issues.add(XrayValidationIssue('$path.protocol', 'unknown protocol'));
    }
    if (!allowRawSettings && settings is XrayRawInboundSettings) {
      issues.add(XrayValidationIssue('$path.settings', 'raw settings used'));
    }
    _validateNewProtocolSettings(
      protocol,
      settings,
      streamSettings,
      issues,
      path,
    );
    final vlessSettings = settings;
    if (knownProtocol == XrayInboundProtocol.vless &&
        vlessSettings is VLessInboundConfig) {
      final users =
          vlessSettings.clients ?? vlessSettings.users ?? const <VLessUser>[];
      final usersKey = vlessSettings.clients != null ? 'clients' : 'users';
      for (var index = 0; index < users.length; index++) {
        if (users[index].reverse?.sniffing != null) {
          issues.add(
            XrayValidationIssue(
              '$path.settings.$usersKey[$index].reverse.sniffing',
              'VLESS inbound reverse cannot have sniffing; configure it on the reverse outbound',
            ),
          );
        }
      }
    }
    if (settings == null && _inboundSettingsRequired(protocol)) {
      issues.add(XrayValidationIssue('$path.settings', 'settings required'));
      return;
    }
    if (!_matchesInboundSettings(protocol, settings)) {
      issues.add(
        XrayValidationIssue(
          '$path.settings',
          'settings type does not match protocol "$protocol"',
        ),
      );
    }
  }
}

extension on OutboundDetourConfig {
  void _validate(
    List<XrayValidationIssue> issues,
    String path, {
    required Set<String> outboundTags,
    required bool allowUnknownProtocols,
    required bool allowRawSettings,
  }) {
    final knownProtocol = _tryOutboundProtocol(protocol);
    _validateStream(
      streamSettings,
      issues,
      '$path.streamSettings',
      inbound: false,
      outboundTags: outboundTags,
    );
    if (settings is BlackholeConfig) {
      _validateBlackhole(
        (settings as BlackholeConfig).response,
        issues,
        '$path.settings.response',
      );
    }
    if (knownProtocol == null && !allowUnknownProtocols) {
      issues.add(XrayValidationIssue('$path.protocol', 'unknown protocol'));
    }
    if (!allowRawSettings && settings is XrayRawOutboundSettings) {
      issues.add(XrayValidationIssue('$path.settings', 'raw settings used'));
    }
    if (settings == null && _outboundSettingsRequired(protocol)) {
      issues.add(XrayValidationIssue('$path.settings', 'settings required'));
      return;
    }
    if (!_matchesOutboundSettings(protocol, settings)) {
      issues.add(
        XrayValidationIssue(
          '$path.settings',
          'settings type does not match protocol "$protocol"',
        ),
      );
    }
    _validateNewProtocolSettings(
      protocol,
      settings,
      streamSettings,
      issues,
      path,
    );
    if (knownProtocol == XrayOutboundProtocol.masque && mux?.enabled == true) {
      issues.add(
        XrayValidationIssue('$path.mux', 'MASQUE does not support mux'),
      );
    }
    _validateOutboundSecurity(this, issues, path);
    if (proxySettings != null) {
      issues.add(
        XrayValidationIssue(
          '$path.proxySettings',
          'removed in Xray 26.9.9; use streamSettings.sockopt.dialerProxy',
        ),
      );
    }
    if ((protocol.toLowerCase() == 'freedom' ||
            protocol.toLowerCase() == 'direct') &&
        streamSettings?.sockopt?.addressPortStrategy != null &&
        streamSettings?.sockopt?.addressPortStrategy !=
            AddressPortStrategy.none) {
      issues.add(
        XrayValidationIssue(
          '$path.streamSettings.sockopt.addressPortStrategy',
          'not supported by freedom outbound',
        ),
      );
    }
  }
}

void _validateOutboundSecurity(
  OutboundDetourConfig outbound,
  List<XrayValidationIssue> issues,
  String path,
) {
  final security = outbound.streamSettings?.security;
  if (security == SecurityProtocol.tls ||
      security == SecurityProtocol.reality) {
    return;
  }
  XrayAddress? address;
  String? encryption;
  final settings = outbound.settings;
  final protocol = outbound.protocol.toLowerCase();
  if (protocol == 'vless' && settings is VLessOutboundConfig) {
    address = settings.address;
    encryption = settings.encryption;
    if (address == null) {
      final servers = settings.vnext;
      if (servers == null ||
          servers.length != 1 ||
          servers.single.users.length != 1) {
        return;
      }
      address = servers.single.address;
      encryption = servers.single.users.single.encryption;
    }
    // Core checks the effective account, after expanding simplified settings.
    if (encryption != null && encryption.isNotEmpty && encryption != 'none') {
      return;
    }
  } else if (protocol == 'trojan' && settings is TrojanClientConfig) {
    address = settings.address;
    if (address == null) {
      final servers = settings.servers;
      if (servers == null || servers.length != 1) return;
      address = servers.single.address;
    }
  } else {
    // Raw protocol settings retain their existing escape-hatch semantics.
    return;
  }
  // Environment references are resolved by Core on the target device.
  if (address.value.startsWith('env:')) return;
  if (!_isCorePrivateAddress(_normalizeCoreAddress(address.value))) {
    issues.add(
      XrayValidationIssue(
        '$path.streamSettings.security',
        protocol == 'vless'
            ? 'public VLESS targets require TLS, REALITY, or VLESS encryption'
            : 'public Trojan targets require TLS or REALITY',
      ),
    );
  }
}

bool _isCoreSocketPath(String address) {
  // Configs can target another OS. Recognize both POSIX and Windows absolute
  // paths here; Core checks platform support on the target device.
  return address.startsWith('/') ||
      address.startsWith('@') ||
      RegExp(r'^(?:[a-zA-Z]:[\\/]|\\\\[^\\]+\\[^\\]+)').hasMatch(address);
}

// Mirrors common/net.ParseAddress in v26.9.30 using dart:core for Flutter web.
String _normalizeCoreAddress(String address) {
  if (address.startsWith('[') && address.endsWith(']')) {
    address = address.substring(1, address.length - 1);
  }
  return address.trim();
}

List<int>? _parseCoreIP(String address) {
  if (address.contains(':')) {
    if (address.contains('%')) return null;
    final tail = address.substring(address.lastIndexOf(':') + 1);
    if (tail.contains('.') && _parseCoreIP(tail) == null) return null;
    try {
      final bytes = Uri.parseIPv6Address(address);
      if (bytes.take(10).every((b) => b == 0) &&
          bytes[10] == 255 &&
          bytes[11] == 255) {
        return bytes.sublist(12);
      }
      return bytes;
    } on FormatException {
      return null;
    }
  }
  final octets = address.split('.');
  if (octets.length != 4) return null;
  final result = <int>[];
  for (final octet in octets) {
    final value = int.tryParse(octet);
    if (value == null ||
        value < 0 ||
        value > 255 ||
        value.toString() != octet) {
      return null;
    }
    result.add(value);
  }
  return result;
}

bool _isCorePrivateAddress(String address) {
  final ip = _parseCoreIP(address);
  if (ip != null) {
    if (ip.length == 16) {
      return (ip.take(15).every((b) => b == 0) && ip[15] <= 1) ||
          (ip[0] & 0xfe) == 0xfc ||
          (ip[0] == 0xfe && (ip[1] & 0xc0) == 0x80) ||
          ip[0] == 0xff;
    }
    final a = ip[0], b = ip[1], c = ip[2];
    return a == 0 ||
        a == 10 ||
        a == 127 ||
        a >= 224 ||
        (a == 100 && b >= 64 && b <= 127) ||
        (a == 169 && b == 254) ||
        (a == 172 && b >= 16 && b <= 31) ||
        (a == 192 &&
            (b == 168 ||
                (b == 0 && (c == 0 || c == 2)) ||
                (b == 88 && c == 99))) ||
        (a == 198 && (b == 18 || b == 19 || (b == 51 && c == 100))) ||
        (a == 203 && b == 0 && c == 113);
  }
  var domain = address.toLowerCase();
  if (domain.endsWith('.')) domain = domain.substring(0, domain.length - 1);
  if (RegExp(r'^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$').hasMatch(domain)) {
    return true;
  }
  return const [
    'lan',
    'localdomain',
    'example',
    'invalid',
    'localhost',
    'test',
    'local',
    'home.arpa',
    'internal',
  ].any((suffix) => domain == suffix || domain.endsWith('.$suffix'));
}

void _validateBlackhole(
  BlackholeResponse? response,
  List<XrayValidationIssue> issues,
  String path,
) {
  if (response == null) return;
  final json = response.toJson();
  final type = json['type'];
  if (type != null && type is! String) {
    issues.add(
      XrayValidationIssue('$path.type', 'expected response type string'),
    );
    return;
  }
  switch ((type as String? ?? '').toLowerCase()) {
    case '':
    case 'none':
    case 'http':
      return;
    case 'custom':
      final data = json['customResponseData'];
      // Go StdEncoding accepts CR/LF and empty data, but requires standard
      // alphabet and padding (unlike Dart's permissive base64 decoder).
      final normalized = data is String
          ? data.replaceAll(RegExp(r'[\r\n]'), '')
          : '';
      final match = RegExp(
        r'(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=)?',
      ).matchAsPrefix(normalized);
      if ((data != null && data is! String) ||
          match?.end != normalized.length) {
        issues.add(
          XrayValidationIssue(
            '$path.customResponseData',
            'expected standard padded base64',
          ),
        );
      }
      return;
    default:
      issues.add(
        XrayValidationIssue('$path.type', 'unknown blackhole response type'),
      );
  }
}

void _validateStream(
  StreamConfig? stream,
  List<XrayValidationIssue> issues,
  String path, {
  required bool inbound,
  required Set<String> outboundTags,
  SocketConfig? inheritedSockopt,
}) {
  if (stream == null) return;
  _validateNewTransportSettings(stream, issues, path, inbound: inbound);
  final sockopt = inheritedSockopt ?? stream.sockopt;
  // Inherited options were already checked where they were declared.
  if (!inbound && inheritedSockopt == null) {
    _validateDialerProxy(sockopt, issues, '$path.sockopt', outboundTags);
  }
  // Core gives xhttpSettings precedence over splithttpSettings. A raw extra
  // object replaces the typed options (except host/path/mode); retain its
  // escape-hatch semantics rather than validating an ignored downloadSettings.
  final split = stream.xhttpSettings ?? stream.splithttpSettings;
  final splitKey = stream.xhttpSettings != null
      ? 'xhttpSettings'
      : 'splithttpSettings';
  if (split != null && split.extra == null) {
    _validateStream(
      split.downloadSettings,
      issues,
      '$path.$splitKey.downloadSettings',
      inbound: inbound,
      outboundTags: outboundTags,
      // The XHTTP dialer replaces the entire download socket configuration
      // when penetrate is enabled, including any nested penetrate setting.
      inheritedSockopt: !inbound && sockopt?.penetrate == true ? sockopt : null,
    );
  }
  final tcpMasks = stream.finalmask?.tcp ?? const <Mask>[];
  for (var index = 0; index < tcpMasks.length; index++) {
    final type = tcpMasks[index].type.toLowerCase();
    if (const {
      'mkcp-legacy',
      'noise',
      'salamander',
      'xdns',
      'xicmp',
      'realm',
      'udphop',
    }.contains(type)) {
      issues.add(
        XrayValidationIssue(
          '$path.finalmask.tcp[$index].type',
          '$type is only supported in finalmask.udp',
        ),
      );
    }
  }
  final masks = stream.finalmask?.udp ?? const <Mask>[];
  for (var index = 0; index < masks.length; index++) {
    final mask = masks[index];
    if (const {'fragment', 'xmc'}.contains(mask.type.toLowerCase())) {
      issues.add(
        XrayValidationIssue(
          '$path.finalmask.udp[$index].type',
          '${mask.type} is only supported in finalmask.tcp',
        ),
      );
    }
    if (mask.type.toLowerCase() != 'udphop') continue;
    final settings = mask.settings;
    // Raw settings remain an explicit escape hatch.
    if (settings is RawFinalMaskSettings) continue;
    final prefix = '$path.finalmask.udp[$index].settings';
    if (settings != null && settings is! UDPHop) {
      issues.add(
        XrayValidationIssue(
          prefix,
          'settings type does not match udphop; expected UDPHop',
        ),
      );
      continue;
    }
    final hop = settings as UDPHop?;
    if ((hop?.mode ?? '')
        .split(',')
        .any(
          (mode) => !const {
            'intervallocal',
            'intervalremote',
            'perconnremote',
          }.contains(mode.toLowerCase()),
        )) {
      issues.add(
        XrayValidationIssue(
          '$prefix.mode',
          'expected intervallocal, intervalremote, or perconnremote (comma-separated)',
        ),
      );
    }
    final from = hop?.interval?.from ?? 0;
    final to = hop?.interval?.to ?? 0;
    // Core defaults the all-zero interval to 30 seconds.
    if ((from != 0 || to != 0) && (from < 5 || to > 0x7fffffff)) {
      issues.add(
        XrayValidationIssue(
          '$prefix.interval',
          'interval endpoints must be between 5 and 2147483647 seconds',
        ),
      );
    }
    final ips = hop?.remoteIPs ?? const <String>[];
    for (var ipIndex = 0; ipIndex < ips.length; ipIndex++) {
      if (!_isIPOrPrefix(ips[ipIndex])) {
        issues.add(
          XrayValidationIssue(
            '$prefix.remoteIPs[$ipIndex]',
            'expected IP address or CIDR prefix',
          ),
        );
      }
    }
  }
  for (var index = 0; index < masks.length; index++) {
    final type = masks[index].type.toLowerCase();
    if (type != 'udphop' && type != 'xicmp') continue;
    final maskPath = '$path.finalmask.udp[$index].type';
    if (inbound && type == 'udphop') {
      issues.add(XrayValidationIssue(maskPath, 'udphop is client-only'));
    } else if (index != masks.length - 1) {
      // Xray reverses UDP masks before wrapping them, so the final JSON entry
      // is level 0. HandleDial/HandleListen masks must occupy this layer.
      issues.add(
        XrayValidationIssue(maskPath, '$type must be the outermost UDP mask'),
      );
    }
  }
}

void _validateDialerProxy(
  SocketConfig? sockopt,
  List<XrayValidationIssue> issues,
  String path,
  Set<String> outboundTags,
) {
  final tag = sockopt?.dialerProxy;
  if (tag != null && tag.isNotEmpty && !outboundTags.contains(tag)) {
    issues.add(
      XrayValidationIssue('$path.dialerProxy', 'unknown outbound tag "$tag"'),
    );
  }
}

// Uses dart:core only, so validation also works in Flutter web.
bool _isIPOrPrefix(String value) {
  final parts = value.split('/');
  if (parts.length > 2) return false;
  var address = parts.first;
  final ipv6 = address.contains(':');
  if (parts.length == 2) {
    final bits = int.tryParse(parts.last);
    if (bits == null ||
        bits.toString() != parts.last ||
        bits < 0 ||
        bits > (ipv6 ? 128 : 32)) {
      return false;
    }
    if (address.contains('%')) return false;
  }
  if (ipv6) {
    final zone = address.indexOf('%');
    if (zone >= 0) {
      if (zone == address.length - 1) return false;
      address = address.substring(0, zone);
    }
    try {
      Uri.parseIPv6Address(address);
      return true;
    } on FormatException {
      return false;
    }
  }
  final octets = address.split('.');
  return octets.length == 4 &&
      octets.every((octet) {
        final n = int.tryParse(octet);
        return n != null && n >= 0 && n <= 255 && n.toString() == octet;
      });
}

extension on RouterRule {
  void _validate(
    List<XrayValidationIssue> issues,
    String path, {
    required Set<String> inboundTags,
    required Set<String> outboundTags,
    required Set<String> balancerTags,
  }) {
    if (outboundTag == null && balancerTag == null) {
      issues.add(
        XrayValidationIssue(
          path,
          'either outboundTag or balancerTag is required',
        ),
      );
    }
    if (outboundTag != null && balancerTag != null) {
      issues.add(
        XrayValidationIssue(
          path,
          'outboundTag and balancerTag cannot be used together',
        ),
      );
    }
    final outbound = outboundTag;
    if (outbound != null && !outboundTags.contains(outbound)) {
      issues.add(
        XrayValidationIssue(
          '$path.outboundTag',
          'unknown outbound tag "$outbound"',
        ),
      );
    }
    final balancer = balancerTag;
    if (balancer != null && !balancerTags.contains(balancer)) {
      issues.add(
        XrayValidationIssue(
          '$path.balancerTag',
          'unknown balancer tag "$balancer"',
        ),
      );
    }
    for (final tag in inboundTag?.values ?? const <String>[]) {
      if (!inboundTags.contains(tag)) {
        issues.add(
          XrayValidationIssue('$path.inboundTag', 'unknown inbound tag "$tag"'),
        );
      }
    }
  }
}

extension on BalancingRule {
  void _validate(
    List<XrayValidationIssue> issues,
    String path, {
    required Set<String> outboundTags,
  }) {
    final fallback = fallbackTag;
    if (fallback != null && !outboundTags.contains(fallback)) {
      issues.add(
        XrayValidationIssue(
          '$path.fallbackTag',
          'unknown outbound tag "$fallback"',
        ),
      );
    }
  }
}

Set<String> _collectTags(
  Iterable<String?>? tags,
  String path,
  List<XrayValidationIssue> issues,
) {
  final result = <String>{};
  for (final tag in tags ?? const <String?>[]) {
    if (tag == null) {
      continue;
    }
    if (!result.add(tag)) {
      issues.add(XrayValidationIssue(path, 'duplicate tag "$tag"'));
    }
  }
  return result;
}

XrayInboundProtocol? _tryInboundProtocol(String protocol) {
  try {
    return XrayInboundProtocol.fromJson(protocol);
  } on FormatException {
    return null;
  }
}

XrayOutboundProtocol? _tryOutboundProtocol(String protocol) {
  try {
    return XrayOutboundProtocol.fromJson(protocol);
  } on FormatException {
    return null;
  }
}

bool _inboundSettingsRequired(String protocol) {
  return switch (protocol.toLowerCase()) {
    'http' ||
    'shadowsocks' ||
    'socks' ||
    'mixed' ||
    'vless' ||
    'vmess' ||
    'trojan' ||
    'wireguard' ||
    'hysteria' ||
    'masque' ||
    'tun' => true,
    _ => false,
  };
}

bool _outboundSettingsRequired(String protocol) {
  return switch (protocol.toLowerCase()) {
    'http' ||
    'shadowsocks' ||
    'socks' ||
    'vless' ||
    'vmess' ||
    'trojan' ||
    'hysteria' ||
    'masque' ||
    'dns' ||
    'wireguard' => true,
    _ => false,
  };
}

bool _matchesInboundSettings(String protocol, XrayInboundSettings? settings) {
  if (settings == null || settings is XrayRawInboundSettings) {
    return true;
  }
  return switch (protocol.toLowerCase()) {
    'tunnel' || 'dokodemo-door' => settings is DokodemoConfig,
    'http' => settings is HTTPServerConfig,
    'shadowsocks' => settings is ShadowsocksServerConfig,
    'socks' || 'mixed' => settings is SocksServerConfig,
    'vless' => settings is VLessInboundConfig,
    'vmess' => settings is VMessInboundConfig,
    'trojan' => settings is TrojanServerConfig,
    'wireguard' => settings is WireGuardConfig,
    'hysteria' => settings is HysteriaServerConfig,
    'masque' => settings is MasqueServerConfig,
    'tun' => settings is TunConfig,
    _ => true,
  };
}

bool _matchesOutboundSettings(String protocol, XrayOutboundSettings? settings) {
  if (settings == null || settings is XrayRawOutboundSettings) {
    return true;
  }
  return switch (protocol.toLowerCase()) {
    'block' || 'blackhole' => settings is BlackholeConfig,
    'loopback' => settings is LoopbackConfig,
    'direct' || 'freedom' => settings is FreedomConfig,
    'http' => settings is HTTPClientConfig,
    'socks' => settings is SocksClientConfig,
    'vless' => settings is VLessOutboundConfig,
    'vmess' => settings is VMessOutboundConfig,
    'trojan' => settings is TrojanClientConfig,
    'shadowsocks' => settings is ShadowsocksClientConfig,
    'hysteria' => settings is HysteriaClientConfig,
    'masque' => settings is MasqueClientConfig,
    'dns' => settings is DNSOutboundConfig,
    'wireguard' => settings is WireGuardConfig,
    _ => true,
  };
}

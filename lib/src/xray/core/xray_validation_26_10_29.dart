part of 'config.dart';

void _validateGeodata261029(
  GeodataConfig? config,
  List<XrayValidationIssue> issues,
) {
  var cron = config?.cron ?? '';
  // Core does not start the updater without a schedule.
  if (cron.isEmpty) return;
  final assets = config?.assets ?? const <GeodataAssetConfig>[];
  if (assets.length > 100) {
    issues.add(
      const XrayValidationIssue('geodata.assets', 'at most 100 assets allowed'),
    );
  }
  for (var i = 0; i < assets.length; i++) {
    if (!assets[i].file.split('/').last.toLowerCase().endsWith('.dat')) {
      issues.add(
        XrayValidationIssue(
          'geodata.assets[$i].file',
          'geodata asset file extension must be .dat',
        ),
      );
    }
  }
  // cron.ParseStandard also accepts a timezone before the descriptor. Timezone
  // availability and asset paths/files are checked by Core on the target OS.
  if (cron.startsWith('TZ=') || cron.startsWith('CRON_TZ=')) {
    final space = cron.indexOf(' ');
    if (space < 0) return;
    cron = cron
        .substring(space)
        .replaceAll(
          RegExp('^${_goWhitespace.pattern}|${_goWhitespace.pattern}\$'),
          '',
        );
  }
  if (cron.startsWith('@every ')) {
    final ns = _parseGoDurationNanoseconds(cron.substring(7));
    if (ns == null || ns < BigInt.from(60000000000)) {
      issues.add(
        const XrayValidationIssue(
          'geodata.cron',
          'expected @every duration of at least 1 minute',
        ),
      );
    }
  }
}

BigInt? _parseGoDurationNanoseconds(String value) {
  final negative = value.startsWith('-');
  if (negative || value.startsWith('+')) value = value.substring(1);
  if (value == '0') return BigInt.zero;
  final part = RegExp(r'(\d+(?:\.\d*)?|\.\d+)(ns|us|µs|μs|ms|s|m|h)');
  var offset = 0;
  var total = BigInt.zero;
  while (offset < value.length) {
    final match = part.matchAsPrefix(value, offset);
    if (match == null) return null;
    final number = match.group(1)!.split('.');
    final unit = BigInt.from(switch (match.group(2)!) {
      'h' => 3600000000000,
      'm' => 60000000000,
      's' => 1000000000,
      'ms' => 1000000,
      'us' || 'µs' || 'μs' => 1000,
      _ => 1,
    });
    total += (BigInt.tryParse(number.first) ?? BigInt.zero) * unit;
    if (number.length == 2 && number.last.isNotEmpty) {
      // Match time.ParseDuration's leadingFraction precision limit and
      // float64 rounding, including durations very close to a whole minute.
      final limit = BigInt.one << 63;
      var fraction = BigInt.zero;
      var scale = 1.0;
      for (final digit in number.last.codeUnits) {
        if (fraction > (limit - BigInt.one) ~/ BigInt.from(10)) break;
        final next = fraction * BigInt.from(10) + BigInt.from(digit - 48);
        if (next > limit) break;
        fraction = next;
        scale *= 10;
      }
      total += BigInt.from(
        (fraction.toDouble() * (unit.toDouble() / scale)).truncate(),
      );
    }
    offset = match.end;
  }
  final limit = BigInt.one << 63;
  if (offset == 0 || total >= limit + (negative ? BigInt.one : BigInt.zero)) {
    return null;
  }
  return negative ? -total : total;
}

// Mirrors transport/internet/xdrive.ValidateS3Config; credentials and storage
// accessibility are checked by Core on the target device.
void _validateXDriveS3(
  XDriveConfig drive,
  List<XrayValidationIssue> issues,
  String path,
) {
  void issue(String field, String message) =>
      issues.add(XrayValidationIssue('$path.$field', message));
  final s3 = drive.s3;
  if (s3 == null) {
    issue('s3', 'service s3 requires an s3 object');
    return;
  }
  final endpoint = s3.endpoint ?? '';
  final hostname = _parseS3Endpoint(endpoint);
  if (hostname == null) {
    issue(
      's3.endpoint',
      'expected http(s) URL without credentials, query or fragment',
    );
  }
  final region = s3.region ?? '';
  if (!_validS3Header(region) || region.contains(RegExp(r'[/, \t]'))) {
    issue('s3.region', 'invalid S3 signing region');
  }
  final bucket = s3.bucket ?? '';
  if (!_validS3Name(bucket) || bucket.contains('/')) {
    issue('s3.bucket', 'expected bucket name without path separators');
  }
  // Core defaults an omitted pathStyle to true; preserve omission in JSON.
  if (s3.pathStyle == false) {
    if (hostname != null && _parseCoreIP(hostname) != null) {
      issue('s3.endpoint', 'virtual-hosted addressing requires a DNS endpoint');
    }
    if (bucket.contains(RegExp(r'[^a-z0-9.-]')) ||
        bucket.contains('..') ||
        bucket.startsWith('.') ||
        bucket.endsWith('.')) {
      issue(
        's3.bucket',
        'virtual-hosted addressing requires a DNS-compatible bucket',
      );
    }
  }
  var prefix = drive.remoteFolder ?? '';
  if (prefix.endsWith('/')) prefix = prefix.substring(0, prefix.length - 1);
  if (!_validS3Name(prefix)) {
    issue(
      'remoteFolder',
      "expected relative prefix without empty, '.' or '..' components",
    );
  }
  final secrets = drive.secrets ?? const <String>[];
  if (secrets.length < 2 ||
      secrets.length > 3 ||
      secrets.take(2).any((s) => s.isEmpty)) {
    issue(
      'secrets',
      'expected AccessKeyID, SecretAccessKey and optional SessionToken',
    );
  } else if (secrets.any((s) => !_validS3Header(s)) ||
      secrets.first.contains(RegExp(r'[/ ,\t]'))) {
    issue('secrets', 'invalid S3 credentials');
  }
}

bool _validS3Header(String value) =>
    !value.codeUnits.any((c) => (c < 0x20 && c != 0x09) || c == 0x7f);

bool _validS3Name(String value) =>
    !value.codeUnits.any((c) => c < 0x20 || c == 0x7f || c == 0x5c) &&
    value
        .split('/')
        .every((part) => part.isNotEmpty && part != '.' && part != '..');

// Return the hostname using net/url's syntax rules. Dart Uri normalizes some
// hosts and rejects others that Go accepts, so it cannot decide this contract.
String? _parseS3Endpoint(String value) {
  final match = RegExp(
    r'^https?://([^/?#]*)([^?#]*)',
    caseSensitive: false,
  ).firstMatch(value);
  final fragment = value.indexOf('#');
  if (match == null ||
      value.contains('?') ||
      (fragment >= 0 && fragment != value.length - 1) ||
      value.codeUnits.any((c) => c < 0x20 || c == 0x7f) ||
      RegExp(r'%(?![0-9a-fA-F]{2})').hasMatch(match.group(2)!)) {
    return null;
  }
  return _parseS3Authority(match.group(1)!);
}

String? _parseS3Authority(String authority) {
  // Go only rejects ASCII host controls/spaces and these delimiters. Other
  // Unicode host characters are preserved for Core's eventual DNS lookup.
  if (authority.contains(RegExp(r'[\x00-\x20\x7f\\^`{|}/?#@]')) ||
      RegExp(r'%(?![0-9a-fA-F]{2})').hasMatch(authority)) {
    return null;
  }
  final bracketed = authority.startsWith('[');
  if (authority.lastIndexOf('[') > 0) return null;
  final end = bracketed ? authority.lastIndexOf(']') : authority.indexOf(':');
  if (bracketed && end < 0) return null;
  final port = end < 0 ? '' : authority.substring(end + (bracketed ? 1 : 0));
  if (port.isNotEmpty && !RegExp(r'^:[0-9]*$').hasMatch(port)) return null;
  final hostname = bracketed
      ? authority.substring(1, end)
      : end < 0
      ? authority
      : authority.substring(0, end);
  if (hostname.isEmpty) return null;
  // net/url permits escaped non-ASCII host bytes and %25; IPv6 zones also
  // permit escaped ASCII host characters and spaces. Unlike raw Unicode,
  // percent-encoded non-ASCII bytes are rejected inside a zone by Go.
  final zoneStart = bracketed ? hostname.indexOf('%25') : -1;
  for (final escape in RegExp(r'%[0-9a-fA-F]{2}').allMatches(hostname)) {
    final byte = int.parse(escape.group(0)!.substring(1), radix: 16);
    final inZone = zoneStart >= 0 && escape.start >= zoneStart;
    if (inZone) {
      if (byte != 0x25 &&
          byte != 0x20 &&
          (byte >= 0x80 ||
              RegExp(
                r'[\x00-\x20\x7f%\\^`{|}/?#@]',
              ).hasMatch(String.fromCharCode(byte)))) {
        return null;
      }
    } else if (byte < 0x80 && byte != 0x25) {
      return null;
    }
  }
  if (!bracketed) return hostname;
  try {
    // Zone escapes have already been restricted to ASCII. Decode only escape
    // sequences, preserving raw Unicode that Uri.decodeComponent rejects.
    final decoded = hostname.replaceAllMapped(
      RegExp(r'%[0-9a-fA-F]{2}'),
      (match) =>
          String.fromCharCode(int.parse(match[0]!.substring(1), radix: 16)),
    );
    final zone = decoded.indexOf('%');
    if (zone == decoded.length - 1) return null;
    Uri.parseIPv6Address(zone < 0 ? decoded : decoded.substring(0, zone));
    // Keep the zone: Go net.ParseIP does not classify scoped IPs as IP literals.
    return decoded;
  } on FormatException {
    return null;
  }
}

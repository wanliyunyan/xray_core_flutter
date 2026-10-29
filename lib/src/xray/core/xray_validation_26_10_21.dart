part of 'config.dart';

void _validateTransport261021(
  StreamConfig stream,
  List<XrayValidationIssue> issues,
  String path,
) {
  void issue(String key, String message) =>
      issues.add(XrayValidationIssue('$path.$key', message));
  final drive = stream.xdriveSettings;
  _validateXmux(drive?.xmux, issues, '$path.xdriveSettings.xmux');
  _validateXmux(
    stream.masqueSettings?.xmux,
    issues,
    '$path.masqueSettings.xmux',
  );
  final split = stream.xhttpSettings ?? stream.splithttpSettings;
  if (split?.extra == null) {
    final key = stream.xhttpSettings != null
        ? 'xhttpSettings'
        : 'splithttpSettings';
    _validateXmux(split?.xmux, issues, '$path.$key.xmux');
  }
  final alpn = stream.tlsSettings?.alpn?.values;
  final h3 =
      (stream.method ?? stream.network) == TransportProtocol.xdrive &&
      stream.security == SecurityProtocol.tls &&
      alpn?.length == 1 &&
      alpn?.single == 'h3';
  if (h3) {
    // Core canonicalizes the legacy service name before applying h3 checks.
    if (drive?.service == 'google-drive' || drive?.service == 'Google Drive') {
      final masks = stream.finalmask?.udp ?? const <Mask>[];
      for (var i = 0; i < masks.length; i++) {
        if (masks[i].type.toLowerCase() != 'noise') {
          issue(
            'finalmask.udp[$i].type',
            'XDrive over h3 to Google Drive only supports the noise UDP mask',
          );
        }
      }
    }
    final congestion = stream.finalmask?.quicParams?.congestion?.toLowerCase();
    if (congestion == 'brutal' || congestion == 'force-brutal') {
      issue(
        'finalmask.quicParams.congestion',
        'XDrive over h3 does not support brutal or force-brutal',
      );
    }
  }
  for (final entry in {
    'tcp': stream.finalmask?.tcp,
    'udp': stream.finalmask?.udp,
  }.entries) {
    final masks = entry.value ?? const <Mask>[];
    for (var i = 0; i < masks.length; i++) {
      final mask = masks[i];
      final settings = mask.settings;
      final prefix = 'finalmask.${entry.key}[$i].settings';
      if (mask.type.toLowerCase() != 'filter') {
        if (settings is Filter) {
          issue(prefix, 'Filter settings require mask type filter');
        }
        continue;
      }
      if (settings is RawFinalMaskSettings) continue;
      if (settings != null && settings is! Filter) {
        issue(prefix, 'settings type does not match filter; expected Filter');
        continue;
      }
      final filter = settings as Filter?;
      for (final field in {
        'blockedSourceIPs': filter?.blockedSourceIPs,
        'allowedSourceIPs': filter?.allowedSourceIPs,
      }.entries) {
        final rules = field.value ?? const <String>[];
        for (var j = 0; j < rules.length; j++) {
          if (!_validFilterIPRule(rules[j])) {
            issue(
              '$prefix.${field.key}[$j]',
              'expected IP/CIDR, geoip:code, or ext[-ip]:file:code (optional ! inversion)',
            );
          }
        }
      }
    }
  }
}

// Mirrors common/geodata.ParseIPRules syntax. Asset existence and country codes
// must be checked by Core on the target device, where the data files live.
bool _validFilterIPRule(String rule) {
  rule = rule.replaceFirst(RegExp(r'^!+'), '');
  if (rule.startsWith('geoip:')) {
    rule = 'ext:geoip.dat:${rule.substring(6)}';
  }
  for (final prefix in ['ext:', 'ext-ip:']) {
    if (!rule.startsWith(prefix)) continue;
    final value = rule.substring(prefix.length);
    final colon = value.indexOf(':');
    return colon > 0 &&
        value.substring(colon + 1).replaceFirst(RegExp(r'^!+'), '').isNotEmpty;
  }
  final slash = rule.indexOf('/');
  var text = slash < 0 ? rule : rule.substring(0, slash);
  // Core removes brackets before trimming, using Go's Unicode White_Space.
  // Dart trim also removes U+FEFF, which Core treats as part of the address.
  if (text.startsWith('[') && text.endsWith(']')) {
    text = text.substring(1, text.length - 1);
  }
  text = text
      .replaceFirst(RegExp('^${_goWhitespace.pattern}'), '')
      .replaceFirst(RegExp('${_goWhitespace.pattern}\$'), '');
  final address = _parseCoreIP(text);
  if (address == null) return false;
  if (slash < 0 || slash == rule.length - 1) return true;
  final prefix = rule.substring(slash + 1);
  if (!RegExp(r'^[0-9]+$').hasMatch(prefix)) return false;
  final bits = int.tryParse(prefix);
  return bits != null && bits <= (address.length == 4 ? 32 : 128);
}

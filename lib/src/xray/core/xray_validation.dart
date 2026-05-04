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
    required bool allowUnknownProtocols,
    required bool allowRawSettings,
  }) {
    final knownProtocol = _tryInboundProtocol(protocol);
    if (knownProtocol == null && !allowUnknownProtocols) {
      issues.add(XrayValidationIssue('$path.protocol', 'unknown protocol'));
    }
    if (!allowRawSettings && settings is XrayRawInboundSettings) {
      issues.add(XrayValidationIssue('$path.settings', 'raw settings used'));
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
    final proxyTag = proxySettings?.tag;
    if (proxyTag != null && !outboundTags.contains(proxyTag)) {
      issues.add(
        XrayValidationIssue(
          '$path.proxySettings.tag',
          'unknown outbound tag "$proxyTag"',
        ),
      );
    }
  }
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
    'dns' => settings is DNSOutboundConfig,
    'wireguard' => settings is WireGuardConfig,
    _ => true,
  };
}

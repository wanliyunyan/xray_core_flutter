import 'dart:convert';

import 'package:flutter/material.dart' hide RouterConfig;
import 'package:flutter/services.dart';
import 'package:xray_core_flutter/xray_config.dart';

void main() {
  runApp(const XrayConfigBuilderApp());
}

class XrayConfigBuilderApp extends StatelessWidget {
  const XrayConfigBuilderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Xray Config Builder',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff2864d8)),
        scaffoldBackgroundColor: const Color(0xfff5f7fb),
        useMaterial3: true,
      ),
      home: const ConfigBuilderPage(),
    );
  }
}

enum InboundKind {
  socks,
  http,
  vless,
  vmess,
  trojan,
  shadowsocks,
  dokodemo,
  wireguard,
  hysteria,
  tun,
  raw,
}

enum ProxyProtocol {
  vless,
  vmess,
  trojan,
  shadowsocks,
  http,
  socks,
  wireguard,
  hysteria,
  loopback,
  raw,
}

enum TransportKind {
  tcp,
  raw,
  ws,
  grpc,
  httpUpgrade,
  splitHttp,
  xhttp,
  mkcp,
  kcp,
  hysteria,
}

enum SecurityKind {
  none,
  tls,
  reality,
}

enum TlsFingerprint { chrome, firefox, safari, ios, android, edge }

class ConfigBuilderPage extends StatefulWidget {
  const ConfigBuilderPage({super.key});

  @override
  State<ConfigBuilderPage> createState() => _ConfigBuilderPageState();
}

class _ConfigBuilderPageState extends State<ConfigBuilderPage> {
  final _listenController = TextEditingController(text: '127.0.0.1');
  final _inboundTagController = TextEditingController();
  final _inboundPortController = TextEditingController(text: '10808');
  final _tunNameController = TextEditingController();
  final _tunDescController = TextEditingController();
  final _tunMtuController = TextEditingController(text: '1500');
  final _tunGatewayController = TextEditingController(text: '198.18.0.1/15');
  final _tunDnsController = TextEditingController(text: '1.1.1.1');
  final _tunAutoRoutingTableController = TextEditingController();
  final _tunAutoOutboundsInterfaceController = TextEditingController();
  final _dokodemoAddressController = TextEditingController(text: '1.1.1.1');
  final _dokodemoPortController = TextEditingController(text: '53');
  final _dokodemoPortMapController = TextEditingController(text: '{\n}');
  final _rawInboundProtocolController = TextEditingController(text: 'mixed');
  final _rawInboundSettingsController =
      TextEditingController(text: '{\n  "auth": "noauth"\n}');
  final _inboundUsersJsonController = TextEditingController(text: '[]');
  final _serverController = TextEditingController(text: 'example.com');
  final _serverPortController = TextEditingController(text: '443');
  final _proxyTagController = TextEditingController(text: 'proxy');
  final _sendThroughController = TextEditingController();
  final _directTagController = TextEditingController(text: 'direct');
  final _blockTagController = TextEditingController(text: 'block');
  final _dnsOutboundTagController = TextEditingController(text: 'dns-out');
  final _directRedirectController = TextEditingController();
  final _directUserLevelController = TextEditingController();
  final _directProxyProtocolController = TextEditingController();
  final _directIpsBlockedController = TextEditingController();
  final _directFragmentPacketsController =
      TextEditingController(text: 'tlshello');
  final _directFragmentLengthController =
      TextEditingController(text: '100-200');
  final _directFragmentIntervalController =
      TextEditingController(text: '10-20');
  final _directFragmentMaxSplitController = TextEditingController();
  final _directNoiseTypeController = TextEditingController(text: 'rand');
  final _directNoisePacketController =
      TextEditingController(text: 'base64,AAAA');
  final _directNoiseDelayController = TextEditingController(text: '10-20');
  final _directNoiseApplyToController = TextEditingController();
  final _directNoisesJsonController = TextEditingController(text: '[]');
  final _dnsOutboundAddressController = TextEditingController(text: '8.8.8.8');
  final _dnsOutboundPortController = TextEditingController(text: '53');
  final _dnsOutboundUserLevelController = TextEditingController();
  final _dnsOutboundNonIpQueryController = TextEditingController(text: 'skip');
  final _dnsOutboundBlockTypesController = TextEditingController();
  final _dnsOutboundRuleQtypeController = TextEditingController();
  final _dnsOutboundRuleDomainController = TextEditingController();
  final _dnsOutboundRulesJsonController = TextEditingController(text: '[]');
  final _wireguardSecretController =
      TextEditingController(text: 'replace-with-wireguard-secret-key');
  final _wireguardPublicController =
      TextEditingController(text: 'replace-with-peer-public-key');
  final _wireguardAddressController =
      TextEditingController(text: '10.0.0.2/32');
  final _wireguardAllowedIpsController =
      TextEditingController(text: '0.0.0.0/0,::/0');
  final _wireguardEndpointController =
      TextEditingController(text: 'example.com:51820');
  final _wireguardMtuController = TextEditingController(text: '1420');
  final _wireguardReservedController = TextEditingController();
  final _wireguardPreSharedKeyController = TextEditingController();
  final _wireguardKeepAliveController = TextEditingController(text: '25');
  final _wireguardPeersJsonController = TextEditingController(text: '[]');
  final _hysteriaVersionController = TextEditingController(text: '2');
  final _loopbackInboundTagController = TextEditingController();
  final _rawOutboundProtocolController =
      TextEditingController(text: 'loopback');
  final _rawOutboundSettingsController = TextEditingController(text: '{\n}');
  final _outboundTargetsJsonController = TextEditingController(text: '[]');
  final _inboundsJsonController = TextEditingController(text: '[]');
  final _outboundsJsonController = TextEditingController(text: '[]');
  final _logAccessController = TextEditingController();
  final _logErrorController = TextEditingController();
  final _logMaskAddressController = TextEditingController(text: 'quarter');
  final _uuidController = TextEditingController(
    text: '00000000-0000-0000-0000-000000000000',
  );
  final _passwordController =
      TextEditingController(text: 'replace-with-secret');
  final _usernameController = TextEditingController(text: 'user');
  final _userEmailController = TextEditingController(text: 'user@example.com');
  final _userLevelController = TextEditingController(text: '0');
  final _inboundUserLevelController = TextEditingController(text: '0');
  final _vlessFlowController = TextEditingController();
  final _vlessSeedController = TextEditingController();
  final _vlessEncryptionController = TextEditingController(text: 'none');
  final _vlessTestPreController = TextEditingController();
  final _vlessTestSeedController = TextEditingController();
  final _vlessReverseTagController = TextEditingController(text: 'reverse');
  final _vlessFallbackNameController = TextEditingController();
  final _vlessFallbackAlpnController = TextEditingController(text: 'h2');
  final _vlessFallbackPathController = TextEditingController();
  final _vlessFallbackDestController = TextEditingController(text: '80');
  final _vlessFallbackXverController = TextEditingController();
  final _fallbacksJsonController = TextEditingController(text: '[]');
  final _vmessExperimentsController = TextEditingController();
  final _vmessDefaultLevelController = TextEditingController();
  final _shadowsocksCipherController =
      TextEditingController(text: 'aes-128-gcm');
  final _httpHeadersController = TextEditingController();
  final _pathController = TextEditingController(text: '/ws');
  final _httpUpgradePathController = TextEditingController(text: '/upgrade');
  final _splitHttpPathController = TextEditingController(text: '/xhttp');
  final _tcpHeaderJsonController =
      TextEditingController(text: '{\n  "type": "http"\n}');
  final _tcpHeaderRequestVersionController = TextEditingController();
  final _tcpHeaderRequestMethodController = TextEditingController(text: 'GET');
  final _tcpHeaderRequestPathController = TextEditingController(text: '/');
  final _tcpHeaderRequestHeadersController =
      TextEditingController(text: '{\n}');
  final _tcpHeaderResponseVersionController = TextEditingController();
  final _tcpHeaderResponseStatusController = TextEditingController(text: '200');
  final _tcpHeaderResponseReasonController = TextEditingController(text: 'OK');
  final _tcpHeaderResponseHeadersController =
      TextEditingController(text: '{\n}');
  final _streamAddressController = TextEditingController();
  final _streamPortController = TextEditingController();
  final _finalMaskJsonController = TextEditingController(text: '{\n}');
  final _finalMaskTcpJsonController = TextEditingController(text: '[]');
  final _finalMaskUdpJsonController = TextEditingController(text: '[]');
  final _finalMaskQuicJsonController = TextEditingController(text: '{\n}');
  final _finalMaskFragmentPacketsController = TextEditingController();
  final _finalMaskFragmentLengthController = TextEditingController();
  final _finalMaskFragmentDelayController = TextEditingController();
  final _finalMaskFragmentMaxSplitController = TextEditingController();
  final _finalMaskNoiseResetController = TextEditingController();
  final _finalMaskNoiseItemsController = TextEditingController(text: '[]');
  final _finalMaskDnsDomainController = TextEditingController();
  final _finalMaskSalamanderPasswordController = TextEditingController();
  final _finalMaskAesPasswordController = TextEditingController();
  final _finalMaskXdnsDomainController = TextEditingController();
  final _finalMaskXdnsDomainsController = TextEditingController();
  final _finalMaskXdnsResolversController = TextEditingController();
  final _finalMaskXicmpIpsController = TextEditingController();
  final _finalMaskSudokuPasswordController = TextEditingController();
  final _finalMaskSudokuAsciiController = TextEditingController();
  final _finalMaskSudokuCustomTableController = TextEditingController();
  final _finalMaskSudokuCustomTablesController = TextEditingController();
  final _finalMaskSudokuPaddingMinController = TextEditingController();
  final _finalMaskSudokuPaddingMaxController = TextEditingController();
  final _finalMaskTcpCustomClientsController =
      TextEditingController(text: '[]');
  final _finalMaskTcpCustomServersController =
      TextEditingController(text: '[]');
  final _finalMaskTcpCustomErrorsController = TextEditingController(text: '[]');
  final _finalMaskUdpCustomModeController = TextEditingController();
  final _finalMaskUdpCustomClientController = TextEditingController(text: '[]');
  final _finalMaskUdpCustomServerController = TextEditingController(text: '[]');
  final _quicCongestionController = TextEditingController();
  final _quicBbrProfileController = TextEditingController();
  final _quicBrutalUpController = TextEditingController();
  final _quicBrutalDownController = TextEditingController();
  final _quicUdpHopPortsController = TextEditingController();
  final _quicUdpHopIntervalController = TextEditingController();
  final _quicInitStreamWindowController = TextEditingController();
  final _quicMaxStreamWindowController = TextEditingController();
  final _quicInitConnectionWindowController = TextEditingController();
  final _quicMaxConnectionWindowController = TextEditingController();
  final _quicMaxIdleTimeoutController = TextEditingController();
  final _quicKeepAlivePeriodController = TextEditingController();
  final _quicMaxIncomingStreamsController = TextEditingController();
  final _wsHostController = TextEditingController(text: 'example.com');
  final _wsHeartbeatController = TextEditingController(text: '30');
  final _serviceController = TextEditingController(text: 'grpc-service');
  final _grpcAuthorityController = TextEditingController(text: 'example.com');
  final _grpcUserAgentController = TextEditingController(text: 'xray-core');
  final _grpcIdleTimeoutController = TextEditingController();
  final _grpcHealthCheckTimeoutController = TextEditingController();
  final _grpcInitialWindowSizeController = TextEditingController();
  final _kcpMtuController = TextEditingController(text: '1350');
  final _kcpTtiController = TextEditingController(text: '50');
  final _kcpUplinkController = TextEditingController(text: '5');
  final _kcpDownlinkController = TextEditingController(text: '20');
  final _kcpCwndMultiplierController = TextEditingController();
  final _kcpMaxSendingWindowController = TextEditingController();
  final _kcpSeedController = TextEditingController();
  final _kcpHeaderJsonController = TextEditingController();
  final _publicKeyController = TextEditingController(
    text: 'replace-with-public-key',
  );
  final _shortIdController = TextEditingController(text: 'abcd');
  final _realitySpiderXController = TextEditingController(text: '/');
  final _realityMldsa65VerifyController = TextEditingController();
  final _realityMasterKeyLogController = TextEditingController();
  final _realityTargetController =
      TextEditingController(text: 'example.com:443');
  final _realityDestController = TextEditingController();
  final _realityTypeController = TextEditingController();
  final _realityXverController = TextEditingController();
  final _realityServerNamesController =
      TextEditingController(text: 'example.com');
  final _realityPrivateKeyController =
      TextEditingController(text: 'replace-with-private-key');
  final _realityMinClientVerController = TextEditingController();
  final _realityMaxClientVerController = TextEditingController();
  final _realityMaxTimeDiffController = TextEditingController();
  final _realityShortIdsController = TextEditingController(text: 'abcd');
  final _realityMldsa65SeedController = TextEditingController();
  final _realityPasswordController = TextEditingController();
  final _realityUploadAfterBytesController = TextEditingController();
  final _realityUploadBytesPerSecController = TextEditingController();
  final _realityUploadBurstController = TextEditingController();
  final _realityDownloadAfterBytesController = TextEditingController();
  final _realityDownloadBytesPerSecController = TextEditingController();
  final _realityDownloadBurstController = TextEditingController();
  final _tlsServerNameController = TextEditingController();
  final _tlsMinVersionController = TextEditingController();
  final _tlsMaxVersionController = TextEditingController();
  final _tlsAlpnCustomController = TextEditingController();
  final _tlsCipherSuitesController = TextEditingController();
  final _tlsCurvePreferencesController = TextEditingController();
  final _tlsMasterKeyLogController = TextEditingController();
  final _tlsPinnedPeerCertController = TextEditingController();
  final _tlsVerifyPeerCertByNameController = TextEditingController();
  final _tlsEchServerKeysController = TextEditingController();
  final _tlsEchConfigListController = TextEditingController();
  final _tlsEchSockoptController = TextEditingController(text: '{\n}');
  final _tlsCertFileController = TextEditingController();
  final _tlsCertLinesController = TextEditingController();
  final _tlsKeyFileController = TextEditingController();
  final _tlsKeyLinesController = TextEditingController();
  final _tlsOcspStaplingController = TextEditingController();
  final _tlsCertsJsonController = TextEditingController(text: '[]');
  final _dnsPrimaryController = TextEditingController(text: '1.1.1.1');
  final _dnsSecondaryController = TextEditingController(text: '8.8.8.8');
  final _dnsClientIpController = TextEditingController();
  final _dnsTagController = TextEditingController(text: 'dns');
  final _dnsPrimaryPortController = TextEditingController();
  final _dnsPrimaryDomainsController =
      TextEditingController(text: 'geosite:cn');
  final _dnsPrimaryExpectedIpsController =
      TextEditingController(text: 'geoip:cn');
  final _dnsPrimaryExpectIpsController = TextEditingController();
  final _dnsPrimaryUnexpectedIpsController = TextEditingController();
  final _dnsPrimaryClientIpController = TextEditingController();
  final _dnsPrimaryTagController = TextEditingController(text: 'primary');
  final _dnsPrimaryTimeoutController = TextEditingController(text: '4000');
  final _dnsServeExpiredTtlController = TextEditingController();
  final _dnsPrimaryServeExpiredTtlController = TextEditingController();
  final _dnsSecondaryPortController = TextEditingController();
  final _dnsSecondaryDomainsController = TextEditingController();
  final _dnsSecondaryExpectedIpsController = TextEditingController();
  final _dnsSecondaryExpectIpsController = TextEditingController();
  final _dnsSecondaryUnexpectedIpsController = TextEditingController();
  final _dnsSecondaryClientIpController = TextEditingController();
  final _dnsSecondaryTagController = TextEditingController(text: 'secondary');
  final _dnsSecondaryTimeoutController = TextEditingController();
  final _dnsSecondaryServeExpiredTtlController = TextEditingController();
  final _dnsHostsJsonController = TextEditingController(text: '{\n}');
  final _dnsServersJsonController = TextEditingController(text: '[]');
  final _fakeDnsIpPoolController = TextEditingController(text: '198.18.0.0/15');
  final _fakeDnsPoolSizeController = TextEditingController(text: '65535');
  final _fakeDnsPoolsJsonController = TextEditingController(text: '[]');
  final _metricsListenController =
      TextEditingController(text: '127.0.0.1:11111');
  final _metricsTagController = TextEditingController(text: 'metrics');
  final _policyHandshakeController = TextEditingController(text: '4');
  final _policyConnIdleController = TextEditingController(text: '300');
  final _policyUplinkOnlyController = TextEditingController(text: '2');
  final _policyDownlinkOnlyController = TextEditingController(text: '5');
  final _policyBufferSizeController = TextEditingController(text: '10240');
  final _policyLevelsJsonController = TextEditingController(text: '{\n}');
  final _muxConcurrencyController = TextEditingController(text: '8');
  final _muxXudpConcurrencyController = TextEditingController();
  final _proxySettingsTagController = TextEditingController(text: 'proxy');
  final _sockoptTcpFastOpenValueController = TextEditingController();
  final _sockoptMarkController = TextEditingController();
  final _sockoptInterfaceController = TextEditingController();
  final _sockoptDialerProxyController = TextEditingController();
  final _sockoptKeepAliveIntervalController = TextEditingController(text: '15');
  final _sockoptKeepAliveIdleController = TextEditingController(text: '300');
  final _sockoptTcpCongestionController = TextEditingController();
  final _sockoptTcpWindowClampController = TextEditingController();
  final _sockoptTcpMaxSegController = TextEditingController();
  final _sockoptTcpUserTimeoutController = TextEditingController();
  final _sockoptCustomSockoptController = TextEditingController(text: '[]');
  final _happyEyeballsTryDelayController = TextEditingController();
  final _happyEyeballsInterleaveController = TextEditingController();
  final _happyEyeballsMaxConcurrentController = TextEditingController();
  final _sockoptTrustedXffController = TextEditingController();
  final _observatoryUrlController =
      TextEditingController(text: 'https://www.gstatic.com/generate_204');
  final _observatorySubjectController = TextEditingController(text: 'proxy');
  final _observatoryIntervalController = TextEditingController(text: '30s');
  final _apiTagController = TextEditingController(text: 'api');
  final _apiListenController = TextEditingController(text: '127.0.0.1:10085');
  final _reverseDomainController =
      TextEditingController(text: 'reverse.example');
  final _reverseBridgeTagController = TextEditingController(text: 'bridge');
  final _reversePortalTagController = TextEditingController(text: 'portal');
  final _reverseBridgesJsonController = TextEditingController(text: '[]');
  final _reversePortalsJsonController = TextEditingController(text: '[]');
  final _burstDestinationController =
      TextEditingController(text: 'https://www.gstatic.com/generate_204');
  final _burstConnectivityController = TextEditingController(
      text: 'http://connectivitycheck.gstatic.com/generate_204');
  final _burstIntervalController = TextEditingController(text: '30s');
  final _burstSamplingController = TextEditingController(text: '3');
  final _burstTimeoutController = TextEditingController(text: '5s');
  final _burstMethodController = TextEditingController(text: 'GET');
  final _versionMinController = TextEditingController(text: '1.8.0');
  final _versionMaxController = TextEditingController();
  final _geodataCronController = TextEditingController(text: '0 0 * * *');
  final _geodataAssetUrlController = TextEditingController(
      text:
          'https://github.com/v2fly/domain-list-community/releases/latest/download/dlc.dat');
  final _geodataAssetFileController =
      TextEditingController(text: 'geosite.dat');
  final _geodataOutboundController = TextEditingController();
  final _geodataAssetsJsonController = TextEditingController(text: '[]');
  final _transportJsonController =
      TextEditingController(text: '{\n  "tcpSettings": {}\n}');
  final _routeRuleTagController = TextEditingController(text: 'custom-rule');
  final _routeOutboundTagController = TextEditingController(text: 'proxy');
  final _routeBalancerTagController = TextEditingController();
  final _routeDomainController = TextEditingController();
  final _routeDomainsController = TextEditingController();
  final _routeIpController = TextEditingController();
  final _routePortController = TextEditingController();
  final _routeSourceIpController = TextEditingController();
  final _routeSourceController = TextEditingController();
  final _routeSourcePortController = TextEditingController();
  final _routeUserController = TextEditingController();
  final _routeVlessRouteController = TextEditingController();
  final _routeInboundTagController = TextEditingController();
  final _routeProtocolsController = TextEditingController();
  final _routeAttrsController = TextEditingController();
  final _routeLocalIpController = TextEditingController();
  final _routeLocalPortController = TextEditingController();
  final _routeProcessController = TextEditingController();
  final _routeWebhookUrlController = TextEditingController();
  final _routeWebhookDedupController = TextEditingController();
  final _routeWebhookHeadersController = TextEditingController(text: '{\n}');
  final _routeRulesJsonController = TextEditingController(text: '[]');
  final _balancerTagController = TextEditingController(text: 'auto');
  final _balancerSelectorsController = TextEditingController(text: 'proxy');
  final _balancerFallbackTagController = TextEditingController();
  final _balancerCostsController = TextEditingController(
    text: '[{"regexp":true,"match":"proxy","value":1}]',
  );
  final _balancerBaselinesController = TextEditingController();
  final _balancerExpectedController = TextEditingController();
  final _balancerMaxRttController = TextEditingController();
  final _balancerToleranceController = TextEditingController();
  final _balancersJsonController = TextEditingController(text: '[]');
  final _splitHttpUplinkMethodController = TextEditingController(text: 'POST');
  final _splitHttpServerMaxHeaderBytesController = TextEditingController();
  final _splitHttpScMaxBufferedPostsController = TextEditingController();
  final _splitHttpXPaddingBytesController = TextEditingController();
  final _splitHttpXPaddingKeyController = TextEditingController();
  final _splitHttpXPaddingHeaderController = TextEditingController();
  final _splitHttpSessionIDKeyController = TextEditingController();
  final _splitHttpSessionIDTableController = TextEditingController();
  final _splitHttpSessionIDLengthController = TextEditingController();
  final _splitHttpSeqKeyController = TextEditingController();
  final _splitHttpUplinkDataKeyController = TextEditingController();
  final _splitHttpUplinkChunkSizeController = TextEditingController();
  final _splitHttpScMaxEachPostBytesController = TextEditingController();
  final _splitHttpScMinPostsIntervalMsController = TextEditingController();
  final _splitHttpScStreamUpServerSecsController = TextEditingController();
  final _splitHttpXmuxMaxConcurrencyController = TextEditingController();
  final _splitHttpXmuxMaxConnectionsController = TextEditingController();
  final _splitHttpXmuxCMaxReuseTimesController = TextEditingController();
  final _splitHttpXmuxHMaxRequestTimesController = TextEditingController();
  final _splitHttpXmuxHMaxReusableSecsController = TextEditingController();
  final _splitHttpXmuxHKeepAlivePeriodController = TextEditingController();
  final _splitHttpDownloadSettingsController = TextEditingController();
  final _splitHttpExtraController = TextEditingController(text: '{\n}');
  final _transportHeadersController = TextEditingController(text: '{\n}');
  final _hysteriaCongestionController = TextEditingController();
  final _hysteriaUpController = TextEditingController();
  final _hysteriaDownController = TextEditingController();
  final _hysteriaUdpHopPortsController = TextEditingController();
  final _hysteriaUdpHopIntervalController = TextEditingController();
  final _hysteriaUdpIdleTimeoutController = TextEditingController();
  final _hysteriaMasqueradeTypeController = TextEditingController();
  final _hysteriaMasqueradeDirController = TextEditingController();
  final _hysteriaMasqueradeUrlController = TextEditingController();
  final _hysteriaMasqueradeContentController = TextEditingController();
  final _hysteriaMasqueradeHeadersController = TextEditingController();
  final _hysteriaMasqueradeStatusController = TextEditingController();
  final _sniffDomainsExcludedController = TextEditingController();
  final _sniffIpsExcludedController = TextEditingController();

  InboundKind _inbound = InboundKind.socks;
  ProxyProtocol _protocol = ProxyProtocol.vless;
  TransportKind _transport = TransportKind.raw;
  SecurityKind _security = SecurityKind.reality;
  LogLevel _logLevel = LogLevel.warning;
  TlsFingerprint _fingerprint = TlsFingerprint.chrome;
  VmessSecurity _vmessSecurity = VmessSecurity.auto;
  SocksAuthMethod _socksAuthMethod = SocksAuthMethod.noauth;
  DnsQueryStrategy _dnsQueryStrategy = DnsQueryStrategy.useIp;
  DnsQueryStrategy _dnsSecondaryQueryStrategy = DnsQueryStrategy.useIp;
  RouterDomainStrategy _routerDomainStrategy =
      RouterDomainStrategy.ipIfNonMatch;
  XrayTargetStrategy _targetStrategy = XrayTargetStrategy.asIs;
  XrayTargetStrategy _directDomainStrategy = XrayTargetStrategy.asIs;
  XrayNetwork _dnsOutboundNetwork = XrayNetwork.udp;
  DNSOutboundRuleAction _dnsOutboundRuleAction = DNSOutboundRuleAction.direct;
  SplitHTTPMode _splitHttpMode = SplitHTTPMode.auto;
  SplitHTTPPlacement _splitHttpXPaddingPlacement = SplitHTTPPlacement.auto;
  SplitHTTPPlacement _splitHttpSessionIDPlacement = SplitHTTPPlacement.auto;
  SplitHTTPPlacement _splitHttpSeqPlacement = SplitHTTPPlacement.auto;
  SplitHTTPPlacement _splitHttpUplinkDataPlacement = SplitHTTPPlacement.auto;
  SplitHTTPPaddingMethod _splitHttpXPaddingMethod =
      SplitHTTPPaddingMethod.repeatX;
  TProxyMode _sockoptTproxy = TProxyMode.off;
  AddressPortStrategy _sockoptAddressPortStrategy = AddressPortStrategy.none;
  XrayFallbackType _vlessFallbackType = XrayFallbackType.tcp;
  TLSCertificateUsage _tlsCertUsage = TLSCertificateUsage.encipherment;
  BalancingStrategyType _balancerStrategy = BalancingStrategyType.random;
  bool _enableUdp = true;
  bool _wireguardNoKernelTun = false;
  bool _httpInboundTransparent = false;
  bool _shadowsocksTcp = true;
  bool _shadowsocksUdp = true;
  bool _dokodemoFollowRedirect = false;
  bool _dokodemoEnablePortMap = false;
  bool _dokodemoTcp = true;
  bool _dokodemoUdp = true;
  bool _enableInboundUsersJson = false;
  bool _enableInboundsJson = false;
  bool _enableOutboundsJson = false;
  bool _enableSniffing = true;
  bool _sniffHttp = true;
  bool _sniffTls = true;
  bool _sniffFakeDns = true;
  bool _enableDns = true;
  bool _dnsDisableCache = false;
  bool _dnsUseSystemHosts = true;
  bool _dnsParallelQuery = true;
  bool _dnsDisableFallback = false;
  bool _dnsDisableFallbackIfMatch = false;
  bool _dnsServeStale = false;
  bool _dnsPrimarySkipFallback = false;
  bool _dnsPrimaryFinalQuery = false;
  bool _dnsPrimaryDisableCache = false;
  bool _dnsPrimaryServeStale = false;
  bool _dnsSecondaryDetailed = false;
  bool _dnsSecondarySkipFallback = false;
  bool _dnsSecondaryFinalQuery = false;
  bool _dnsSecondaryDisableCache = false;
  bool _dnsSecondaryServeStale = false;
  bool _dnsUseServersJson = false;
  bool _enableRouting = true;
  bool _routePrivateDirect = true;
  bool _blockAds = true;
  bool _routeChinaSitesDirect = false;
  bool _blockQuic = false;
  bool _routeBitTorrentBlock = false;
  bool _routeCustomRule = false;
  bool _routeCustomTcp = true;
  bool _routeCustomUdp = false;
  bool _routeEnableWebhook = false;
  bool _routeUseRulesJson = false;
  bool _enableBalancer = false;
  bool _routeUseBalancersJson = false;
  bool _addDirectOutbound = true;
  bool _addBlockOutbound = true;
  bool _addDnsOutbound = false;
  bool _enableProxySettings = false;
  bool _proxySettingsTransportLayer = false;
  bool _directEnableFragment = false;
  bool _directEnableNoise = false;
  bool _directEnableNoises = false;
  bool _wireguardEnablePeersJson = false;
  bool _blockHttpResponse = false;
  bool _enableFakeDns = false;
  bool _fakeDnsUsePoolsJson = false;
  bool _enableMetrics = false;
  bool _enableStats = false;
  bool _enablePolicy = false;
  bool _policyUseLevelsJson = false;
  bool _policyUserStatsUplink = false;
  bool _policyUserStatsDownlink = false;
  bool _policyUserStatsOnline = false;
  bool _policyInboundStats = true;
  bool _policyOutboundStats = true;
  bool _enableObservatory = false;
  bool _enableApi = false;
  bool _apiReflectionService = true;
  bool _apiHandlerService = true;
  bool _apiLoggerService = true;
  bool _apiStatsService = true;
  bool _apiObservatoryService = true;
  bool _apiRoutingService = true;
  bool _enableReverse = false;
  bool _reverseUseJsonLists = false;
  bool _enableBurstObservatory = false;
  bool _enableVersion = false;
  bool _enableGeodata = false;
  bool _geodataUseAssetsJson = false;
  bool _fallbacksUseJson = false;
  bool _vlessReverseUseSniffing = true;
  bool _enableTransport = false;
  bool _enableMux = false;
  bool _muxEnabled = true;
  bool _enableStreamEndpoint = false;
  bool _enableFinalMask = false;
  bool _enableFinalMaskParts = false;
  bool _enableFinalMaskTcp = false;
  bool _enableFinalMaskUdp = false;
  bool _enableFinalMaskQuic = false;
  bool _enableFinalMaskTcpFields = false;
  bool _enableFinalMaskUdpFields = false;
  bool _finalMaskTcpFragment = false;
  bool _finalMaskTcpNoise = false;
  bool _finalMaskTcpDns = false;
  bool _finalMaskTcpSalamander = false;
  bool _finalMaskTcpAes = false;
  bool _finalMaskTcpXdns = false;
  bool _finalMaskTcpXicmp = false;
  bool _finalMaskTcpHeaderCustom = false;
  bool _finalMaskTcpSudoku = false;
  bool _finalMaskTcpOriginal = false;
  bool _finalMaskTcpDtls = false;
  bool _finalMaskTcpSrtp = false;
  bool _finalMaskTcpUtp = false;
  bool _finalMaskTcpWechat = false;
  bool _finalMaskTcpWireguard = false;
  bool _finalMaskUdpFragment = false;
  bool _finalMaskUdpNoise = false;
  bool _finalMaskUdpDns = false;
  bool _finalMaskUdpSalamander = false;
  bool _finalMaskUdpAes = false;
  bool _finalMaskUdpXdns = false;
  bool _finalMaskUdpXicmp = false;
  bool _finalMaskXicmpDgram = false;
  bool _finalMaskUdpHeaderCustom = false;
  bool _finalMaskUdpSudoku = false;
  bool _finalMaskUdpOriginal = false;
  bool _finalMaskUdpDtls = false;
  bool _finalMaskUdpSrtp = false;
  bool _finalMaskUdpUtp = false;
  bool _finalMaskUdpWechat = false;
  bool _finalMaskUdpWireguard = false;
  bool _enableFinalMaskQuicFields = false;
  bool _quicDebug = false;
  bool _quicDisablePathMtuDiscovery = false;
  bool _muxXudpUdp443Reject = false;
  bool _tlsAllowInsecure = false;
  bool _tlsAlpnH2 = true;
  bool _tlsAlpnHttp11 = true;
  bool _tlsAlpnCustom = false;
  bool _tlsServerNameOverride = false;
  bool _tlsSessionResumption = true;
  bool _tlsDisableSystemRoot = false;
  bool _tlsRejectUnknownSni = false;
  bool _tlsEnableCert = false;
  bool _tlsCertsJson = false;
  bool _tlsCertOneTimeLoading = false;
  bool _tlsCertBuildChain = false;
  bool _realitySpiderX = true;
  bool _realityServerMode = false;
  bool _realityShow = false;
  bool _realityLimitUpload = false;
  bool _realityLimitDownload = false;
  bool _vlessEnableFallback = false;
  bool _vlessEnableReverse = false;
  bool _trojanEnableFallback = false;
  bool _enableOutboundTargets = false;
  bool _wsAcceptProxyProtocol = false;
  bool _tcpHeaderHttp = false;
  bool _tcpHeaderHttpFields = false;
  bool _tcpHeaderJson = false;
  bool _tcpAcceptProxyProtocol = false;
  bool _kcpHeaderWechatVideo = false;
  bool _grpcMultiMode = false;
  bool _grpcPermitWithoutStream = false;
  bool _splitHttpNoGrpcHeader = false;
  bool _splitHttpNoSseHeader = false;
  bool _splitHttpXPaddingObfsMode = false;
  bool _splitHttpEnableXmux = false;
  bool _splitHttpEnableDownloadSettings = false;
  bool _enableTransportHeaders = false;
  bool _hysteriaEnableUdpHop = false;
  bool _hysteriaEnableMasquerade = false;
  bool _hysteriaMasqueradeRewriteHost = false;
  bool _hysteriaMasqueradeInsecure = false;
  bool _observatoryConcurrency = true;
  bool _enableSockopt = false;
  bool _sockoptTcpFastOpen = false;
  bool _sockoptTcpFastOpenCustom = false;
  bool _sockoptMptcp = false;
  bool _sockoptAcceptProxyProtocol = false;
  bool _sockoptV6Only = false;
  bool _sockoptPenetrate = false;
  bool _sockoptEnableCustomSockopt = false;
  bool _sockoptEnableHappyEyeballs = false;
  bool _happyEyeballsPrioritizeIpv6 = false;
  bool _logDnsLog = true;
  bool _sniffMetadataOnly = false;
  bool _sniffRouteOnly = false;
  bool _enableDnsOutboundRule = false;
  bool _dnsOutboundRulesJson = false;

  @override
  void dispose() {
    _listenController.dispose();
    _inboundTagController.dispose();
    _inboundPortController.dispose();
    _tunNameController.dispose();
    _tunDescController.dispose();
    _tunMtuController.dispose();
    _tunGatewayController.dispose();
    _tunDnsController.dispose();
    _tunAutoRoutingTableController.dispose();
    _tunAutoOutboundsInterfaceController.dispose();
    _dokodemoAddressController.dispose();
    _dokodemoPortController.dispose();
    _dokodemoPortMapController.dispose();
    _rawInboundProtocolController.dispose();
    _rawInboundSettingsController.dispose();
    _inboundUsersJsonController.dispose();
    _serverController.dispose();
    _serverPortController.dispose();
    _proxyTagController.dispose();
    _sendThroughController.dispose();
    _directTagController.dispose();
    _blockTagController.dispose();
    _dnsOutboundTagController.dispose();
    _directRedirectController.dispose();
    _directUserLevelController.dispose();
    _directProxyProtocolController.dispose();
    _directIpsBlockedController.dispose();
    _directFragmentPacketsController.dispose();
    _directFragmentLengthController.dispose();
    _directFragmentIntervalController.dispose();
    _directFragmentMaxSplitController.dispose();
    _directNoiseTypeController.dispose();
    _directNoisePacketController.dispose();
    _directNoiseDelayController.dispose();
    _directNoiseApplyToController.dispose();
    _directNoisesJsonController.dispose();
    _dnsOutboundAddressController.dispose();
    _dnsOutboundPortController.dispose();
    _dnsOutboundUserLevelController.dispose();
    _dnsOutboundNonIpQueryController.dispose();
    _dnsOutboundBlockTypesController.dispose();
    _dnsOutboundRuleQtypeController.dispose();
    _dnsOutboundRuleDomainController.dispose();
    _dnsOutboundRulesJsonController.dispose();
    _wireguardSecretController.dispose();
    _wireguardPublicController.dispose();
    _wireguardAddressController.dispose();
    _wireguardAllowedIpsController.dispose();
    _wireguardEndpointController.dispose();
    _wireguardMtuController.dispose();
    _wireguardReservedController.dispose();
    _wireguardPreSharedKeyController.dispose();
    _wireguardKeepAliveController.dispose();
    _wireguardPeersJsonController.dispose();
    _hysteriaVersionController.dispose();
    _loopbackInboundTagController.dispose();
    _rawOutboundProtocolController.dispose();
    _rawOutboundSettingsController.dispose();
    _outboundTargetsJsonController.dispose();
    _inboundsJsonController.dispose();
    _outboundsJsonController.dispose();
    _logAccessController.dispose();
    _logErrorController.dispose();
    _logMaskAddressController.dispose();
    _uuidController.dispose();
    _passwordController.dispose();
    _usernameController.dispose();
    _userEmailController.dispose();
    _userLevelController.dispose();
    _inboundUserLevelController.dispose();
    _vlessFlowController.dispose();
    _vlessSeedController.dispose();
    _vlessEncryptionController.dispose();
    _vlessTestPreController.dispose();
    _vlessTestSeedController.dispose();
    _vlessReverseTagController.dispose();
    _vlessFallbackNameController.dispose();
    _vlessFallbackAlpnController.dispose();
    _vlessFallbackPathController.dispose();
    _vlessFallbackDestController.dispose();
    _vlessFallbackXverController.dispose();
    _fallbacksJsonController.dispose();
    _vmessExperimentsController.dispose();
    _vmessDefaultLevelController.dispose();
    _shadowsocksCipherController.dispose();
    _httpHeadersController.dispose();
    _pathController.dispose();
    _httpUpgradePathController.dispose();
    _splitHttpPathController.dispose();
    _tcpHeaderJsonController.dispose();
    _tcpHeaderRequestVersionController.dispose();
    _tcpHeaderRequestMethodController.dispose();
    _tcpHeaderRequestPathController.dispose();
    _tcpHeaderRequestHeadersController.dispose();
    _tcpHeaderResponseVersionController.dispose();
    _tcpHeaderResponseStatusController.dispose();
    _tcpHeaderResponseReasonController.dispose();
    _tcpHeaderResponseHeadersController.dispose();
    _streamAddressController.dispose();
    _streamPortController.dispose();
    _finalMaskJsonController.dispose();
    _finalMaskTcpJsonController.dispose();
    _finalMaskUdpJsonController.dispose();
    _finalMaskQuicJsonController.dispose();
    _finalMaskFragmentPacketsController.dispose();
    _finalMaskFragmentLengthController.dispose();
    _finalMaskFragmentDelayController.dispose();
    _finalMaskFragmentMaxSplitController.dispose();
    _finalMaskNoiseResetController.dispose();
    _finalMaskNoiseItemsController.dispose();
    _finalMaskDnsDomainController.dispose();
    _finalMaskSalamanderPasswordController.dispose();
    _finalMaskAesPasswordController.dispose();
    _finalMaskXdnsDomainController.dispose();
    _finalMaskXdnsDomainsController.dispose();
    _finalMaskXdnsResolversController.dispose();
    _finalMaskXicmpIpsController.dispose();
    _finalMaskSudokuPasswordController.dispose();
    _finalMaskSudokuAsciiController.dispose();
    _finalMaskSudokuCustomTableController.dispose();
    _finalMaskSudokuCustomTablesController.dispose();
    _finalMaskSudokuPaddingMinController.dispose();
    _finalMaskSudokuPaddingMaxController.dispose();
    _finalMaskTcpCustomClientsController.dispose();
    _finalMaskTcpCustomServersController.dispose();
    _finalMaskTcpCustomErrorsController.dispose();
    _finalMaskUdpCustomModeController.dispose();
    _finalMaskUdpCustomClientController.dispose();
    _finalMaskUdpCustomServerController.dispose();
    _quicCongestionController.dispose();
    _quicBbrProfileController.dispose();
    _quicBrutalUpController.dispose();
    _quicBrutalDownController.dispose();
    _quicUdpHopPortsController.dispose();
    _quicUdpHopIntervalController.dispose();
    _quicInitStreamWindowController.dispose();
    _quicMaxStreamWindowController.dispose();
    _quicInitConnectionWindowController.dispose();
    _quicMaxConnectionWindowController.dispose();
    _quicMaxIdleTimeoutController.dispose();
    _quicKeepAlivePeriodController.dispose();
    _quicMaxIncomingStreamsController.dispose();
    _wsHostController.dispose();
    _wsHeartbeatController.dispose();
    _serviceController.dispose();
    _grpcAuthorityController.dispose();
    _grpcUserAgentController.dispose();
    _grpcIdleTimeoutController.dispose();
    _grpcHealthCheckTimeoutController.dispose();
    _grpcInitialWindowSizeController.dispose();
    _kcpMtuController.dispose();
    _kcpTtiController.dispose();
    _kcpUplinkController.dispose();
    _kcpDownlinkController.dispose();
    _kcpCwndMultiplierController.dispose();
    _kcpMaxSendingWindowController.dispose();
    _kcpSeedController.dispose();
    _kcpHeaderJsonController.dispose();
    _publicKeyController.dispose();
    _shortIdController.dispose();
    _realitySpiderXController.dispose();
    _realityMldsa65VerifyController.dispose();
    _realityMasterKeyLogController.dispose();
    _realityTargetController.dispose();
    _realityDestController.dispose();
    _realityTypeController.dispose();
    _realityXverController.dispose();
    _realityServerNamesController.dispose();
    _realityPrivateKeyController.dispose();
    _realityMinClientVerController.dispose();
    _realityMaxClientVerController.dispose();
    _realityMaxTimeDiffController.dispose();
    _realityShortIdsController.dispose();
    _realityMldsa65SeedController.dispose();
    _realityPasswordController.dispose();
    _realityUploadAfterBytesController.dispose();
    _realityUploadBytesPerSecController.dispose();
    _realityUploadBurstController.dispose();
    _realityDownloadAfterBytesController.dispose();
    _realityDownloadBytesPerSecController.dispose();
    _realityDownloadBurstController.dispose();
    _tlsServerNameController.dispose();
    _tlsMinVersionController.dispose();
    _tlsMaxVersionController.dispose();
    _tlsAlpnCustomController.dispose();
    _tlsCipherSuitesController.dispose();
    _tlsCurvePreferencesController.dispose();
    _tlsMasterKeyLogController.dispose();
    _tlsPinnedPeerCertController.dispose();
    _tlsVerifyPeerCertByNameController.dispose();
    _tlsEchServerKeysController.dispose();
    _tlsEchConfigListController.dispose();
    _tlsEchSockoptController.dispose();
    _tlsCertFileController.dispose();
    _tlsCertLinesController.dispose();
    _tlsKeyFileController.dispose();
    _tlsKeyLinesController.dispose();
    _tlsOcspStaplingController.dispose();
    _tlsCertsJsonController.dispose();
    _dnsPrimaryController.dispose();
    _dnsSecondaryController.dispose();
    _dnsClientIpController.dispose();
    _dnsTagController.dispose();
    _dnsPrimaryPortController.dispose();
    _dnsPrimaryDomainsController.dispose();
    _dnsPrimaryExpectedIpsController.dispose();
    _dnsPrimaryExpectIpsController.dispose();
    _dnsPrimaryUnexpectedIpsController.dispose();
    _dnsPrimaryClientIpController.dispose();
    _dnsPrimaryTagController.dispose();
    _dnsPrimaryTimeoutController.dispose();
    _dnsServeExpiredTtlController.dispose();
    _dnsPrimaryServeExpiredTtlController.dispose();
    _dnsSecondaryPortController.dispose();
    _dnsSecondaryDomainsController.dispose();
    _dnsSecondaryExpectedIpsController.dispose();
    _dnsSecondaryExpectIpsController.dispose();
    _dnsSecondaryUnexpectedIpsController.dispose();
    _dnsSecondaryClientIpController.dispose();
    _dnsSecondaryTagController.dispose();
    _dnsSecondaryTimeoutController.dispose();
    _dnsSecondaryServeExpiredTtlController.dispose();
    _dnsHostsJsonController.dispose();
    _dnsServersJsonController.dispose();
    _fakeDnsIpPoolController.dispose();
    _fakeDnsPoolSizeController.dispose();
    _fakeDnsPoolsJsonController.dispose();
    _metricsListenController.dispose();
    _metricsTagController.dispose();
    _policyHandshakeController.dispose();
    _policyConnIdleController.dispose();
    _policyUplinkOnlyController.dispose();
    _policyDownlinkOnlyController.dispose();
    _policyBufferSizeController.dispose();
    _policyLevelsJsonController.dispose();
    _muxConcurrencyController.dispose();
    _muxXudpConcurrencyController.dispose();
    _proxySettingsTagController.dispose();
    _sockoptTcpFastOpenValueController.dispose();
    _sockoptMarkController.dispose();
    _sockoptInterfaceController.dispose();
    _sockoptDialerProxyController.dispose();
    _sockoptKeepAliveIntervalController.dispose();
    _sockoptKeepAliveIdleController.dispose();
    _sockoptTcpCongestionController.dispose();
    _sockoptTcpWindowClampController.dispose();
    _sockoptTcpMaxSegController.dispose();
    _sockoptTcpUserTimeoutController.dispose();
    _sockoptCustomSockoptController.dispose();
    _happyEyeballsTryDelayController.dispose();
    _happyEyeballsInterleaveController.dispose();
    _happyEyeballsMaxConcurrentController.dispose();
    _sockoptTrustedXffController.dispose();
    _observatoryUrlController.dispose();
    _observatorySubjectController.dispose();
    _observatoryIntervalController.dispose();
    _apiTagController.dispose();
    _apiListenController.dispose();
    _reverseDomainController.dispose();
    _reverseBridgeTagController.dispose();
    _reversePortalTagController.dispose();
    _reverseBridgesJsonController.dispose();
    _reversePortalsJsonController.dispose();
    _burstDestinationController.dispose();
    _burstConnectivityController.dispose();
    _burstIntervalController.dispose();
    _burstSamplingController.dispose();
    _burstTimeoutController.dispose();
    _burstMethodController.dispose();
    _versionMinController.dispose();
    _versionMaxController.dispose();
    _geodataCronController.dispose();
    _geodataAssetUrlController.dispose();
    _geodataAssetFileController.dispose();
    _geodataOutboundController.dispose();
    _geodataAssetsJsonController.dispose();
    _transportJsonController.dispose();
    _routeRuleTagController.dispose();
    _routeOutboundTagController.dispose();
    _routeBalancerTagController.dispose();
    _routeDomainController.dispose();
    _routeDomainsController.dispose();
    _routeIpController.dispose();
    _routePortController.dispose();
    _routeSourceIpController.dispose();
    _routeSourceController.dispose();
    _routeSourcePortController.dispose();
    _routeUserController.dispose();
    _routeVlessRouteController.dispose();
    _routeInboundTagController.dispose();
    _routeProtocolsController.dispose();
    _routeAttrsController.dispose();
    _routeLocalIpController.dispose();
    _routeLocalPortController.dispose();
    _routeProcessController.dispose();
    _routeWebhookUrlController.dispose();
    _routeWebhookDedupController.dispose();
    _routeWebhookHeadersController.dispose();
    _routeRulesJsonController.dispose();
    _balancerTagController.dispose();
    _balancerSelectorsController.dispose();
    _balancerFallbackTagController.dispose();
    _balancerCostsController.dispose();
    _balancerBaselinesController.dispose();
    _balancerExpectedController.dispose();
    _balancerMaxRttController.dispose();
    _balancerToleranceController.dispose();
    _balancersJsonController.dispose();
    _splitHttpUplinkMethodController.dispose();
    _splitHttpServerMaxHeaderBytesController.dispose();
    _splitHttpScMaxBufferedPostsController.dispose();
    _splitHttpXPaddingBytesController.dispose();
    _splitHttpXPaddingKeyController.dispose();
    _splitHttpXPaddingHeaderController.dispose();
    _splitHttpSessionIDKeyController.dispose();
    _splitHttpSessionIDTableController.dispose();
    _splitHttpSessionIDLengthController.dispose();
    _splitHttpSeqKeyController.dispose();
    _splitHttpUplinkDataKeyController.dispose();
    _splitHttpUplinkChunkSizeController.dispose();
    _splitHttpScMaxEachPostBytesController.dispose();
    _splitHttpScMinPostsIntervalMsController.dispose();
    _splitHttpScStreamUpServerSecsController.dispose();
    _splitHttpXmuxMaxConcurrencyController.dispose();
    _splitHttpXmuxMaxConnectionsController.dispose();
    _splitHttpXmuxCMaxReuseTimesController.dispose();
    _splitHttpXmuxHMaxRequestTimesController.dispose();
    _splitHttpXmuxHMaxReusableSecsController.dispose();
    _splitHttpXmuxHKeepAlivePeriodController.dispose();
    _splitHttpDownloadSettingsController.dispose();
    _splitHttpExtraController.dispose();
    _transportHeadersController.dispose();
    _hysteriaCongestionController.dispose();
    _hysteriaUpController.dispose();
    _hysteriaDownController.dispose();
    _hysteriaUdpHopPortsController.dispose();
    _hysteriaUdpHopIntervalController.dispose();
    _hysteriaUdpIdleTimeoutController.dispose();
    _hysteriaMasqueradeTypeController.dispose();
    _hysteriaMasqueradeDirController.dispose();
    _hysteriaMasqueradeUrlController.dispose();
    _hysteriaMasqueradeContentController.dispose();
    _hysteriaMasqueradeHeadersController.dispose();
    _hysteriaMasqueradeStatusController.dispose();
    _sniffDomainsExcludedController.dispose();
    _sniffIpsExcludedController.dispose();
    super.dispose();
  }

  XrayConfig get _config {
    final outbounds = _outbounds();

    return XrayConfig(
      transport:
          _enableTransport ? _mapFromJson(_transportJsonController) : null,
      log: LogConfig(
        access: _emptyToNull(_logAccessController.text),
        error: _emptyToNull(_logErrorController.text),
        loglevel: _logLevel,
        dnsLog: _logDnsLog,
        maskAddress: _emptyToNull(_logMaskAddressController.text),
      ),
      inbounds: _inbounds(),
      outbounds: outbounds,
      dns: _enableDns ? _dnsConfig() : null,
      routing: _enableRouting ? _routing() : null,
      fakeDns: _enableFakeDns ? _fakeDnsConfig() : null,
      metrics: _enableMetrics
          ? MetricsConfig.listen(
              _metricsListenController.text.trim(),
              tag: _emptyToNull(_metricsTagController.text),
            )
          : null,
      stats: _enableStats ? const StatsConfig() : null,
      policy: _enablePolicy ? _policyConfig() : null,
      api: _enableApi ? _apiConfig() : null,
      reverse: _enableReverse ? _reverseConfig() : null,
      observatory: _enableObservatory
          ? ObservatoryConfig(
              subjectSelector: _csv(_observatorySubjectController.text),
              probeURL: _observatoryUrlController.text.trim(),
              probeInterval: _durationFromText(_observatoryIntervalController),
              enableConcurrency: _observatoryConcurrency,
            )
          : null,
      burstObservatory:
          _enableBurstObservatory ? _burstObservatoryConfig() : null,
      version: _enableVersion
          ? VersionConfig(
              minVersion: _emptyToNull(_versionMinController.text),
              maxVersion: _emptyToNull(_versionMaxController.text),
            )
          : null,
      geodata: _enableGeodata ? _geodataConfig() : null,
    );
  }

  List<XrayValidationIssue> get _issues => _config.validate();

  String get _jsonText {
    return const JsonEncoder.withIndent('  ').convert(_jsonMap);
  }

  Map<String, dynamic> get _jsonMap {
    return Map<String, dynamic>.from(_config.toJson());
  }

  List<InboundDetourConfig> _inbounds() {
    if (_enableInboundsJson) {
      return _listFromJson(
            _inboundsJsonController,
            InboundDetourConfig.fromJson,
          ) ??
          [_inboundConfig()];
    }
    return [_inboundConfig()];
  }

  List<OutboundDetourConfig> _outbounds() {
    if (_enableOutboundsJson) {
      return _listFromJson(
            _outboundsJsonController,
            OutboundDetourConfig.fromJson,
          ) ??
          [_proxyOutbound()];
    }
    final outbounds = <OutboundDetourConfig>[_proxyOutbound()];
    if (_addDirectOutbound) {
      outbounds.add(_directOutbound());
    }
    if (_addBlockOutbound) {
      outbounds.add(_blockOutbound());
    }
    if (_addDnsOutbound) {
      outbounds.add(_dnsOutbound());
    }
    return outbounds;
  }

  String get _summary {
    final inbound = _inbound.label;
    return '$inbound 入站，${_protocol.label} 出站，${_effectiveTransport.label} 传输，${_effectiveSecurity.label} 安全层';
  }

  TransportKind get _effectiveTransport {
    if (_protocol == ProxyProtocol.http ||
        _protocol == ProxyProtocol.socks ||
        _protocol == ProxyProtocol.wireguard ||
        _protocol == ProxyProtocol.hysteria ||
        _protocol == ProxyProtocol.loopback ||
        _protocol == ProxyProtocol.raw) {
      return TransportKind.raw;
    }
    return _transport;
  }

  SecurityKind get _effectiveSecurity {
    if (_security == SecurityKind.reality && _protocol != ProxyProtocol.vless) {
      return SecurityKind.tls;
    }
    return _security;
  }

  bool get _usesTlsTransport {
    return _effectiveSecurity == SecurityKind.tls;
  }

  bool get _usesWebSocketSettings {
    return _effectiveTransport == TransportKind.ws;
  }

  bool get _usesGrpcSettings {
    return _effectiveTransport == TransportKind.grpc;
  }

  bool get _usesHttpUpgradeSettings {
    return _effectiveTransport == TransportKind.httpUpgrade;
  }

  bool get _usesSplitHttpSettings {
    return _effectiveTransport == TransportKind.splitHttp ||
        _effectiveTransport == TransportKind.xhttp;
  }

  bool get _usesTcpSettings {
    return _effectiveTransport == TransportKind.tcp ||
        _effectiveTransport == TransportKind.raw;
  }

  bool get _usesKcpSettings {
    return _effectiveTransport == TransportKind.mkcp ||
        _effectiveTransport == TransportKind.kcp;
  }

  bool get _usesHysteriaTransportSettings {
    return _effectiveTransport == TransportKind.hysteria;
  }

  String? _vlessFlowValue() {
    final explicit = _emptyToNull(_vlessFlowController.text);
    if (explicit != null) {
      return explicit;
    }
    return _effectiveSecurity == SecurityKind.reality
        ? 'xtls-rprx-vision'
        : null;
  }

  String _defaultInboundTag(String fallback) {
    return _emptyToNull(_inboundTagController.text) ?? fallback;
  }

  String get _proxyTag => _emptyToNull(_proxyTagController.text) ?? 'proxy';

  String get _directTag => _emptyToNull(_directTagController.text) ?? 'direct';

  String get _blockTag => _emptyToNull(_blockTagController.text) ?? 'block';

  String get _dnsOutboundTag =>
      _emptyToNull(_dnsOutboundTagController.text) ?? 'dns-out';

  InboundDetourConfig _inboundConfig() {
    final port = XrayPortList.single(_intValue(_inboundPortController, 10808));
    final listen = XrayAddress(_listenController.text.trim());
    final destOverride = <String>[
      if (_sniffHttp) 'http',
      if (_sniffTls) 'tls',
      if (_sniffFakeDns) 'fakedns',
    ];
    final sniffing = _enableSniffing && destOverride.isNotEmpty
        ? SniffingConfig(
            enabled: true,
            destOverride: XrayStringList(destOverride),
            domainsExcluded: _csvStringList(
              _sniffDomainsExcludedController.text,
            ),
            ipsExcluded: _csvStringList(_sniffIpsExcludedController.text),
            metadataOnly: _sniffMetadataOnly,
            routeOnly: _sniffRouteOnly,
          )
        : null;

    return switch (_inbound) {
      InboundKind.socks => InboundDetourConfig.socks(
          tag: _defaultInboundTag('socks-in'),
          listen: listen,
          port: port,
          settings: SocksServerConfig(
            authMethod: _socksAuthMethod,
            accounts: _socksAuthMethod == SocksAuthMethod.password
                ? _enableInboundUsersJson
                    ? _listFromJson(
                        _inboundUsersJsonController,
                        SocksAccount.fromJson,
                      )
                    : [
                        SocksAccount(
                          username: _usernameController.text.trim(),
                          password: _passwordController.text.trim(),
                        ),
                      ]
                : null,
            udp: _enableUdp,
            host: XrayAddress(_listenController.text.trim()),
            userLevel: _nullableInt(_inboundUserLevelController),
          ),
          sniffing: sniffing,
        ),
      InboundKind.http => InboundDetourConfig.http(
          tag: _defaultInboundTag('http-in'),
          listen: listen,
          port: port,
          settings: HTTPServerConfig(
            accounts: _enableInboundUsersJson
                ? _listFromJson(
                    _inboundUsersJsonController,
                    HTTPAccount.fromJson,
                  )
                : _emptyToNull(_usernameController.text) == null
                    ? null
                    : [
                        HTTPAccount(
                          username: _usernameController.text.trim(),
                          password: _passwordController.text.trim(),
                        ),
                      ],
            transparent: _httpInboundTransparent,
            userLevel: _nullableInt(_inboundUserLevelController),
          ),
          sniffing: sniffing,
        ),
      InboundKind.vless => InboundDetourConfig.vless(
          tag: _defaultInboundTag('vless-in'),
          listen: listen,
          port: port,
          settings: VLessInboundConfig(
            clients: _enableInboundUsersJson
                ? _listFromJson(_inboundUsersJsonController, VLessUser.fromJson)
                : [
                    VLessUser(
                      id: _uuidController.text.trim(),
                      email: _emptyToNull(_userEmailController.text),
                      level: _nullableInt(_userLevelController),
                      flow: _vlessFlowValue(),
                      seed: _emptyToNull(_vlessSeedController.text),
                      encryption: _emptyToNull(_vlessEncryptionController.text),
                      reverse:
                          _vlessEnableReverse ? _vlessReverseConfig() : null,
                      testpre: _nullableInt(_vlessTestPreController),
                      testseed: _intCsv(_vlessTestSeedController.text),
                    ),
                  ],
            decryption: _vlessEncryptionController.text.trim(),
            fallbacks: _vlessEnableFallback ? _vlessInboundFallbacks() : null,
            flow: _emptyToNull(_vlessFlowController.text),
            testseed: _intCsv(_vlessTestSeedController.text),
          ),
          streamSettings: _streamSettings(),
          sniffing: sniffing,
        ),
      InboundKind.vmess => InboundDetourConfig.vmess(
          tag: _defaultInboundTag('vmess-in'),
          listen: listen,
          port: port,
          settings: VMessInboundConfig(
            clients: _enableInboundUsersJson
                ? _listFromJson(_inboundUsersJsonController, VMessUser.fromJson)
                : [
                    VMessUser(
                      id: _uuidController.text.trim(),
                      email: _emptyToNull(_userEmailController.text),
                      level: _nullableInt(_userLevelController),
                      security: _vmessSecurity,
                      experiments:
                          _emptyToNull(_vmessExperimentsController.text),
                    ),
                  ],
            defaults: _nullableInt(_vmessDefaultLevelController) == null
                ? null
                : VMessDefaultConfig(
                    level: _nullableInt(_vmessDefaultLevelController),
                  ),
          ),
          streamSettings: _streamSettings(),
          sniffing: sniffing,
        ),
      InboundKind.trojan => InboundDetourConfig.trojan(
          tag: _defaultInboundTag('trojan-in'),
          listen: listen,
          port: port,
          settings: TrojanServerConfig(
            clients: _enableInboundUsersJson
                ? _listFromJson(
                    _inboundUsersJsonController,
                    TrojanUserConfig.fromJson,
                  )
                : [
                    TrojanUserConfig(
                      password: _passwordController.text.trim(),
                      email: _emptyToNull(_userEmailController.text),
                      level: _nullableInt(_userLevelController),
                      flow: _emptyToNull(_vlessFlowController.text),
                    ),
                  ],
            fallbacks: _trojanEnableFallback ? _trojanInboundFallbacks() : null,
          ),
          streamSettings: _streamSettings(),
          sniffing: sniffing,
        ),
      InboundKind.shadowsocks => InboundDetourConfig.shadowsocks(
          tag: _defaultInboundTag('shadowsocks-in'),
          listen: listen,
          port: port,
          settings: ShadowsocksServerConfig(
            cipher: _shadowsocksCipherController.text.trim(),
            password: _passwordController.text.trim(),
            level: _nullableInt(_userLevelController),
            email: _emptyToNull(_userEmailController.text),
            clients: _enableInboundUsersJson
                ? _listFromJson(
                    _inboundUsersJsonController,
                    ShadowsocksUserConfig.fromJson,
                  )
                : null,
            networkList:
                _networkListFromToggles(_shadowsocksTcp, _shadowsocksUdp),
          ),
          sniffing: sniffing,
        ),
      InboundKind.dokodemo => InboundDetourConfig.fromProtocol(
          protocol: XrayInboundProtocol.dokodemoDoor,
          tag: _defaultInboundTag('dokodemo-in'),
          listen: listen,
          port: port,
          settings: DokodemoConfig(
            address: XrayAddress(_dokodemoAddressController.text.trim()),
            port: _intValue(_dokodemoPortController, 53),
            portMap: _dokodemoEnablePortMap
                ? _stringMapFromJson(_dokodemoPortMapController)
                : null,
            network: _networkListFromToggles(_dokodemoTcp, _dokodemoUdp),
            followRedirect: _dokodemoFollowRedirect,
            userLevel: _nullableInt(_inboundUserLevelController),
          ),
          sniffing: sniffing,
        ),
      InboundKind.wireguard => InboundDetourConfig.fromProtocol(
          protocol: XrayInboundProtocol.wireguard,
          tag: _defaultInboundTag('wireguard-in'),
          settings: _wireGuardSettings(),
          sniffing: sniffing,
        ),
      InboundKind.hysteria => InboundDetourConfig.fromProtocol(
          protocol: XrayInboundProtocol.hysteria,
          tag: _defaultInboundTag('hysteria-in'),
          listen: listen,
          port: port,
          settings: HysteriaServerConfig(
            version: _intValue(_hysteriaVersionController, 2),
            clients: _enableInboundUsersJson
                ? _listFromJson(
                    _inboundUsersJsonController,
                    HysteriaUserConfig.fromJson,
                  )
                : [
                    HysteriaUserConfig(
                      auth: _passwordController.text.trim(),
                      email: _emptyToNull(_userEmailController.text),
                      level: _nullableInt(_userLevelController),
                    ),
                  ],
          ),
          streamSettings: _streamSettings(),
          sniffing: sniffing,
        ),
      InboundKind.tun => InboundDetourConfig.tun(
          tag: _defaultInboundTag('tun-in'),
          settings: TunConfig(
            name: _emptyToNull(_tunNameController.text),
            desc: _emptyToNull(_tunDescController.text),
            mtu: _intValue(_tunMtuController, 1500),
            gateway: _csv(_tunGatewayController.text),
            dns: _csv(_tunDnsController.text),
            userLevel: _nullableInt(_inboundUserLevelController),
            autoSystemRoutingTable: _csv(_tunAutoRoutingTableController.text),
            autoOutboundsInterface:
                _emptyToNull(_tunAutoOutboundsInterfaceController.text),
          ),
          sniffing: sniffing,
        ),
      InboundKind.raw => InboundDetourConfig(
          protocol: _rawInboundProtocolController.text.trim(),
          tag: _defaultInboundTag('raw-in'),
          listen: listen,
          port: port,
          settings: XrayRawInboundSettings(
            _mapFromJson(_rawInboundSettingsController),
          ),
          sniffing: sniffing,
        ),
    };
  }

  OutboundDetourConfig _proxyOutbound() {
    final address = XrayAddress(_serverController.text.trim());
    final port = _intValue(_serverPortController, 443);
    final streamSettings = _streamSettings();
    final mux = _enableMux
        ? MuxConfig(
            enabled: _muxEnabled,
            concurrency: _intValue(_muxConcurrencyController, 8),
            xudpConcurrency: _nullableInt(_muxXudpConcurrencyController),
            xudpProxyUDP443: _muxXudpUdp443Reject ? 'reject' : null,
          )
        : null;
    final sendThrough = _emptyToNull(_sendThroughController.text);
    final proxySettings = _proxySettings();

    return switch (_protocol) {
      ProxyProtocol.vless => OutboundDetourConfig.vless(
          tag: _proxyTag,
          sendThrough: sendThrough,
          settings: _vlessOutboundSettings(address, port),
          streamSettings: streamSettings,
          proxySettings: proxySettings,
          mux: mux,
          targetStrategy: _targetStrategy,
        ),
      ProxyProtocol.vmess => OutboundDetourConfig.vmess(
          tag: _proxyTag,
          sendThrough: sendThrough,
          settings: _vmessOutboundSettings(address, port),
          streamSettings: streamSettings,
          proxySettings: proxySettings,
          mux: mux,
          targetStrategy: _targetStrategy,
        ),
      ProxyProtocol.trojan => OutboundDetourConfig.trojan(
          tag: _proxyTag,
          sendThrough: sendThrough,
          settings: TrojanClientConfig(
            address: address,
            port: port,
            level: _nullableInt(_userLevelController),
            email: _emptyToNull(_userEmailController.text),
            password: _passwordController.text.trim(),
            flow: _emptyToNull(_vlessFlowController.text),
            servers: _enableOutboundTargets
                ? _listFromJson(
                    _outboundTargetsJsonController,
                    TrojanServerTarget.fromJson,
                  )
                : null,
          ),
          streamSettings: streamSettings,
          proxySettings: proxySettings,
          mux: mux,
          targetStrategy: _targetStrategy,
        ),
      ProxyProtocol.shadowsocks => OutboundDetourConfig.shadowsocks(
          tag: _proxyTag,
          sendThrough: sendThrough,
          settings: _shadowsocksOutboundSettings(address, port),
          streamSettings: streamSettings,
          proxySettings: proxySettings,
          mux: mux,
          targetStrategy: _targetStrategy,
        ),
      ProxyProtocol.http => OutboundDetourConfig.http(
          tag: _proxyTag,
          sendThrough: sendThrough,
          settings: _httpOutboundSettings(address, port),
          proxySettings: proxySettings,
          mux: mux,
          targetStrategy: _targetStrategy,
        ),
      ProxyProtocol.socks => OutboundDetourConfig.socks(
          tag: _proxyTag,
          sendThrough: sendThrough,
          settings: _socksOutboundSettings(address, port),
          proxySettings: proxySettings,
          mux: mux,
          targetStrategy: _targetStrategy,
        ),
      ProxyProtocol.wireguard => OutboundDetourConfig.wireguard(
          tag: _proxyTag,
          sendThrough: sendThrough,
          settings: _wireGuardSettings(),
          proxySettings: proxySettings,
          mux: mux,
          targetStrategy: _targetStrategy,
        ),
      ProxyProtocol.hysteria => OutboundDetourConfig.hysteria(
          tag: _proxyTag,
          sendThrough: sendThrough,
          settings: HysteriaClientConfig(
            version: _intValue(_hysteriaVersionController, 2),
            address: address,
            port: port,
          ),
          streamSettings: streamSettings,
          proxySettings: proxySettings,
          mux: mux,
          targetStrategy: _targetStrategy,
        ),
      ProxyProtocol.loopback => OutboundDetourConfig(
          protocol: XrayOutboundProtocol.loopback.toJson(),
          tag: _proxyTag,
          sendThrough: sendThrough,
          settings: LoopbackConfig(
            inboundTag: _emptyToNull(_loopbackInboundTagController.text),
          ),
          proxySettings: proxySettings,
          mux: mux,
          targetStrategy: _targetStrategy,
        ),
      ProxyProtocol.raw => OutboundDetourConfig(
          protocol: _rawOutboundProtocolController.text.trim(),
          tag: _proxyTag,
          sendThrough: sendThrough,
          settings: XrayRawOutboundSettings(
            _mapFromJson(_rawOutboundSettingsController),
          ),
          streamSettings: streamSettings,
          proxySettings: proxySettings,
          mux: mux,
          targetStrategy: _targetStrategy,
        ),
    };
  }

  ProxyConfig? _proxySettings() {
    if (!_enableProxySettings) {
      return null;
    }
    final tag = _emptyToNull(_proxySettingsTagController.text);
    if (tag == null) {
      return null;
    }
    return ProxyConfig(
      tag: tag,
      transportLayer: _proxySettingsTransportLayer,
    );
  }

  VLessOutboundConfig _vlessOutboundSettings(XrayAddress address, int port) {
    return VLessOutboundConfig(
      address: address,
      port: port,
      level: _nullableInt(_userLevelController),
      email: _emptyToNull(_userEmailController.text),
      id: _uuidController.text.trim(),
      encryption: _vlessEncryptionController.text.trim(),
      flow: _vlessFlowValue(),
      seed: _emptyToNull(_vlessSeedController.text),
      reverse: _vlessEnableReverse ? _vlessReverseConfig() : null,
      testpre: _nullableInt(_vlessTestPreController),
      testseed: _intCsv(_vlessTestSeedController.text),
      vnext: _enableOutboundTargets
          ? _listFromJson(
              _outboundTargetsJsonController,
              VLessOutboundVnext.fromJson,
            )
          : null,
    );
  }

  VMessOutboundConfig _vmessOutboundSettings(XrayAddress address, int port) {
    return VMessOutboundConfig(
      address: address,
      port: port,
      level: _nullableInt(_userLevelController),
      email: _emptyToNull(_userEmailController.text),
      id: _uuidController.text.trim(),
      security: _vmessSecurity,
      experiments: _emptyToNull(_vmessExperimentsController.text),
      receivers: _enableOutboundTargets
          ? _listFromJson(
              _outboundTargetsJsonController,
              VMessOutboundTarget.fromJson,
            )
          : null,
    );
  }

  ShadowsocksClientConfig _shadowsocksOutboundSettings(
    XrayAddress address,
    int port,
  ) {
    return ShadowsocksClientConfig(
      address: address,
      port: port,
      level: _nullableInt(_userLevelController),
      email: _emptyToNull(_userEmailController.text),
      cipher: _shadowsocksCipherController.text.trim(),
      password: _passwordController.text.trim(),
      servers: _enableOutboundTargets
          ? _listFromJson(
              _outboundTargetsJsonController,
              ShadowsocksServerTarget.fromJson,
            )
          : null,
    );
  }

  HTTPClientConfig _httpOutboundSettings(XrayAddress address, int port) {
    return HTTPClientConfig(
      address: address,
      port: port,
      level: _nullableInt(_userLevelController),
      email: _emptyToNull(_userEmailController.text),
      username: _usernameController.text.trim(),
      password: _passwordController.text.trim(),
      headers: _stringMapFromJson(_httpHeadersController),
      servers: _enableOutboundTargets
          ? _listFromJson(
              _outboundTargetsJsonController, HTTPRemoteConfig.fromJson)
          : null,
    );
  }

  SocksClientConfig _socksOutboundSettings(XrayAddress address, int port) {
    return SocksClientConfig(
      address: address,
      port: port,
      level: _nullableInt(_userLevelController),
      email: _emptyToNull(_userEmailController.text),
      username: _usernameController.text.trim(),
      password: _passwordController.text.trim(),
      servers: _enableOutboundTargets
          ? _listFromJson(
              _outboundTargetsJsonController, SocksRemoteConfig.fromJson)
          : null,
    );
  }

  WireGuardConfig _wireGuardSettings() {
    return WireGuardConfig(
      noKernelTun: _wireguardNoKernelTun,
      secretKey: _wireguardSecretController.text.trim(),
      address: _csv(_wireguardAddressController.text),
      mtu: _intValue(_wireguardMtuController, 1420),
      reserved: _intCsv(_wireguardReservedController.text),
      domainStrategy: _targetStrategy,
      peers: _wireguardEnablePeersJson
          ? _listFromJson(
              _wireguardPeersJsonController,
              WireGuardPeerConfig.fromJson,
            )
          : [
              WireGuardPeerConfig(
                publicKey: _wireguardPublicController.text.trim(),
                preSharedKey:
                    _emptyToNull(_wireguardPreSharedKeyController.text),
                endpoint: _wireguardEndpointController.text.trim(),
                allowedIPs: _csv(_wireguardAllowedIpsController.text),
                keepAlive: _nullableInt(_wireguardKeepAliveController),
              ),
            ],
    );
  }

  StreamConfig? _streamSettings() {
    final serverName = _serverController.text.trim();
    final sockopt = _enableSockopt
        ? SocketConfig(
            mark: _nullableInt(_sockoptMarkController),
            tcpFastOpen: _sockoptTcpFastOpenCustom
                ? _jsonOrString(_sockoptTcpFastOpenValueController)
                : _sockoptTcpFastOpen,
            acceptProxyProtocol: _sockoptAcceptProxyProtocol,
            tproxy: _sockoptTproxy,
            tcpMptcp: _sockoptMptcp,
            dialerProxy: _emptyToNull(_sockoptDialerProxyController.text),
            tcpKeepAliveInterval:
                _nullableInt(_sockoptKeepAliveIntervalController),
            tcpKeepAliveIdle: _nullableInt(_sockoptKeepAliveIdleController),
            tcpCongestion: _emptyToNull(_sockoptTcpCongestionController.text),
            tcpWindowClamp: _nullableInt(_sockoptTcpWindowClampController),
            tcpMaxSeg: _nullableInt(_sockoptTcpMaxSegController),
            penetrate: _sockoptPenetrate,
            tcpUserTimeout: _nullableInt(_sockoptTcpUserTimeoutController),
            v6only: _sockoptV6Only,
            interfaceName: _emptyToNull(_sockoptInterfaceController.text),
            domainStrategy: _targetStrategy,
            customSockopt: _sockoptEnableCustomSockopt
                ? _customSockoptFromJson(_sockoptCustomSockoptController)
                : null,
            addressPortStrategy: _sockoptAddressPortStrategy,
            happyEyeballs: _sockoptEnableHappyEyeballs
                ? HappyEyeballsConfig(
                    prioritizeIPv6: _happyEyeballsPrioritizeIpv6,
                    tryDelayMs: _nullableInt(_happyEyeballsTryDelayController),
                    interleave:
                        _nullableInt(_happyEyeballsInterleaveController),
                    maxConcurrentTry:
                        _nullableInt(_happyEyeballsMaxConcurrentController),
                  )
                : null,
            trustedXForwardedFor: _csv(_sockoptTrustedXffController.text),
          )
        : null;
    final tcpSettings = TCPConfig(
      acceptProxyProtocol: _tcpAcceptProxyProtocol,
      header: _tcpHeaderConfig(),
    );

    return switch (_effectiveSecurity) {
      SecurityKind.none => _plainStream(tcpSettings, sockopt),
      SecurityKind.tls => _tlsStream(tcpSettings, sockopt, serverName),
      SecurityKind.reality => _realityStream(tcpSettings, sockopt, serverName),
    };
  }

  TCPHeaderConfig _tcpHeaderConfig() {
    if (_tcpHeaderJson) {
      final map = _mapFromJson(_tcpHeaderJsonController);
      if (map.isNotEmpty) {
        try {
          return TCPHeaderConfig.fromJson(map);
        } on FormatException {
          return RawTCPHeaderConfig(map);
        }
      }
    }
    if (_tcpHeaderHttp) {
      return _tcpHeaderHttpFields
          ? Authenticator(
              request: _tcpHeaderRequest(),
              response: _tcpHeaderResponse(),
            )
          : const RawTCPHeaderConfig({'type': 'http'});
    }
    return const TCPHeaderConfig.none();
  }

  AuthenticatorRequest? _tcpHeaderRequest() {
    final headers = _stringListMapFromJson(_tcpHeaderRequestHeadersController);
    final path = _csvStringList(_tcpHeaderRequestPathController.text);
    final version = _emptyToNull(_tcpHeaderRequestVersionController.text);
    final method = _emptyToNull(_tcpHeaderRequestMethodController.text);
    if (headers == null && path == null && version == null && method == null) {
      return null;
    }
    return AuthenticatorRequest(
      version: version,
      method: method,
      path: path,
      headers: headers,
    );
  }

  AuthenticatorResponse? _tcpHeaderResponse() {
    final headers = _stringListMapFromJson(_tcpHeaderResponseHeadersController);
    final version = _emptyToNull(_tcpHeaderResponseVersionController.text);
    final status = _emptyToNull(_tcpHeaderResponseStatusController.text);
    final reason = _emptyToNull(_tcpHeaderResponseReasonController.text);
    if (headers == null &&
        version == null &&
        status == null &&
        reason == null) {
      return null;
    }
    return AuthenticatorResponse(
      version: version,
      status: status,
      reason: reason,
      headers: headers,
    );
  }

  StreamConfig _plainStream(TCPConfig tcpSettings, SocketConfig? sockopt) {
    return _streamFor(
      tcpSettings: tcpSettings,
      sockopt: sockopt,
    );
  }

  StreamConfig _tlsStream(
    TCPConfig tcpSettings,
    SocketConfig? sockopt,
    String serverName,
  ) {
    return _streamFor(
      tcpSettings: tcpSettings,
      sockopt: sockopt,
      security: SecurityProtocol.tls,
      tlsSettings: _tlsSettings(serverName),
    );
  }

  StreamConfig _realityStream(
    TCPConfig tcpSettings,
    SocketConfig? sockopt,
    String serverName,
  ) {
    return _streamFor(
      tcpSettings: tcpSettings,
      sockopt: sockopt,
      security: SecurityProtocol.reality,
      realitySettings: _realitySettings(serverName),
    );
  }

  REALITYConfig _realitySettings(String serverName) {
    if (_realityServerMode) {
      return REALITYConfig(
        masterKeyLog: _emptyToNull(_realityMasterKeyLogController.text),
        show: _realityShow,
        target: _jsonOrString(_realityTargetController),
        dest: _jsonOrString(_realityDestController),
        type: _emptyToNull(_realityTypeController.text),
        xver: _nullableInt(_realityXverController),
        serverNames: _csv(_realityServerNamesController.text),
        privateKey: _emptyToNull(_realityPrivateKeyController.text),
        minClientVer: _emptyToNull(_realityMinClientVerController.text),
        maxClientVer: _emptyToNull(_realityMaxClientVerController.text),
        maxTimeDiff: _nullableInt(_realityMaxTimeDiffController),
        shortIds: _csv(_realityShortIdsController.text),
        mldsa65Seed: _emptyToNull(_realityMldsa65SeedController.text),
        limitFallbackUpload:
            _realityLimitUpload ? _realityUploadLimitFallback() : null,
        limitFallbackDownload:
            _realityLimitDownload ? _realityDownloadLimitFallback() : null,
      );
    }
    return REALITYConfig(
      masterKeyLog: _emptyToNull(_realityMasterKeyLogController.text),
      show: _realityShow,
      fingerprint: _fingerprint.label,
      serverName: serverName,
      password: _emptyToNull(_realityPasswordController.text),
      publicKey: _publicKeyController.text.trim(),
      shortId: _shortIdController.text.trim(),
      mldsa65Verify: _emptyToNull(_realityMldsa65VerifyController.text),
      spiderX:
          _realitySpiderX ? _emptyToNull(_realitySpiderXController.text) : null,
    );
  }

  LimitFallback _realityUploadLimitFallback() {
    return LimitFallback(
      afterBytes: _nullableInt(_realityUploadAfterBytesController),
      bytesPerSec: _nullableInt(_realityUploadBytesPerSecController),
      burstBytesPerSec: _nullableInt(_realityUploadBurstController),
    );
  }

  LimitFallback _realityDownloadLimitFallback() {
    return LimitFallback(
      afterBytes: _nullableInt(_realityDownloadAfterBytesController),
      bytesPerSec: _nullableInt(_realityDownloadBytesPerSecController),
      burstBytesPerSec: _nullableInt(_realityDownloadBurstController),
    );
  }

  StreamConfig _streamFor({
    required TCPConfig tcpSettings,
    required SocketConfig? sockopt,
    SecurityProtocol? security,
    TLSConfig? tlsSettings,
    REALITYConfig? realitySettings,
  }) {
    final streamAddress = _enableStreamEndpoint &&
            _emptyToNull(_streamAddressController.text) != null
        ? XrayAddress(_streamAddressController.text.trim())
        : null;
    final streamPort =
        _enableStreamEndpoint ? _nullableInt(_streamPortController) : null;
    final finalmask = _enableFinalMask ? _finalMaskFromJson() : null;

    return switch (_effectiveTransport) {
      TransportKind.tcp => StreamConfig(
          address: streamAddress,
          port: streamPort,
          network: TransportProtocol.tcp,
          security: security,
          finalmask: finalmask,
          tcpSettings: tcpSettings,
          tlsSettings: tlsSettings,
          realitySettings: realitySettings,
          sockopt: sockopt,
        ),
      TransportKind.raw => StreamConfig(
          address: streamAddress,
          port: streamPort,
          network: TransportProtocol.raw,
          security: security,
          finalmask: finalmask,
          rawSettings: tcpSettings,
          tlsSettings: tlsSettings,
          realitySettings: realitySettings,
          sockopt: sockopt,
        ),
      TransportKind.ws => StreamConfig(
          address: streamAddress,
          port: streamPort,
          network: TransportProtocol.ws,
          security: security,
          finalmask: finalmask,
          wsSettings: _webSocketSettings(),
          tlsSettings: tlsSettings,
          realitySettings: realitySettings,
          sockopt: sockopt,
        ),
      TransportKind.grpc => StreamConfig(
          address: streamAddress,
          port: streamPort,
          network: TransportProtocol.grpc,
          security: security,
          finalmask: finalmask,
          grpcSettings: _grpcSettings(),
          tlsSettings: tlsSettings,
          realitySettings: realitySettings,
          sockopt: sockopt,
        ),
      TransportKind.httpUpgrade => StreamConfig(
          address: streamAddress,
          port: streamPort,
          network: TransportProtocol.httpupgrade,
          security: security,
          finalmask: finalmask,
          httpupgradeSettings: _httpUpgradeSettings(),
          tlsSettings: tlsSettings,
          realitySettings: realitySettings,
          sockopt: sockopt,
        ),
      TransportKind.splitHttp => StreamConfig(
          address: streamAddress,
          port: streamPort,
          network: TransportProtocol.splithttp,
          security: security,
          finalmask: finalmask,
          splithttpSettings: _splitHttpSettings(),
          tlsSettings: tlsSettings,
          realitySettings: realitySettings,
          sockopt: sockopt,
        ),
      TransportKind.xhttp => StreamConfig(
          address: streamAddress,
          port: streamPort,
          network: TransportProtocol.xhttp,
          security: security,
          finalmask: finalmask,
          xhttpSettings: _splitHttpSettings(),
          tlsSettings: tlsSettings,
          realitySettings: realitySettings,
          sockopt: sockopt,
        ),
      TransportKind.mkcp => StreamConfig(
          address: streamAddress,
          port: streamPort,
          network: TransportProtocol.mkcp,
          security: security,
          finalmask: finalmask,
          kcpSettings: _kcpSettings(),
          tlsSettings: tlsSettings,
          realitySettings: realitySettings,
          sockopt: sockopt,
        ),
      TransportKind.kcp => StreamConfig(
          address: streamAddress,
          port: streamPort,
          network: TransportProtocol.kcp,
          security: security,
          finalmask: finalmask,
          kcpSettings: _kcpSettings(),
          tlsSettings: tlsSettings,
          realitySettings: realitySettings,
          sockopt: sockopt,
        ),
      TransportKind.hysteria => StreamConfig(
          address: streamAddress,
          port: streamPort,
          network: TransportProtocol.hysteria,
          security: security,
          finalmask: finalmask,
          hysteriaSettings: _hysteriaSettings(),
          tlsSettings: tlsSettings,
          realitySettings: realitySettings,
          sockopt: sockopt,
        ),
    };
  }

  WebSocketConfig _webSocketSettings() {
    return WebSocketConfig(
      host: _emptyToNull(_wsHostController.text),
      path: _pathController.text.trim(),
      acceptProxyProtocol: _wsAcceptProxyProtocol,
      heartbeatPeriod: _nullableInt(_wsHeartbeatController),
      headers: _transportHeaders(),
    );
  }

  GRPCConfig _grpcSettings() {
    return GRPCConfig(
      authority: _emptyToNull(_grpcAuthorityController.text),
      serviceName: _serviceController.text.trim(),
      multiMode: _grpcMultiMode,
      idleTimeout: _nullableInt(_grpcIdleTimeoutController),
      healthCheckTimeout: _nullableInt(_grpcHealthCheckTimeoutController),
      permitWithoutStream: _grpcPermitWithoutStream,
      initialWindowsSize: _nullableInt(_grpcInitialWindowSizeController),
      userAgent: _emptyToNull(_grpcUserAgentController.text),
    );
  }

  HttpUpgradeConfig _httpUpgradeSettings() {
    return HttpUpgradeConfig(
      host: _emptyToNull(_wsHostController.text),
      path: _httpUpgradePathController.text.trim(),
      acceptProxyProtocol: _wsAcceptProxyProtocol,
      headers: _transportHeaders(),
    );
  }

  SplitHTTPConfig _splitHttpSettings() {
    final extra = _mapFromJson(_splitHttpExtraController);
    final downloadSettings = _mapFromJson(_splitHttpDownloadSettingsController);
    return SplitHTTPConfig(
      host: _emptyToNull(_wsHostController.text),
      path: _splitHttpPathController.text.trim(),
      mode: _splitHttpMode,
      headers: _transportHeaders(),
      xPaddingBytes: _rangeFromText(_splitHttpXPaddingBytesController.text),
      xPaddingObfsMode: _splitHttpXPaddingObfsMode,
      xPaddingKey: _emptyToNull(_splitHttpXPaddingKeyController.text),
      xPaddingHeader: _emptyToNull(_splitHttpXPaddingHeaderController.text),
      xPaddingPlacement: _splitHttpXPaddingPlacement,
      xPaddingMethod: _splitHttpXPaddingMethod,
      uplinkHTTPMethod: _emptyToNull(_splitHttpUplinkMethodController.text),
      sessionIDPlacement: _splitHttpSessionIDPlacement,
      sessionIDKey: _emptyToNull(_splitHttpSessionIDKeyController.text),
      sessionIDTable: _emptyToNull(_splitHttpSessionIDTableController.text),
      sessionIDLength: _rangeFromText(_splitHttpSessionIDLengthController.text),
      seqPlacement: _splitHttpSeqPlacement,
      seqKey: _emptyToNull(_splitHttpSeqKeyController.text),
      uplinkDataPlacement: _splitHttpUplinkDataPlacement,
      uplinkDataKey: _emptyToNull(_splitHttpUplinkDataKeyController.text),
      uplinkChunkSize: _rangeFromText(_splitHttpUplinkChunkSizeController.text),
      noGRPCHeader: _splitHttpNoGrpcHeader,
      noSSEHeader: _splitHttpNoSseHeader,
      scMaxEachPostBytes:
          _rangeFromText(_splitHttpScMaxEachPostBytesController.text),
      scMinPostsIntervalMs:
          _rangeFromText(_splitHttpScMinPostsIntervalMsController.text),
      scMaxBufferedPosts: _nullableInt(_splitHttpScMaxBufferedPostsController),
      scStreamUpServerSecs:
          _rangeFromText(_splitHttpScStreamUpServerSecsController.text),
      serverMaxHeaderBytes:
          _nullableInt(_splitHttpServerMaxHeaderBytesController),
      xmux: _splitHttpEnableXmux ? _xmuxSettings() : null,
      downloadSettings:
          _splitHttpEnableDownloadSettings && downloadSettings.isNotEmpty
              ? StreamConfig.fromJson(downloadSettings)
              : null,
      extra: extra.isEmpty ? null : extra,
    );
  }

  Map<String, String>? _transportHeaders() {
    if (_enableTransportHeaders) {
      return _stringMapFromJson(_transportHeadersController);
    }
    final host = _emptyToNull(_wsHostController.text);
    return host == null ? null : {'Host': host};
  }

  XmuxConfig _xmuxSettings() {
    return XmuxConfig(
      maxConcurrency:
          _rangeFromText(_splitHttpXmuxMaxConcurrencyController.text),
      maxConnections:
          _rangeFromText(_splitHttpXmuxMaxConnectionsController.text),
      cMaxReuseTimes:
          _rangeFromText(_splitHttpXmuxCMaxReuseTimesController.text),
      hMaxRequestTimes:
          _rangeFromText(_splitHttpXmuxHMaxRequestTimesController.text),
      hMaxReusableSecs:
          _rangeFromText(_splitHttpXmuxHMaxReusableSecsController.text),
      hKeepAlivePeriod: _nullableInt(_splitHttpXmuxHKeepAlivePeriodController),
    );
  }

  HysteriaConfig _hysteriaSettings() {
    return HysteriaConfig(
      version: _intValue(_hysteriaVersionController, 2),
      auth: _emptyToNull(_passwordController.text),
      congestion: _emptyToNull(_hysteriaCongestionController.text),
      up: _emptyToNull(_hysteriaUpController.text) == null
          ? null
          : Bandwidth(_hysteriaUpController.text.trim()),
      down: _emptyToNull(_hysteriaDownController.text) == null
          ? null
          : Bandwidth(_hysteriaDownController.text.trim()),
      udpHop: _hysteriaEnableUdpHop
          ? UdpHop(
              ports: _portListFromText(_hysteriaUdpHopPortsController.text),
              interval: _rangeFromText(_hysteriaUdpHopIntervalController.text),
            )
          : null,
      udpIdleTimeout: _nullableInt(_hysteriaUdpIdleTimeoutController),
      masquerade: _hysteriaEnableMasquerade ? _hysteriaMasquerade() : null,
    );
  }

  Masquerade _hysteriaMasquerade() {
    return Masquerade(
      type: _emptyToNull(_hysteriaMasqueradeTypeController.text),
      dir: _emptyToNull(_hysteriaMasqueradeDirController.text),
      url: _emptyToNull(_hysteriaMasqueradeUrlController.text),
      rewriteHost: _hysteriaMasqueradeRewriteHost,
      insecure: _hysteriaMasqueradeInsecure,
      content: _emptyToNull(_hysteriaMasqueradeContentController.text),
      headers: _stringMapFromJson(_hysteriaMasqueradeHeadersController),
      statusCode: _nullableInt(_hysteriaMasqueradeStatusController),
    );
  }

  KCPConfig _kcpSettings() {
    final rawHeader = _mapFromJson(_kcpHeaderJsonController);
    return KCPConfig(
      mtu: _nullableInt(_kcpMtuController),
      tti: _nullableInt(_kcpTtiController),
      upCap: _nullableInt(_kcpUplinkController),
      downCap: _nullableInt(_kcpDownlinkController),
      cwndMultiplier: _nullableInt(_kcpCwndMultiplierController),
      maxSendingWindow: _nullableInt(_kcpMaxSendingWindowController),
      header: rawHeader.isNotEmpty
          ? rawHeader
          : _kcpHeaderWechatVideo
              ? {'type': 'wechat-video'}
              : {'type': 'none'},
      seed: _emptyToNull(_kcpSeedController.text),
    );
  }

  TLSConfig _tlsSettings(String serverName) {
    final tlsServerName = _tlsServerNameOverride
        ? (_emptyToNull(_tlsServerNameController.text) ?? serverName)
        : serverName;
    final alpn = _tlsAlpnCustom
        ? (_csv(_tlsAlpnCustomController.text) ?? const <String>[])
        : <String>[
            if (_tlsAlpnH2) 'h2',
            if (_tlsAlpnHttp11) 'http/1.1',
          ];
    return TLSConfig(
      serverName: tlsServerName,
      allowInsecure: _tlsAllowInsecure,
      alpn: alpn.isEmpty ? null : XrayStringList(alpn),
      enableSessionResumption: _tlsSessionResumption,
      disableSystemRoot: _tlsDisableSystemRoot,
      minVersion: _emptyToNull(_tlsMinVersionController.text),
      maxVersion: _emptyToNull(_tlsMaxVersionController.text),
      cipherSuites: _emptyToNull(_tlsCipherSuitesController.text),
      fingerprint: _fingerprint.label,
      rejectUnknownSNI: _tlsRejectUnknownSni,
      curvePreferences: _csvStringList(_tlsCurvePreferencesController.text),
      masterKeyLog: _emptyToNull(_tlsMasterKeyLogController.text),
      pinnedPeerCertSha256: _emptyToNull(_tlsPinnedPeerCertController.text),
      verifyPeerCertByName:
          _emptyToNull(_tlsVerifyPeerCertByNameController.text),
      echServerKeys: _emptyToNull(_tlsEchServerKeysController.text),
      echConfigList: _emptyToNull(_tlsEchConfigListController.text),
      echSocketSettings: _mapFromJson(_tlsEchSockoptController).isEmpty
          ? null
          : SocketConfig.fromJson(_mapFromJson(_tlsEchSockoptController)),
      certs: _tlsEnableCert
          ? _tlsCertsJson
              ? _listFromJson(_tlsCertsJsonController, TLSCertConfig.fromJson)
              : [_tlsCertificate()]
          : null,
    );
  }

  TLSCertConfig _tlsCertificate() {
    return TLSCertConfig(
      certFile: _emptyToNull(_tlsCertFileController.text),
      certStr: _lines(_tlsCertLinesController.text),
      keyFile: _emptyToNull(_tlsKeyFileController.text),
      keyStr: _lines(_tlsKeyLinesController.text),
      usage: _tlsCertUsage,
      ocspStapling: _nullableInt(_tlsOcspStaplingController),
      oneTimeLoading: _tlsCertOneTimeLoading,
      buildChain: _tlsCertBuildChain,
    );
  }

  FakeDNSConfig? _fakeDnsConfig() {
    if (_fakeDnsUsePoolsJson) {
      final pools = _listFromJson(
        _fakeDnsPoolsJsonController,
        FakeDNSPoolElementConfig.fromJson,
      );
      return pools == null ? null : FakeDNSConfig.pools(pools);
    }
    return FakeDNSConfig.pool(
      FakeDNSPoolElementConfig(
        ipPool: _fakeDnsIpPoolController.text.trim(),
        lruSize: _intValue(_fakeDnsPoolSizeController, 65535),
      ),
    );
  }

  DNSConfig _dnsConfig() {
    final servers = <NameServerConfig>[
      if (_emptyToNull(_dnsPrimaryController.text) != null)
        NameServerConfig(
          address: XrayAddress(_dnsPrimaryController.text.trim()),
          clientIp: _emptyToNull(_dnsPrimaryClientIpController.text) == null
              ? null
              : XrayAddress(_dnsPrimaryClientIpController.text.trim()),
          port: _nullableInt(_dnsPrimaryPortController),
          domains: _csvStringList(_dnsPrimaryDomainsController.text),
          expectedIPs: _csvStringList(_dnsPrimaryExpectedIpsController.text),
          expectIPs: _csvStringList(_dnsPrimaryExpectIpsController.text),
          queryStrategy: _dnsQueryStrategy,
          timeoutMs: _nullableInt(_dnsPrimaryTimeoutController),
          skipFallback: _dnsPrimarySkipFallback,
          disableCache: _dnsPrimaryDisableCache,
          serveStale: _dnsPrimaryServeStale,
          serveExpiredTTL: _nullableInt(_dnsPrimaryServeExpiredTtlController),
          finalQuery: _dnsPrimaryFinalQuery,
          unexpectedIPs:
              _csvStringList(_dnsPrimaryUnexpectedIpsController.text),
          tag: _emptyToNull(_dnsPrimaryTagController.text),
        ),
      if (_emptyToNull(_dnsSecondaryController.text) != null)
        _dnsSecondaryNameServer(),
    ];
    return DNSConfig.withServers(
      _dnsUseServersJson
          ? (_listFromJson(
                  _dnsServersJsonController, NameServerConfig.fromJson) ??
              [NameServerConfig.simple('1.1.1.1')])
          : servers.isEmpty
              ? [NameServerConfig.simple('1.1.1.1')]
              : servers,
      hosts: _hostsFromJson(_dnsHostsJsonController),
      clientIp: _emptyToNull(_dnsClientIpController.text) == null
          ? null
          : XrayAddress(_dnsClientIpController.text.trim()),
      tag: _emptyToNull(_dnsTagController.text),
      queryStrategy: _dnsQueryStrategy,
      disableCache: _dnsDisableCache,
      serveStale: _dnsServeStale,
      serveExpiredTTL: _nullableInt(_dnsServeExpiredTtlController),
      disableFallback: _dnsDisableFallback,
      disableFallbackIfMatch: _dnsDisableFallbackIfMatch,
      enableParallelQuery: _dnsParallelQuery,
      useSystemHosts: _dnsUseSystemHosts,
    );
  }

  NameServerConfig _dnsSecondaryNameServer() {
    final address = _dnsSecondaryController.text.trim();
    if (!_dnsSecondaryDetailed) {
      return NameServerConfig.simple(address);
    }
    return NameServerConfig(
      address: XrayAddress(address),
      clientIp: _emptyToNull(_dnsSecondaryClientIpController.text) == null
          ? null
          : XrayAddress(_dnsSecondaryClientIpController.text.trim()),
      port: _nullableInt(_dnsSecondaryPortController),
      domains: _csvStringList(_dnsSecondaryDomainsController.text),
      expectedIPs: _csvStringList(_dnsSecondaryExpectedIpsController.text),
      expectIPs: _csvStringList(_dnsSecondaryExpectIpsController.text),
      queryStrategy: _dnsSecondaryQueryStrategy,
      timeoutMs: _nullableInt(_dnsSecondaryTimeoutController),
      skipFallback: _dnsSecondarySkipFallback,
      disableCache: _dnsSecondaryDisableCache,
      serveStale: _dnsSecondaryServeStale,
      serveExpiredTTL: _nullableInt(_dnsSecondaryServeExpiredTtlController),
      finalQuery: _dnsSecondaryFinalQuery,
      unexpectedIPs: _csvStringList(_dnsSecondaryUnexpectedIpsController.text),
      tag: _emptyToNull(_dnsSecondaryTagController.text),
    );
  }

  PolicyConfig _policyConfig() {
    return PolicyConfig(
      levels: _policyUseLevelsJson
          ? _policyLevelsFromJson(_policyLevelsJsonController)
          : {
              0: Policy(
                handshake: _nullableInt(_policyHandshakeController),
                connectionIdle: _nullableInt(_policyConnIdleController),
                uplinkOnly: _nullableInt(_policyUplinkOnlyController),
                downlinkOnly: _nullableInt(_policyDownlinkOnlyController),
                statsUserUplink: _policyUserStatsUplink,
                statsUserDownlink: _policyUserStatsDownlink,
                statsUserOnline: _policyUserStatsOnline,
                bufferSize: _nullableInt(_policyBufferSizeController),
              ),
            },
      system: SystemPolicy(
        statsInboundUplink: _policyInboundStats,
        statsInboundDownlink: _policyInboundStats,
        statsOutboundUplink: _policyOutboundStats,
        statsOutboundDownlink: _policyOutboundStats,
      ),
    );
  }

  APIConfig _apiConfig() {
    final services = <ApiService>[
      if (_apiReflectionService) ApiService.reflectionservice,
      if (_apiHandlerService) ApiService.handlerservice,
      if (_apiLoggerService) ApiService.loggerservice,
      if (_apiStatsService) ApiService.statsservice,
      if (_apiObservatoryService) ApiService.observatoryservice,
      if (_apiRoutingService) ApiService.routingservice,
    ];
    return APIConfig(
      tag: _emptyToNull(_apiTagController.text) ?? 'api',
      listen: _emptyToNull(_apiListenController.text),
      services: services,
    );
  }

  ReverseConfig _reverseConfig() {
    final domain = _reverseDomainController.text.trim();
    return ReverseConfig(
      bridges: _reverseUseJsonLists
          ? _listFromJson(_reverseBridgesJsonController, BridgeConfig.fromJson)
          : [
              BridgeConfig(
                tag: _emptyToNull(_reverseBridgeTagController.text) ?? 'bridge',
                domain: domain,
              ),
            ],
      portals: _reverseUseJsonLists
          ? _listFromJson(_reversePortalsJsonController, PortalConfig.fromJson)
          : [
              PortalConfig(
                tag: _emptyToNull(_reversePortalTagController.text) ?? 'portal',
                domain: domain,
              ),
            ],
    );
  }

  BurstObservatoryConfig _burstObservatoryConfig() {
    return BurstObservatoryConfig(
      subjectSelector: _csv(_observatorySubjectController.text),
      healthCheck: HealthCheckSettings(
        destination: _burstDestinationController.text.trim(),
        connectivity: _emptyToNull(_burstConnectivityController.text),
        interval: _durationFromText(_burstIntervalController),
        samplingCount: _nullableInt(_burstSamplingController),
        timeout: _durationFromText(_burstTimeoutController),
        httpMethod: _emptyToNull(_burstMethodController.text),
      ),
    );
  }

  GeodataConfig _geodataConfig() {
    return GeodataConfig(
      cron: _emptyToNull(_geodataCronController.text),
      outbound: _emptyToNull(_geodataOutboundController.text) ??
          (_addDirectOutbound ? _directTag : null),
      assets: _geodataUseAssetsJson
          ? _listFromJson(
              _geodataAssetsJsonController,
              GeodataAssetConfig.fromJson,
            )
          : [
              GeodataAssetConfig(
                url: _geodataAssetUrlController.text.trim(),
                file: _geodataAssetFileController.text.trim(),
              ),
            ],
    );
  }

  RouterConfig? _routing() {
    final rules = <RouterRule>[];
    if (!_routeUseRulesJson && _routePrivateDirect && _addDirectOutbound) {
      rules.add(
        RouterRule.toOutbound(
          outboundTag: _directTag,
          ip: const XrayStringList(['geoip:private', 'geoip:cn']),
        ),
      );
    }
    if (!_routeUseRulesJson && _blockAds && _addBlockOutbound) {
      rules.add(
        RouterRule.toOutbound(
          outboundTag: _blockTag,
          domain: const XrayStringList(['geosite:category-ads-all']),
        ),
      );
    }
    if (!_routeUseRulesJson && _routeChinaSitesDirect && _addDirectOutbound) {
      rules.add(
        RouterRule.toOutbound(
          outboundTag: _directTag,
          domain: const XrayStringList(['geosite:cn']),
        ),
      );
    }
    if (!_routeUseRulesJson && _blockQuic && _addBlockOutbound) {
      rules.add(
        RouterRule.toOutbound(
          outboundTag: _blockTag,
          port: XrayPortList.single(443),
          network: const XrayNetworkList.udp(),
        ),
      );
    }
    if (!_routeUseRulesJson && _routeBitTorrentBlock && _addBlockOutbound) {
      rules.add(
        RouterRule.toOutbound(
          outboundTag: _blockTag,
          protocols: const XrayStringList(['bittorrent']),
        ),
      );
    }
    if (!_routeUseRulesJson && _routeCustomRule) {
      rules.add(_customRouterRule());
    }
    final ruleList = _routeUseRulesJson
        ? _listFromJson(_routeRulesJsonController, RouterRule.fromJson)
        : rules;
    final balancers = _routeUseBalancersJson
        ? _listFromJson(_balancersJsonController, BalancingRule.fromJson)
        : _enableBalancer
            ? [_balancingRule()]
            : null;
    if ((ruleList == null || ruleList.isEmpty) && balancers == null) {
      return null;
    }
    return RouterConfig(
      domainStrategy: _routerDomainStrategy,
      ruleList: ruleList,
      balancers: balancers,
    );
  }

  BalancingRule _balancingRule() {
    return BalancingRule(
      tag: _emptyToNull(_balancerTagController.text) ?? 'auto',
      selectors: XrayStringList(
        _csv(_balancerSelectorsController.text) ?? [_proxyTag],
      ),
      strategy: _balancingStrategy(),
      fallbackTag: _emptyToNull(_balancerFallbackTagController.text),
    );
  }

  StrategyConfig _balancingStrategy() {
    return StrategyConfig(
      type: _balancerStrategy,
      settings: _balancerStrategy == BalancingStrategyType.leastload
          ? StrategyLeastLoadConfig(
              costs: _strategyWeightsFromJson(_balancerCostsController),
              baselines: _durationsFromText(_balancerBaselinesController.text),
              expected: _nullableInt(_balancerExpectedController),
              maxRTT: _durationFromText(_balancerMaxRttController),
              tolerance: double.tryParse(_balancerToleranceController.text),
            )
          : null,
    );
  }

  RouterRule _customRouterRule() {
    final balancerTag = _emptyToNull(_routeBalancerTagController.text);
    final outboundTag = balancerTag == null
        ? (_emptyToNull(_routeOutboundTagController.text) ?? _proxyTag)
        : null;
    return RouterRule(
      ruleTag: _emptyToNull(_routeRuleTagController.text),
      outboundTag: outboundTag,
      balancerTag: balancerTag,
      domain: _csvStringList(_routeDomainController.text),
      domains: _csvStringList(_routeDomainsController.text),
      ip: _csvStringList(_routeIpController.text),
      port: _portListFromText(_routePortController.text),
      network: _networkListFromToggles(_routeCustomTcp, _routeCustomUdp),
      sourceIP: _csvStringList(_routeSourceIpController.text),
      source: _csvStringList(_routeSourceController.text),
      sourcePort: _portListFromText(_routeSourcePortController.text),
      user: _csvStringList(_routeUserController.text),
      vlessRoute: _portListFromText(_routeVlessRouteController.text),
      inboundTag: _csvStringList(_routeInboundTagController.text),
      protocols: _csvStringList(_routeProtocolsController.text),
      attributes: _stringMapFromJson(_routeAttrsController),
      localIP: _csvStringList(_routeLocalIpController.text),
      localPort: _portListFromText(_routeLocalPortController.text),
      process: _csvStringList(_routeProcessController.text),
      webhook: _routeEnableWebhook ? _routeWebhook() : null,
    );
  }

  WebhookRuleConfig? _routeWebhook() {
    final url = _emptyToNull(_routeWebhookUrlController.text);
    if (url == null) {
      return null;
    }
    return WebhookRuleConfig(
      url: url,
      deduplication: _nullableInt(_routeWebhookDedupController),
      headers: _stringMapFromJson(_routeWebhookHeadersController),
    );
  }

  List<VLessInboundFallback>? _vlessInboundFallbacks() {
    return _fallbacksUseJson
        ? _listFromJson(_fallbacksJsonController, VLessInboundFallback.fromJson)
        : [_vlessInboundFallback()];
  }

  List<TrojanInboundFallback>? _trojanInboundFallbacks() {
    return _fallbacksUseJson
        ? _listFromJson(
            _fallbacksJsonController,
            TrojanInboundFallback.fromJson,
          )
        : [_trojanInboundFallback()];
  }

  VLessInboundFallback _vlessInboundFallback() {
    return VLessInboundFallback(
      name: _emptyToNull(_vlessFallbackNameController.text),
      alpn: _emptyToNull(_vlessFallbackAlpnController.text),
      path: _emptyToNull(_vlessFallbackPathController.text),
      type: _vlessFallbackType,
      dest: _jsonOrString(_vlessFallbackDestController),
      xver: _nullableInt(_vlessFallbackXverController),
    );
  }

  TrojanInboundFallback _trojanInboundFallback() {
    return TrojanInboundFallback(
      name: _emptyToNull(_vlessFallbackNameController.text),
      alpn: _emptyToNull(_vlessFallbackAlpnController.text),
      path: _emptyToNull(_vlessFallbackPathController.text),
      type: _vlessFallbackType,
      dest: _jsonOrString(_vlessFallbackDestController),
      xver: _nullableInt(_vlessFallbackXverController),
    );
  }

  VLessReverseConfig _vlessReverseConfig() {
    return VLessReverseConfig(
      tag: _emptyToNull(_vlessReverseTagController.text) ?? 'reverse',
      sniffing: _vlessReverseUseSniffing && _enableSniffing
          ? SniffingConfig(
              enabled: true,
              destOverride: XrayStringList([
                if (_sniffHttp) 'http',
                if (_sniffTls) 'tls',
                if (_sniffFakeDns) 'fakedns',
              ]),
              domainsExcluded:
                  _csvStringList(_sniffDomainsExcludedController.text),
              ipsExcluded: _csvStringList(_sniffIpsExcludedController.text),
              metadataOnly: _sniffMetadataOnly,
              routeOnly: _sniffRouteOnly,
            )
          : null,
    );
  }

  int _intValue(TextEditingController controller, int fallback) {
    return int.tryParse(controller.text.trim()) ?? fallback;
  }

  int? _nullableInt(TextEditingController controller) {
    return int.tryParse(controller.text.trim());
  }

  List<String>? _csv(String value) {
    final values = value
        .split(',')
        .map((item) => item.trim())
        .where((item) => item.isNotEmpty)
        .toList();
    return values.isEmpty ? null : values;
  }

  XrayNetworkList? _networkListFromToggles(bool tcp, bool udp) {
    if (tcp && udp) {
      return const XrayNetworkList.tcpAndUdp();
    }
    if (tcp) {
      return const XrayNetworkList.tcp();
    }
    if (udp) {
      return const XrayNetworkList.udp();
    }
    return null;
  }

  XrayStringList? _csvStringList(String value) {
    final values = _csv(value);
    return values == null ? null : XrayStringList(values);
  }

  List<int>? _intCsv(String value) {
    final values = value
        .split(',')
        .map((item) => int.tryParse(item.trim()))
        .whereType<int>()
        .toList();
    return values.isEmpty ? null : values;
  }

  XrayPortList? _portListFromText(String value) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) {
      return null;
    }
    try {
      return XrayPortList.fromJson(trimmed);
    } on FormatException {
      return null;
    }
  }

  XrayInt32Range? _rangeFromText(String value) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) {
      return null;
    }
    try {
      return XrayInt32Range.fromJson(trimmed);
    } on FormatException {
      return null;
    }
  }

  XrayDuration? _durationFromText(TextEditingController controller) {
    final trimmed = controller.text.trim();
    return trimmed.isEmpty ? null : XrayDuration.raw(trimmed);
  }

  List<XrayDuration>? _durationsFromText(String value) {
    final values = value
        .split(',')
        .map((item) => item.trim())
        .where((item) => item.isNotEmpty)
        .map(XrayDuration.raw)
        .toList();
    return values.isEmpty ? null : values;
  }

  String? _emptyToNull(String value) {
    final trimmed = value.trim();
    return trimmed.isEmpty ? null : trimmed;
  }

  Map<String, dynamic> _mapFromJson(TextEditingController controller) {
    try {
      final decoded = jsonDecode(controller.text);
      if (decoded is Map<String, dynamic>) {
        return decoded;
      }
      if (decoded is Map) {
        return decoded.map((key, value) => MapEntry('$key', value));
      }
    } on FormatException {
      return {};
    }
    return {};
  }

  Object? _jsonOrString(TextEditingController controller) {
    final trimmed = controller.text.trim();
    if (trimmed.isEmpty) {
      return null;
    }
    try {
      return jsonDecode(trimmed);
    } on FormatException {
      return trimmed;
    }
  }

  List<String>? _lines(String value) {
    final lines = value
        .split('\n')
        .map((item) => item.trim())
        .where((item) => item.isNotEmpty)
        .toList();
    return lines.isEmpty ? null : lines;
  }

  List<StrategyWeight>? _strategyWeightsFromJson(
    TextEditingController controller,
  ) {
    try {
      final decoded = jsonDecode(controller.text);
      if (decoded is List) {
        final weights = decoded.map(StrategyWeight.fromJson).toList();
        return weights.isEmpty ? null : weights;
      }
    } on FormatException {
      return null;
    }
    return null;
  }

  List<CustomSockoptConfig>? _customSockoptFromJson(
    TextEditingController controller,
  ) {
    try {
      final decoded = jsonDecode(controller.text);
      if (decoded is List) {
        final values = decoded.map(CustomSockoptConfig.fromJson).toList();
        return values.isEmpty ? null : values;
      }
    } on FormatException {
      return null;
    }
    return null;
  }

  List<T>? _listFromJson<T>(
    TextEditingController controller,
    T Function(Object? json) parse,
  ) {
    try {
      final decoded = jsonDecode(controller.text);
      if (decoded is List) {
        final values = decoded.map(parse).toList();
        return values.isEmpty ? null : values;
      }
    } on FormatException {
      return null;
    }
    return null;
  }

  List<List<TCPItem>>? _tcpItemSequencesFromJson(
    TextEditingController controller,
  ) {
    try {
      final decoded = jsonDecode(controller.text);
      if (decoded is List) {
        final values = decoded
            .whereType<List>()
            .map((sequence) => sequence.map(TCPItem.fromJson).toList())
            .toList();
        return values.isEmpty ? null : values;
      }
    } on FormatException {
      return null;
    }
    return null;
  }

  FinalMask? _finalMaskFromJson() {
    if (_enableFinalMaskParts) {
      return FinalMask(
        tcp: _finalMaskTcpMasks(),
        udp: _finalMaskUdpMasks(),
        quicParams: _enableFinalMaskQuic ? _quicParams() : null,
      );
    }
    final map = _mapFromJson(_finalMaskJsonController);
    if (map.isEmpty) {
      return null;
    }
    try {
      return FinalMask.fromJson(map);
    } on FormatException {
      return null;
    }
  }

  List<Mask>? _finalMaskTcpMasks() {
    if (!_enableFinalMaskTcp) {
      return null;
    }
    if (!_enableFinalMaskTcpFields) {
      return _listFromJson(_finalMaskTcpJsonController, Mask.fromJson);
    }
    final masks = <Mask>[
      if (_finalMaskTcpFragment) _finalMaskFragmentMask(),
      if (_finalMaskTcpHeaderCustom) _finalMaskTcpHeaderCustomMask(),
      if (_finalMaskTcpSudoku) _finalMaskSudokuMask(),
    ];
    return masks.isEmpty ? null : masks;
  }

  List<Mask>? _finalMaskUdpMasks() {
    if (!_enableFinalMaskUdp) {
      return null;
    }
    if (!_enableFinalMaskUdpFields) {
      return _listFromJson(
        _finalMaskUdpJsonController,
        (json) => Mask.fromJson(json, udp: true),
      );
    }
    final masks = <Mask>[
      if (_finalMaskUdpFragment) _finalMaskFragmentMask(),
      if (_finalMaskUdpNoise) _finalMaskNoiseMask(),
      if (_finalMaskUdpDns) _finalMaskDnsMask(),
      if (_finalMaskUdpSalamander) _finalMaskSalamanderMask(),
      if (_finalMaskUdpAes) _finalMaskAesMask(),
      if (_finalMaskUdpXdns) _finalMaskXdnsMask(),
      if (_finalMaskUdpXicmp) _finalMaskXicmpMask(),
      if (_finalMaskUdpHeaderCustom) _finalMaskUdpHeaderCustomMask(),
      if (_finalMaskUdpSudoku) _finalMaskSudokuMask(),
      if (_finalMaskUdpOriginal) _finalMaskMkcpLegacyMask(),
      if (_finalMaskUdpDtls) _finalMaskMkcpLegacyMask(header: 'dtls'),
      if (_finalMaskUdpSrtp) _finalMaskMkcpLegacyMask(header: 'srtp'),
      if (_finalMaskUdpUtp) _finalMaskMkcpLegacyMask(header: 'utp'),
      if (_finalMaskUdpWechat) _finalMaskMkcpLegacyMask(header: 'wechat'),
      if (_finalMaskUdpWireguard) _finalMaskMkcpLegacyMask(header: 'wireguard'),
    ];
    return masks.isEmpty ? null : masks;
  }

  Mask _finalMaskFragmentMask() {
    return Mask(
      type: 'fragment',
      settings: FragmentMask(
        packets: _emptyToNull(_finalMaskFragmentPacketsController.text),
        length: _rangeFromText(_finalMaskFragmentLengthController.text),
        delay: _rangeFromText(_finalMaskFragmentDelayController.text),
        maxSplit: _rangeFromText(_finalMaskFragmentMaxSplitController.text),
      ),
    );
  }

  Mask _finalMaskNoiseMask() {
    return Mask(
      type: 'noise',
      settings: NoiseMask(
        reset: _rangeFromText(_finalMaskNoiseResetController.text),
        noiseItems: _listFromJson(
          _finalMaskNoiseItemsController,
          NoiseItem.fromJson,
        ),
      ),
    );
  }

  Mask _finalMaskDnsMask() {
    return Mask(
      type: 'mkcp-legacy',
      settings: MkcpLegacy(
        header: 'dns',
        value: _emptyToNull(_finalMaskDnsDomainController.text),
      ),
    );
  }

  Mask _finalMaskSalamanderMask() {
    return Mask(
      type: 'salamander',
      settings: Salamander(
        password: _emptyToNull(_finalMaskSalamanderPasswordController.text),
      ),
    );
  }

  Mask _finalMaskAesMask() {
    return Mask(
      type: 'mkcp-legacy',
      settings: MkcpLegacy(
        value: _emptyToNull(_finalMaskAesPasswordController.text),
      ),
    );
  }

  Mask _finalMaskMkcpLegacyMask({String? header}) {
    return Mask(type: 'mkcp-legacy', settings: MkcpLegacy(header: header));
  }

  Mask _finalMaskXdnsMask() {
    return Mask(
      type: 'xdns',
      settings: Xdns(
        domain: _jsonOrString(_finalMaskXdnsDomainController),
        domains: _csv(_finalMaskXdnsDomainsController.text),
        resolvers: _csv(_finalMaskXdnsResolversController.text),
      ),
    );
  }

  Mask _finalMaskXicmpMask() {
    return Mask(
      type: 'xicmp',
      settings: Xicmp(
        dgram: _finalMaskXicmpDgram,
        ips: _csv(_finalMaskXicmpIpsController.text),
      ),
    );
  }

  Mask _finalMaskTcpHeaderCustomMask() {
    return Mask(
      type: 'header-custom',
      settings: HeaderCustomTCP(
        clients:
            _tcpItemSequencesFromJson(_finalMaskTcpCustomClientsController),
        servers:
            _tcpItemSequencesFromJson(_finalMaskTcpCustomServersController),
        errors: _tcpItemSequencesFromJson(_finalMaskTcpCustomErrorsController),
      ),
    );
  }

  Mask _finalMaskUdpHeaderCustomMask() {
    return Mask(
      type: 'header-custom',
      settings: HeaderCustomUDP(
        mode: _emptyToNull(_finalMaskUdpCustomModeController.text),
        client: _listFromJson(
            _finalMaskUdpCustomClientController, UDPItem.fromJson),
        server: _listFromJson(
            _finalMaskUdpCustomServerController, UDPItem.fromJson),
      ),
    );
  }

  Mask _finalMaskSudokuMask() {
    return Mask(
      type: 'sudoku',
      settings: Sudoku(
        password: _emptyToNull(_finalMaskSudokuPasswordController.text),
        ascii: _emptyToNull(_finalMaskSudokuAsciiController.text),
        customTable: _emptyToNull(_finalMaskSudokuCustomTableController.text),
        customTables: _csv(_finalMaskSudokuCustomTablesController.text),
        paddingMin: _nullableInt(_finalMaskSudokuPaddingMinController),
        paddingMax: _nullableInt(_finalMaskSudokuPaddingMaxController),
      ),
    );
  }

  QuicParamsConfig? _quicParamsFromJson(TextEditingController controller) {
    final map = _mapFromJson(controller);
    if (map.isEmpty) {
      return null;
    }
    try {
      return QuicParamsConfig.fromJson(map);
    } on FormatException {
      return null;
    }
  }

  QuicParamsConfig? _quicParams() {
    if (!_enableFinalMaskQuicFields) {
      return _quicParamsFromJson(_finalMaskQuicJsonController);
    }
    return QuicParamsConfig(
      congestion: _emptyToNull(_quicCongestionController.text),
      debug: _quicDebug,
      bbrProfile: _emptyToNull(_quicBbrProfileController.text),
      brutalUp: _emptyToNull(_quicBrutalUpController.text) == null
          ? null
          : Bandwidth(_quicBrutalUpController.text.trim()),
      brutalDown: _emptyToNull(_quicBrutalDownController.text) == null
          ? null
          : Bandwidth(_quicBrutalDownController.text.trim()),
      udpHop: _emptyToNull(_quicUdpHopPortsController.text) == null &&
              _emptyToNull(_quicUdpHopIntervalController.text) == null
          ? null
          : UdpHop(
              ports: _portListFromText(_quicUdpHopPortsController.text),
              interval: _rangeFromText(_quicUdpHopIntervalController.text),
            ),
      initStreamReceiveWindow: _nullableInt(_quicInitStreamWindowController),
      maxStreamReceiveWindow: _nullableInt(_quicMaxStreamWindowController),
      initConnectionReceiveWindow:
          _nullableInt(_quicInitConnectionWindowController),
      maxConnectionReceiveWindow:
          _nullableInt(_quicMaxConnectionWindowController),
      maxIdleTimeout: _nullableInt(_quicMaxIdleTimeoutController),
      keepAlivePeriod: _nullableInt(_quicKeepAlivePeriodController),
      disablePathMTUDiscovery: _quicDisablePathMtuDiscovery,
      maxIncomingStreams: _nullableInt(_quicMaxIncomingStreamsController),
    );
  }

  Map<String, String>? _stringMapFromJson(TextEditingController controller) {
    final map = _mapFromJson(controller);
    if (map.isEmpty) {
      return null;
    }
    return map.map((key, value) => MapEntry(key, '$value'));
  }

  Map<String, XrayStringList>? _stringListMapFromJson(
    TextEditingController controller,
  ) {
    final map = _mapFromJson(controller);
    if (map.isEmpty) {
      return null;
    }
    try {
      return map
          .map((key, value) => MapEntry(key, XrayStringList.fromJson(value)));
    } on FormatException {
      return null;
    }
  }

  Map<int, Policy>? _policyLevelsFromJson(TextEditingController controller) {
    final map = _mapFromJson(controller);
    if (map.isEmpty) {
      return null;
    }
    try {
      return map.map(
          (key, value) => MapEntry(int.parse(key), Policy.fromJson(value)));
    } on FormatException {
      return null;
    }
  }

  HostsWrapper? _hostsFromJson(TextEditingController controller) {
    final map = _mapFromJson(controller);
    if (map.isEmpty) {
      return null;
    }
    try {
      return HostsWrapper.fromJson(map);
    } on FormatException {
      return null;
    }
  }

  void _refresh([Object? _]) {
    setState(() {});
  }

  OutboundDetourConfig _directOutbound() {
    return OutboundDetourConfig.direct(
      tag: _directTag,
      settings: FreedomConfig(
        targetStrategy: _targetStrategy,
        domainStrategy: _directDomainStrategy,
        redirect: _emptyToNull(_directRedirectController.text),
        userLevel: _nullableInt(_directUserLevelController),
        proxyProtocol: _nullableInt(_directProxyProtocolController),
        ipsBlocked: _csvStringList(_directIpsBlockedController.text),
        fragment: _directEnableFragment
            ? Fragment(
                packets: _emptyToNull(_directFragmentPacketsController.text),
                length: _rangeFromText(_directFragmentLengthController.text),
                interval:
                    _rangeFromText(_directFragmentIntervalController.text),
                maxSplit:
                    _rangeFromText(_directFragmentMaxSplitController.text),
              )
            : null,
        noise: _directEnableNoise
            ? Noise(
                type: _emptyToNull(_directNoiseTypeController.text),
                packet: _emptyToNull(_directNoisePacketController.text),
                delay: _rangeFromText(_directNoiseDelayController.text),
                applyTo: _emptyToNull(_directNoiseApplyToController.text),
              )
            : null,
        noises: _directEnableNoises
            ? _listFromJson(_directNoisesJsonController, Noise.fromJson)
            : null,
      ),
    );
  }

  OutboundDetourConfig _blockOutbound() {
    return OutboundDetourConfig.block(
      tag: _blockTag,
      settings: BlackholeConfig(
        response: _blockHttpResponse
            ? const BlackholeResponse.http()
            : const BlackholeResponse.none(),
      ),
    );
  }

  OutboundDetourConfig _dnsOutbound() {
    return OutboundDetourConfig.dns(
      tag: _dnsOutboundTag,
      settings: DNSOutboundConfig(
        network: _dnsOutboundNetwork,
        address: XrayAddress(_dnsOutboundAddressController.text.trim()),
        port: _intValue(_dnsOutboundPortController, 53),
        userLevel: _nullableInt(_dnsOutboundUserLevelController),
        rules: _enableDnsOutboundRule ? _dnsOutboundRules() : null,
        nonIPQuery: _emptyToNull(_dnsOutboundNonIpQueryController.text),
        blockTypes: _intCsv(_dnsOutboundBlockTypesController.text),
      ),
    );
  }

  List<DNSOutboundRuleConfig>? _dnsOutboundRules() {
    return _dnsOutboundRulesJson
        ? _listFromJson(
            _dnsOutboundRulesJsonController,
            DNSOutboundRuleConfig.fromJson,
          )
        : [_dnsOutboundRule()];
  }

  DNSOutboundRuleConfig _dnsOutboundRule() {
    return DNSOutboundRuleConfig(
      action: _dnsOutboundRuleAction,
      qType: _portListFromText(_dnsOutboundRuleQtypeController.text),
      domain: _csvStringList(_dnsOutboundRuleDomainController.text),
    );
  }

  Future<void> _copyJson() async {
    await Clipboard.setData(ClipboardData(text: _jsonText));
    if (!mounted) {
      return;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('配置 JSON 已复制')),
    );
  }

  @override
  Widget build(BuildContext context) {
    final wide = MediaQuery.sizeOf(context).width >= 920;
    final controls = _ControlPane(child: _buildControls());
    final preview = _JsonPane(
      title: '生成的 Xray 配置',
      subtitle: _summary,
      issues: _issues,
      jsonText: _jsonText,
      onCopy: _copyJson,
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('Xray 配置生成器'),
        actions: [
          TextButton.icon(
            onPressed: _copyJson,
            icon: const Icon(Icons.copy_rounded),
            label: const Text('复制 JSON'),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: wide
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(width: 460, child: controls),
                    const SizedBox(width: 16),
                    Expanded(child: preview),
                  ],
                )
              : Column(
                  children: [
                    SizedBox(height: 420, child: controls),
                    const SizedBox(height: 16),
                    Expanded(child: preview),
                  ],
                ),
        ),
      ),
    );
  }

  Widget _buildControls() {
    return ListView(
      padding: const EdgeInsets.all(14),
      children: [
        const _PaneHeader(icon: Icons.tune_rounded, title: '组合配置'),
        _SectionLabel('基础'),
        _DropdownInput<LogLevel>(
          value: _logLevel,
          label: '日志级别',
          icon: Icons.article_rounded,
          values: LogLevel.values,
          labelOf: (value) => value.label,
          onChanged: (value) => setState(() => _logLevel = value),
        ),
        _CheckRow(
          value: _logDnsLog,
          title: '日志 dnsLog',
          icon: Icons.dns_rounded,
          onChanged: (value) => setState(() => _logDnsLog = value),
        ),
        const SizedBox(height: 12),
        _TextInput(
          controller: _logAccessController,
          label: '日志 access 文件',
          icon: Icons.file_open_rounded,
          onChanged: _refresh,
        ),
        const SizedBox(height: 12),
        _TextInput(
          controller: _logErrorController,
          label: '日志 error 文件',
          icon: Icons.error_outline_rounded,
          onChanged: _refresh,
        ),
        const SizedBox(height: 12),
        _TextInput(
          controller: _logMaskAddressController,
          label: '日志 maskAddress',
          icon: Icons.visibility_off_rounded,
          onChanged: _refresh,
        ),
        const SizedBox(height: 12),
        _DropdownInput<XrayTargetStrategy>(
          value: _targetStrategy,
          label: '出站目标策略',
          icon: Icons.track_changes_rounded,
          values: XrayTargetStrategy.values,
          labelOf: (value) => value.label,
          onChanged: (value) => setState(() => _targetStrategy = value),
        ),
        const SizedBox(height: 12),
        _TextInput(
          fieldKey: const ValueKey('send-through-field'),
          controller: _sendThroughController,
          label: 'sendThrough 本地出口 IP',
          icon: Icons.outbound_rounded,
          onChanged: _refresh,
        ),
        _CheckRow(
          value: _enableProxySettings,
          title: '添加 outbound proxySettings',
          icon: Icons.swap_calls_rounded,
          onChanged: (value) => setState(() => _enableProxySettings = value),
        ),
        if (_enableProxySettings) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _proxySettingsTagController,
            label: 'proxySettings tag',
            icon: Icons.sell_rounded,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _proxySettingsTransportLayer,
            title: 'proxySettings transportLayer',
            icon: Icons.layers_rounded,
            onChanged: (value) =>
                setState(() => _proxySettingsTransportLayer = value),
          ),
        ],
        const Divider(height: 28),
        _SectionLabel('入站'),
        _CheckRow(
          value: _enableInboundsJson,
          title: '顶层 inbounds JSON 数组',
          icon: Icons.data_array_rounded,
          onChanged: (value) => setState(() => _enableInboundsJson = value),
        ),
        if (_enableInboundsJson) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _inboundsJsonController,
            label: 'inbounds JSON 数组',
            icon: Icons.data_array_rounded,
            maxLines: 6,
            onChanged: _refresh,
          ),
        ],
        _DropdownInput<InboundKind>(
          value: _inbound,
          label: '入站协议',
          icon: Icons.input_rounded,
          values: InboundKind.values,
          labelOf: (value) => value.label,
          onChanged: (value) => setState(() => _inbound = value),
        ),
        const SizedBox(height: 12),
        _TextInput(
          controller: _inboundTagController,
          label: '入站 tag',
          icon: Icons.sell_rounded,
          onChanged: _refresh,
        ),
        const SizedBox(height: 12),
        if (_inbound == InboundKind.tun) ...[
          _TextInput(
            controller: _tunNameController,
            label: 'TUN name',
            icon: Icons.vpn_lock_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _tunDescController,
            label: 'TUN desc',
            icon: Icons.description_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _tunMtuController,
            label: 'TUN MTU',
            icon: Icons.numbers_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _tunGatewayController,
            label: 'TUN gateway 逗号分隔',
            icon: Icons.route_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _tunDnsController,
            label: 'TUN DNS 逗号分隔',
            icon: Icons.dns_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _tunAutoRoutingTableController,
            label: 'TUN autoSystemRoutingTable 逗号分隔',
            icon: Icons.route_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _tunAutoOutboundsInterfaceController,
            label: 'TUN autoOutboundsInterface',
            icon: Icons.settings_input_component_rounded,
            onChanged: _refresh,
          ),
        ] else if (_inbound == InboundKind.wireguard) ...[
          _TextInput(
            controller: _wireguardSecretController,
            label: 'WireGuard secretKey',
            icon: Icons.vpn_key_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _wireguardPublicController,
            label: 'WireGuard peer publicKey',
            icon: Icons.key_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _wireguardEndpointController,
            label: 'WireGuard endpoint',
            icon: Icons.hub_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _wireguardAddressController,
            label: 'WireGuard address 逗号分隔',
            icon: Icons.my_location_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _wireguardAllowedIpsController,
            label: 'WireGuard allowedIPs 逗号分隔',
            icon: Icons.route_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _wireguardMtuController,
            label: 'WireGuard MTU',
            icon: Icons.numbers_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _wireguardNoKernelTun,
            title: 'WireGuard noKernelTun',
            icon: Icons.tune_rounded,
            onChanged: (value) => setState(() => _wireguardNoKernelTun = value),
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _wireguardReservedController,
            label: 'WireGuard reserved 逗号分隔',
            icon: Icons.format_list_numbered_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _wireguardPreSharedKeyController,
            label: 'WireGuard peer preSharedKey',
            icon: Icons.key_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _wireguardKeepAliveController,
            label: 'WireGuard peer keepAlive',
            icon: Icons.monitor_heart_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _wireguardEnablePeersJson,
            title: 'WireGuard peers JSON 数组',
            icon: Icons.data_array_rounded,
            onChanged: (value) =>
                setState(() => _wireguardEnablePeersJson = value),
          ),
          if (_wireguardEnablePeersJson) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _wireguardPeersJsonController,
              label: 'WireGuard peers JSON 数组',
              icon: Icons.data_array_rounded,
              maxLines: 5,
              onChanged: _refresh,
            ),
          ],
        ] else if (_inbound == InboundKind.raw) ...[
          _TextInput(
            controller: _rawInboundProtocolController,
            label: 'Raw inbound protocol',
            icon: Icons.code_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _listenController,
            label: '监听地址',
            icon: Icons.computer_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _inboundPortController,
            label: '入站端口',
            icon: Icons.numbers_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _rawInboundSettingsController,
            label: 'Raw inbound settings JSON',
            icon: Icons.data_object_rounded,
            maxLines: 6,
            onChanged: _refresh,
          ),
        ] else ...[
          _TextInput(
            controller: _listenController,
            label: '监听地址',
            icon: Icons.computer_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _inboundPortController,
            label: '入站端口',
            icon: Icons.numbers_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
        ],
        if (_inbound == InboundKind.dokodemo) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _dokodemoAddressController,
            label: 'Dokodemo 目标地址',
            icon: Icons.dns_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _dokodemoPortController,
            label: 'Dokodemo 目标端口',
            icon: Icons.tag_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _dokodemoTcp,
            title: 'Dokodemo TCP',
            icon: Icons.settings_ethernet_rounded,
            onChanged: (value) => setState(() => _dokodemoTcp = value),
          ),
          _CheckRow(
            value: _dokodemoUdp,
            title: 'Dokodemo UDP',
            icon: Icons.sync_alt_rounded,
            onChanged: (value) => setState(() => _dokodemoUdp = value),
          ),
          _CheckRow(
            value: _dokodemoFollowRedirect,
            title: 'Dokodemo followRedirect',
            icon: Icons.redo_rounded,
            onChanged: (value) =>
                setState(() => _dokodemoFollowRedirect = value),
          ),
          _CheckRow(
            value: _dokodemoEnablePortMap,
            title: 'Dokodemo portMap',
            icon: Icons.map_rounded,
            onChanged: (value) =>
                setState(() => _dokodemoEnablePortMap = value),
          ),
          if (_dokodemoEnablePortMap) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _dokodemoPortMapController,
              label: 'Dokodemo portMap JSON',
              icon: Icons.data_object_rounded,
              maxLines: 4,
              onChanged: _refresh,
            ),
          ],
        ],
        if (_inbound == InboundKind.http) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _usernameController,
            label: 'HTTP inbound user',
            icon: Icons.person_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _passwordController,
            label: 'HTTP inbound pass',
            icon: Icons.password_rounded,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _httpInboundTransparent,
            title: 'HTTP allowTransparent',
            icon: Icons.visibility_rounded,
            onChanged: (value) =>
                setState(() => _httpInboundTransparent = value),
          ),
        ],
        if (_inbound == InboundKind.socks) ...[
          const SizedBox(height: 12),
          _DropdownInput<SocksAuthMethod>(
            value: _socksAuthMethod,
            label: 'SOCKS auth',
            icon: Icons.lock_rounded,
            values: SocksAuthMethod.values,
            labelOf: (value) => value.label,
            onChanged: (value) => setState(() => _socksAuthMethod = value),
          ),
          if (_socksAuthMethod == SocksAuthMethod.password) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _usernameController,
              label: 'SOCKS user',
              icon: Icons.person_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _passwordController,
              label: 'SOCKS pass',
              icon: Icons.password_rounded,
              onChanged: _refresh,
            ),
          ],
        ],
        if (_inbound == InboundKind.socks ||
            _inbound == InboundKind.http ||
            _inbound == InboundKind.dokodemo ||
            _inbound == InboundKind.tun) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _inboundUserLevelController,
            label: '入站 userLevel',
            icon: Icons.person_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
        ],
        if (_inbound == InboundKind.hysteria) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _hysteriaVersionController,
            label: 'Hysteria version',
            icon: Icons.numbers_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _passwordController,
            label: 'Hysteria auth',
            icon: Icons.password_rounded,
            onChanged: _refresh,
          ),
        ],
        if ((_inbound == InboundKind.vless && _vlessEnableFallback) ||
            (_inbound == InboundKind.trojan && _trojanEnableFallback)) ...[
          _CheckRow(
            value: _fallbacksUseJson,
            title: 'fallbacks JSON 数组',
            icon: Icons.data_array_rounded,
            onChanged: (value) => setState(() => _fallbacksUseJson = value),
          ),
          if (_fallbacksUseJson) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _fallbacksJsonController,
              label: 'fallbacks JSON 数组',
              icon: Icons.data_array_rounded,
              maxLines: 5,
              onChanged: _refresh,
            ),
          ],
        ],
        if (_inbound == InboundKind.socks ||
            _inbound == InboundKind.http ||
            _inbound == InboundKind.vless ||
            _inbound == InboundKind.vmess ||
            _inbound == InboundKind.trojan ||
            _inbound == InboundKind.shadowsocks ||
            _inbound == InboundKind.hysteria) ...[
          _CheckRow(
            value: _enableInboundUsersJson,
            title: '入站 users/clients/accounts JSON 数组',
            icon: Icons.data_array_rounded,
            onChanged: (value) =>
                setState(() => _enableInboundUsersJson = value),
          ),
          if (_enableInboundUsersJson) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _inboundUsersJsonController,
              label: '入站 users/clients/accounts JSON 数组',
              icon: Icons.data_array_rounded,
              maxLines: 6,
              onChanged: _refresh,
            ),
          ],
        ],
        _CheckRow(
          value: _enableUdp,
          enabled: _inbound == InboundKind.socks,
          title: 'SOCKS UDP',
          icon: Icons.sync_alt_rounded,
          onChanged: (value) => setState(() => _enableUdp = value),
        ),
        _CheckRow(
          value: _enableSniffing,
          title: '启用 sniffing',
          icon: Icons.manage_search_rounded,
          onChanged: (value) => setState(() => _enableSniffing = value),
        ),
        _CheckRow(
          value: _sniffHttp,
          enabled: _enableSniffing,
          title: 'sniff HTTP',
          icon: Icons.http_rounded,
          onChanged: (value) => setState(() => _sniffHttp = value),
        ),
        _CheckRow(
          value: _sniffTls,
          enabled: _enableSniffing,
          title: 'sniff TLS',
          icon: Icons.lock_rounded,
          onChanged: (value) => setState(() => _sniffTls = value),
        ),
        _CheckRow(
          value: _sniffFakeDns,
          enabled: _enableSniffing,
          title: 'sniff fakeDns',
          icon: Icons.blur_on_rounded,
          onChanged: (value) => setState(() => _sniffFakeDns = value),
        ),
        if (_enableSniffing) ...[
          _CheckRow(
            value: _sniffMetadataOnly,
            title: 'sniff metadataOnly',
            icon: Icons.info_rounded,
            onChanged: (value) => setState(() => _sniffMetadataOnly = value),
          ),
          _CheckRow(
            value: _sniffRouteOnly,
            title: 'sniff routeOnly',
            icon: Icons.route_rounded,
            onChanged: (value) => setState(() => _sniffRouteOnly = value),
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _sniffDomainsExcludedController,
            label: 'sniff domainsExcluded 逗号分隔',
            icon: Icons.language_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _sniffIpsExcludedController,
            label: 'sniff ipsExcluded 逗号分隔',
            icon: Icons.my_location_rounded,
            onChanged: _refresh,
          ),
        ],
        const Divider(height: 28),
        _SectionLabel('出站'),
        _CheckRow(
          value: _enableOutboundsJson,
          title: '顶层 outbounds JSON 数组',
          icon: Icons.data_array_rounded,
          onChanged: (value) => setState(() => _enableOutboundsJson = value),
        ),
        if (_enableOutboundsJson) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _outboundsJsonController,
            label: 'outbounds JSON 数组',
            icon: Icons.data_array_rounded,
            maxLines: 6,
            onChanged: _refresh,
          ),
        ],
        DropdownButtonFormField<ProxyProtocol>(
          key: ValueKey(_protocol),
          initialValue: _protocol,
          decoration: const InputDecoration(
            labelText: '出站协议',
            prefixIcon: Icon(Icons.schema_rounded),
            border: OutlineInputBorder(),
          ),
          items: ProxyProtocol.values
              .map(
                (protocol) => DropdownMenuItem(
                  value: protocol,
                  child: Text(protocol.label),
                ),
              )
              .toList(),
          onChanged: (value) {
            if (value == null) {
              return;
            }
            setState(() {
              _protocol = value;
              if (_effectiveTransport != _transport) {
                _transport = _effectiveTransport;
              }
            });
          },
        ),
        const SizedBox(height: 12),
        _TextInput(
          controller: _proxyTagController,
          label: 'proxy outbound tag',
          icon: Icons.sell_rounded,
          onChanged: _refresh,
        ),
        if (_protocol != ProxyProtocol.loopback) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _serverController,
            label: '服务器地址',
            icon: Icons.dns_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _serverPortController,
            label: '服务器端口',
            icon: Icons.tag_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
        ],
        if (_protocol == ProxyProtocol.loopback) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _loopbackInboundTagController,
            label: 'Loopback inboundTag',
            icon: Icons.keyboard_return_rounded,
            onChanged: _refresh,
          ),
        ],
        if (_protocol == ProxyProtocol.vless ||
            _protocol == ProxyProtocol.vmess ||
            _inbound == InboundKind.vless ||
            _inbound == InboundKind.vmess) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _uuidController,
            label: 'UUID',
            icon: Icons.key_rounded,
            onChanged: _refresh,
          ),
        ],
        if (_protocol == ProxyProtocol.trojan ||
            _protocol == ProxyProtocol.shadowsocks ||
            _protocol == ProxyProtocol.http ||
            _protocol == ProxyProtocol.socks ||
            _inbound == InboundKind.trojan ||
            _inbound == InboundKind.shadowsocks ||
            _inbound == InboundKind.hysteria) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _passwordController,
            label: '密码',
            icon: Icons.password_rounded,
            onChanged: _refresh,
          ),
        ],
        if (_protocol == ProxyProtocol.http ||
            _protocol == ProxyProtocol.socks) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _usernameController,
            label: '用户名',
            icon: Icons.person_rounded,
            onChanged: _refresh,
          ),
        ],
        if (_protocol == ProxyProtocol.http) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _httpHeadersController,
            label: 'HTTP outbound headers JSON',
            icon: Icons.data_object_rounded,
            maxLines: 3,
            onChanged: _refresh,
          ),
        ],
        if (_protocol == ProxyProtocol.vless ||
            _protocol == ProxyProtocol.vmess ||
            _protocol == ProxyProtocol.trojan ||
            _protocol == ProxyProtocol.shadowsocks ||
            _protocol == ProxyProtocol.http ||
            _protocol == ProxyProtocol.socks) ...[
          _CheckRow(
            value: _enableOutboundTargets,
            title: _protocol == ProxyProtocol.vless ||
                    _protocol == ProxyProtocol.vmess
                ? '添加 vnext 数组'
                : '添加 servers 数组',
            icon: Icons.storage_rounded,
            onChanged: (value) =>
                setState(() => _enableOutboundTargets = value),
          ),
          if (_enableOutboundTargets) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _outboundTargetsJsonController,
              label: _protocol == ProxyProtocol.vless ||
                      _protocol == ProxyProtocol.vmess
                  ? 'vnext JSON 数组'
                  : 'servers JSON 数组',
              icon: Icons.data_array_rounded,
              maxLines: 6,
              onChanged: _refresh,
            ),
          ],
        ],
        if (_protocol == ProxyProtocol.vless ||
            _protocol == ProxyProtocol.vmess ||
            _protocol == ProxyProtocol.trojan ||
            _protocol == ProxyProtocol.shadowsocks ||
            _protocol == ProxyProtocol.http ||
            _protocol == ProxyProtocol.socks ||
            _inbound == InboundKind.vless ||
            _inbound == InboundKind.vmess ||
            _inbound == InboundKind.trojan ||
            _inbound == InboundKind.shadowsocks ||
            _inbound == InboundKind.hysteria) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _userEmailController,
            label: '用户 email',
            icon: Icons.email_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _userLevelController,
            label: '用户 level',
            icon: Icons.person_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
        ],
        if (_protocol == ProxyProtocol.vless ||
            _inbound == InboundKind.vless ||
            _protocol == ProxyProtocol.trojan ||
            _inbound == InboundKind.trojan) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _vlessFlowController,
            label: 'flow',
            icon: Icons.waterfall_chart_rounded,
            onChanged: _refresh,
          ),
        ],
        if (_protocol == ProxyProtocol.vless ||
            _inbound == InboundKind.vless) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _vlessEncryptionController,
            label: 'VLESS encryption/decryption',
            icon: Icons.enhanced_encryption_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _vlessSeedController,
            label: 'VLESS seed',
            icon: Icons.grass_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _vlessTestPreController,
            label: 'VLESS testpre',
            icon: Icons.science_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _vlessTestSeedController,
            label: 'VLESS testseed 逗号分隔',
            icon: Icons.science_rounded,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _vlessEnableReverse,
            title: 'VLESS reverse',
            icon: Icons.compare_arrows_rounded,
            onChanged: (value) => setState(() => _vlessEnableReverse = value),
          ),
          if (_vlessEnableReverse) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _vlessReverseTagController,
              label: 'VLESS reverse tag',
              icon: Icons.sell_rounded,
              onChanged: _refresh,
            ),
            _CheckRow(
              value: _vlessReverseUseSniffing,
              title: 'VLESS reverse sniffing',
              icon: Icons.manage_search_rounded,
              onChanged: (value) =>
                  setState(() => _vlessReverseUseSniffing = value),
            ),
          ],
          _CheckRow(
            value: _vlessEnableFallback,
            enabled: _inbound == InboundKind.vless,
            title: 'VLESS inbound fallback',
            icon: Icons.keyboard_return_rounded,
            onChanged: (value) => setState(() => _vlessEnableFallback = value),
          ),
          if (_vlessEnableFallback && _inbound == InboundKind.vless) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _vlessFallbackNameController,
              label: 'fallback name',
              icon: Icons.sell_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _vlessFallbackAlpnController,
              label: 'fallback alpn',
              icon: Icons.view_stream_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _vlessFallbackPathController,
              label: 'fallback path',
              icon: Icons.route_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _DropdownInput<XrayFallbackType>(
              value: _vlessFallbackType,
              label: 'fallback type',
              icon: Icons.category_rounded,
              values: XrayFallbackType.values,
              labelOf: (value) => value.label,
              onChanged: (value) => setState(() => _vlessFallbackType = value),
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _vlessFallbackDestController,
              label: 'fallback dest',
              icon: Icons.output_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _vlessFallbackXverController,
              label: 'fallback xver',
              icon: Icons.numbers_rounded,
              keyboardType: TextInputType.number,
              onChanged: _refresh,
            ),
          ],
        ],
        if (_inbound == InboundKind.trojan) ...[
          _CheckRow(
            value: _trojanEnableFallback,
            title: 'Trojan inbound fallback',
            icon: Icons.keyboard_return_rounded,
            onChanged: (value) => setState(() => _trojanEnableFallback = value),
          ),
          if (_trojanEnableFallback) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _vlessFallbackNameController,
              label: 'fallback name',
              icon: Icons.sell_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _vlessFallbackAlpnController,
              label: 'fallback alpn',
              icon: Icons.view_stream_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _vlessFallbackPathController,
              label: 'fallback path',
              icon: Icons.route_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _DropdownInput<XrayFallbackType>(
              value: _vlessFallbackType,
              label: 'fallback type',
              icon: Icons.category_rounded,
              values: XrayFallbackType.values,
              labelOf: (value) => value.label,
              onChanged: (value) => setState(() => _vlessFallbackType = value),
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _vlessFallbackDestController,
              label: 'fallback dest',
              icon: Icons.output_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _vlessFallbackXverController,
              label: 'fallback xver',
              icon: Icons.numbers_rounded,
              keyboardType: TextInputType.number,
              onChanged: _refresh,
            ),
          ],
        ],
        if (_protocol == ProxyProtocol.vmess ||
            _inbound == InboundKind.vmess) ...[
          const SizedBox(height: 12),
          _DropdownInput<VmessSecurity>(
            value: _vmessSecurity,
            label: 'VMess security',
            icon: Icons.enhanced_encryption_rounded,
            values: VmessSecurity.values,
            labelOf: (value) => value.label,
            onChanged: (value) => setState(() => _vmessSecurity = value),
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _vmessExperimentsController,
            label: 'VMess experiments',
            icon: Icons.science_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _vmessDefaultLevelController,
            label: 'VMess inbound default level',
            icon: Icons.person_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
        ],
        if (_protocol == ProxyProtocol.shadowsocks ||
            _inbound == InboundKind.shadowsocks) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _shadowsocksCipherController,
            label: 'Shadowsocks method',
            icon: Icons.enhanced_encryption_rounded,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _shadowsocksTcp,
            title: 'Shadowsocks inbound TCP',
            icon: Icons.settings_ethernet_rounded,
            onChanged: (value) => setState(() => _shadowsocksTcp = value),
          ),
          _CheckRow(
            value: _shadowsocksUdp,
            title: 'Shadowsocks inbound UDP',
            icon: Icons.sync_alt_rounded,
            onChanged: (value) => setState(() => _shadowsocksUdp = value),
          ),
        ],
        if (_protocol == ProxyProtocol.wireguard) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _wireguardSecretController,
            label: 'WireGuard secretKey',
            icon: Icons.vpn_key_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _wireguardPublicController,
            label: 'WireGuard peer publicKey',
            icon: Icons.key_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _wireguardEndpointController,
            label: 'WireGuard endpoint',
            icon: Icons.hub_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _wireguardAddressController,
            label: 'WireGuard address 逗号分隔',
            icon: Icons.my_location_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _wireguardAllowedIpsController,
            label: 'WireGuard allowedIPs 逗号分隔',
            icon: Icons.route_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _wireguardMtuController,
            label: 'WireGuard MTU',
            icon: Icons.numbers_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _wireguardNoKernelTun,
            title: 'WireGuard noKernelTun',
            icon: Icons.tune_rounded,
            onChanged: (value) => setState(() => _wireguardNoKernelTun = value),
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _wireguardReservedController,
            label: 'WireGuard reserved 逗号分隔',
            icon: Icons.format_list_numbered_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _wireguardPreSharedKeyController,
            label: 'WireGuard peer preSharedKey',
            icon: Icons.key_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _wireguardKeepAliveController,
            label: 'WireGuard peer keepAlive',
            icon: Icons.monitor_heart_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
        ],
        if (_protocol == ProxyProtocol.hysteria) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _hysteriaVersionController,
            label: 'Hysteria version',
            icon: Icons.numbers_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
        ],
        if (_protocol == ProxyProtocol.raw) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _rawOutboundProtocolController,
            label: 'Raw outbound protocol',
            icon: Icons.code_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _rawOutboundSettingsController,
            label: 'Raw outbound settings JSON',
            icon: Icons.data_object_rounded,
            maxLines: 6,
            onChanged: _refresh,
          ),
        ],
        const Divider(height: 28),
        _SectionLabel('传输'),
        DropdownButtonFormField<TransportKind>(
          key: ValueKey(_transport),
          initialValue: _transport,
          decoration: const InputDecoration(
            labelText: '传输方式',
            prefixIcon: Icon(Icons.security_rounded),
            border: OutlineInputBorder(),
          ),
          items: TransportKind.values.map((transport) {
            final enabled = _transportEnabled(transport);
            return DropdownMenuItem(
              value: transport,
              enabled: enabled,
              child: Text(enabled ? transport.label : '${transport.label} 不适用'),
            );
          }).toList(),
          onChanged: (value) {
            if (value != null && _transportEnabled(value)) {
              setState(() => _transport = value);
            }
          },
        ),
        const SizedBox(height: 12),
        DropdownButtonFormField<SecurityKind>(
          key: ValueKey(_security),
          initialValue: _security,
          decoration: const InputDecoration(
            labelText: '传输安全层',
            prefixIcon: Icon(Icons.shield_rounded),
            border: OutlineInputBorder(),
          ),
          items: SecurityKind.values.map((security) {
            final enabled = _securityEnabled(security);
            return DropdownMenuItem(
              value: security,
              enabled: enabled,
              child: Text(enabled ? security.label : '${security.label} 不适用'),
            );
          }).toList(),
          onChanged: (value) {
            if (value != null && _securityEnabled(value)) {
              setState(() => _security = value);
            }
          },
        ),
        if (_usesTlsTransport ||
            _effectiveSecurity == SecurityKind.reality) ...[
          const SizedBox(height: 12),
          _DropdownInput<TlsFingerprint>(
            value: _fingerprint,
            label: 'TLS/REALITY fingerprint',
            icon: Icons.fingerprint_rounded,
            values: TlsFingerprint.values,
            labelOf: (value) => value.label,
            onChanged: (value) => setState(() => _fingerprint = value),
          ),
        ],
        _CheckRow(
          value: _enableStreamEndpoint,
          title: 'streamSettings address/port',
          icon: Icons.hub_rounded,
          onChanged: (value) => setState(() => _enableStreamEndpoint = value),
        ),
        if (_enableStreamEndpoint) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _streamAddressController,
            label: 'streamSettings address',
            icon: Icons.dns_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _streamPortController,
            label: 'streamSettings port',
            icon: Icons.tag_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
        ],
        _CheckRow(
          value: _enableFinalMask,
          title: 'streamSettings finalmask',
          icon: Icons.layers_rounded,
          onChanged: (value) => setState(() => _enableFinalMask = value),
        ),
        if (_enableFinalMask) ...[
          _CheckRow(
            value: _enableFinalMaskParts,
            title: 'finalmask 分项配置',
            icon: Icons.account_tree_rounded,
            onChanged: (value) => setState(() => _enableFinalMaskParts = value),
          ),
          if (_enableFinalMaskParts) ...[
            _CheckRow(
              value: _enableFinalMaskTcp,
              title: 'finalmask tcp masks',
              icon: Icons.settings_ethernet_rounded,
              onChanged: (value) => setState(() => _enableFinalMaskTcp = value),
            ),
            if (_enableFinalMaskTcp) ...[
              _CheckRow(
                value: _enableFinalMaskTcpFields,
                title: 'tcp masks 字段配置',
                icon: Icons.tune_rounded,
                onChanged: (value) =>
                    setState(() => _enableFinalMaskTcpFields = value),
              ),
              if (_enableFinalMaskTcpFields)
                ..._buildFinalMaskMaskControls(
                  udp: false,
                  fragmentValue: _finalMaskTcpFragment,
                  noiseValue: _finalMaskTcpNoise,
                  dnsValue: _finalMaskTcpDns,
                  salamanderValue: _finalMaskTcpSalamander,
                  aesValue: _finalMaskTcpAes,
                  xdnsValue: _finalMaskTcpXdns,
                  xicmpValue: _finalMaskTcpXicmp,
                  headerCustomValue: _finalMaskTcpHeaderCustom,
                  sudokuValue: _finalMaskTcpSudoku,
                  originalValue: _finalMaskTcpOriginal,
                  dtlsValue: _finalMaskTcpDtls,
                  srtpValue: _finalMaskTcpSrtp,
                  utpValue: _finalMaskTcpUtp,
                  wechatValue: _finalMaskTcpWechat,
                  wireguardValue: _finalMaskTcpWireguard,
                  onFragmentChanged: (value) =>
                      setState(() => _finalMaskTcpFragment = value),
                  onNoiseChanged: (value) =>
                      setState(() => _finalMaskTcpNoise = value),
                  onDnsChanged: (value) =>
                      setState(() => _finalMaskTcpDns = value),
                  onSalamanderChanged: (value) =>
                      setState(() => _finalMaskTcpSalamander = value),
                  onAesChanged: (value) =>
                      setState(() => _finalMaskTcpAes = value),
                  onXdnsChanged: (value) =>
                      setState(() => _finalMaskTcpXdns = value),
                  onXicmpChanged: (value) =>
                      setState(() => _finalMaskTcpXicmp = value),
                  onHeaderCustomChanged: (value) =>
                      setState(() => _finalMaskTcpHeaderCustom = value),
                  onSudokuChanged: (value) =>
                      setState(() => _finalMaskTcpSudoku = value),
                  onOriginalChanged: (value) =>
                      setState(() => _finalMaskTcpOriginal = value),
                  onDtlsChanged: (value) =>
                      setState(() => _finalMaskTcpDtls = value),
                  onSrtpChanged: (value) =>
                      setState(() => _finalMaskTcpSrtp = value),
                  onUtpChanged: (value) =>
                      setState(() => _finalMaskTcpUtp = value),
                  onWechatChanged: (value) =>
                      setState(() => _finalMaskTcpWechat = value),
                  onWireguardChanged: (value) =>
                      setState(() => _finalMaskTcpWireguard = value),
                )
              else ...[
                const SizedBox(height: 12),
                _TextInput(
                  controller: _finalMaskTcpJsonController,
                  label: 'finalmask tcp masks JSON 数组',
                  icon: Icons.data_array_rounded,
                  maxLines: 5,
                  onChanged: _refresh,
                ),
              ],
            ],
            _CheckRow(
              value: _enableFinalMaskUdp,
              title: 'finalmask udp masks',
              icon: Icons.sync_alt_rounded,
              onChanged: (value) => setState(() => _enableFinalMaskUdp = value),
            ),
            if (_enableFinalMaskUdp) ...[
              _CheckRow(
                value: _enableFinalMaskUdpFields,
                title: 'udp masks 字段配置',
                icon: Icons.tune_rounded,
                onChanged: (value) =>
                    setState(() => _enableFinalMaskUdpFields = value),
              ),
              if (_enableFinalMaskUdpFields)
                ..._buildFinalMaskMaskControls(
                  udp: true,
                  fragmentValue: _finalMaskUdpFragment,
                  noiseValue: _finalMaskUdpNoise,
                  dnsValue: _finalMaskUdpDns,
                  salamanderValue: _finalMaskUdpSalamander,
                  aesValue: _finalMaskUdpAes,
                  xdnsValue: _finalMaskUdpXdns,
                  xicmpValue: _finalMaskUdpXicmp,
                  headerCustomValue: _finalMaskUdpHeaderCustom,
                  sudokuValue: _finalMaskUdpSudoku,
                  originalValue: _finalMaskUdpOriginal,
                  dtlsValue: _finalMaskUdpDtls,
                  srtpValue: _finalMaskUdpSrtp,
                  utpValue: _finalMaskUdpUtp,
                  wechatValue: _finalMaskUdpWechat,
                  wireguardValue: _finalMaskUdpWireguard,
                  onFragmentChanged: (value) =>
                      setState(() => _finalMaskUdpFragment = value),
                  onNoiseChanged: (value) =>
                      setState(() => _finalMaskUdpNoise = value),
                  onDnsChanged: (value) =>
                      setState(() => _finalMaskUdpDns = value),
                  onSalamanderChanged: (value) =>
                      setState(() => _finalMaskUdpSalamander = value),
                  onAesChanged: (value) =>
                      setState(() => _finalMaskUdpAes = value),
                  onXdnsChanged: (value) =>
                      setState(() => _finalMaskUdpXdns = value),
                  onXicmpChanged: (value) =>
                      setState(() => _finalMaskUdpXicmp = value),
                  onHeaderCustomChanged: (value) =>
                      setState(() => _finalMaskUdpHeaderCustom = value),
                  onSudokuChanged: (value) =>
                      setState(() => _finalMaskUdpSudoku = value),
                  onOriginalChanged: (value) =>
                      setState(() => _finalMaskUdpOriginal = value),
                  onDtlsChanged: (value) =>
                      setState(() => _finalMaskUdpDtls = value),
                  onSrtpChanged: (value) =>
                      setState(() => _finalMaskUdpSrtp = value),
                  onUtpChanged: (value) =>
                      setState(() => _finalMaskUdpUtp = value),
                  onWechatChanged: (value) =>
                      setState(() => _finalMaskUdpWechat = value),
                  onWireguardChanged: (value) =>
                      setState(() => _finalMaskUdpWireguard = value),
                )
              else ...[
                const SizedBox(height: 12),
                _TextInput(
                  controller: _finalMaskUdpJsonController,
                  label: 'finalmask udp masks JSON 数组',
                  icon: Icons.data_array_rounded,
                  maxLines: 5,
                  onChanged: _refresh,
                ),
              ],
            ],
            _CheckRow(
              value: _enableFinalMaskQuic,
              title: 'finalmask quicParams',
              icon: Icons.speed_rounded,
              onChanged: (value) =>
                  setState(() => _enableFinalMaskQuic = value),
            ),
            if (_enableFinalMaskQuic) ...[
              _CheckRow(
                value: _enableFinalMaskQuicFields,
                title: 'quicParams 字段配置',
                icon: Icons.tune_rounded,
                onChanged: (value) =>
                    setState(() => _enableFinalMaskQuicFields = value),
              ),
              if (_enableFinalMaskQuicFields) ...[
                const SizedBox(height: 12),
                _TextInput(
                  controller: _quicCongestionController,
                  label: 'quic congestion',
                  icon: Icons.traffic_rounded,
                  onChanged: _refresh,
                ),
                const SizedBox(height: 12),
                _TextInput(
                  controller: _quicBbrProfileController,
                  label: 'quic bbrProfile',
                  icon: Icons.speed_rounded,
                  onChanged: _refresh,
                ),
                const SizedBox(height: 12),
                _TextInput(
                  controller: _quicBrutalUpController,
                  label: 'quic brutalUp',
                  icon: Icons.upload_rounded,
                  onChanged: _refresh,
                ),
                const SizedBox(height: 12),
                _TextInput(
                  controller: _quicBrutalDownController,
                  label: 'quic brutalDown',
                  icon: Icons.download_rounded,
                  onChanged: _refresh,
                ),
                const SizedBox(height: 12),
                _TextInput(
                  controller: _quicUdpHopPortsController,
                  label: 'quic udpHop ports',
                  icon: Icons.tag_rounded,
                  onChanged: _refresh,
                ),
                const SizedBox(height: 12),
                _TextInput(
                  controller: _quicUdpHopIntervalController,
                  label: 'quic udpHop interval',
                  icon: Icons.timer_rounded,
                  onChanged: _refresh,
                ),
                _CheckRow(
                  value: _quicDebug,
                  title: 'quic debug',
                  icon: Icons.bug_report_rounded,
                  onChanged: (value) => setState(() => _quicDebug = value),
                ),
                _CheckRow(
                  value: _quicDisablePathMtuDiscovery,
                  title: 'quic disablePathMTUDiscovery',
                  icon: Icons.block_rounded,
                  onChanged: (value) =>
                      setState(() => _quicDisablePathMtuDiscovery = value),
                ),
                const SizedBox(height: 12),
                _TextInput(
                  controller: _quicInitStreamWindowController,
                  label: 'quic initStreamReceiveWindow',
                  icon: Icons.open_in_full_rounded,
                  keyboardType: TextInputType.number,
                  onChanged: _refresh,
                ),
                const SizedBox(height: 12),
                _TextInput(
                  controller: _quicMaxStreamWindowController,
                  label: 'quic maxStreamReceiveWindow',
                  icon: Icons.open_in_full_rounded,
                  keyboardType: TextInputType.number,
                  onChanged: _refresh,
                ),
                const SizedBox(height: 12),
                _TextInput(
                  controller: _quicInitConnectionWindowController,
                  label: 'quic initConnectionReceiveWindow',
                  icon: Icons.settings_ethernet_rounded,
                  keyboardType: TextInputType.number,
                  onChanged: _refresh,
                ),
                const SizedBox(height: 12),
                _TextInput(
                  controller: _quicMaxConnectionWindowController,
                  label: 'quic maxConnectionReceiveWindow',
                  icon: Icons.settings_ethernet_rounded,
                  keyboardType: TextInputType.number,
                  onChanged: _refresh,
                ),
                const SizedBox(height: 12),
                _TextInput(
                  controller: _quicMaxIdleTimeoutController,
                  label: 'quic maxIdleTimeout',
                  icon: Icons.hourglass_empty_rounded,
                  keyboardType: TextInputType.number,
                  onChanged: _refresh,
                ),
                const SizedBox(height: 12),
                _TextInput(
                  controller: _quicKeepAlivePeriodController,
                  label: 'quic keepAlivePeriod',
                  icon: Icons.monitor_heart_rounded,
                  keyboardType: TextInputType.number,
                  onChanged: _refresh,
                ),
                const SizedBox(height: 12),
                _TextInput(
                  controller: _quicMaxIncomingStreamsController,
                  label: 'quic maxIncomingStreams',
                  icon: Icons.stream_rounded,
                  keyboardType: TextInputType.number,
                  onChanged: _refresh,
                ),
              ] else ...[
                const SizedBox(height: 12),
                _TextInput(
                  controller: _finalMaskQuicJsonController,
                  label: 'finalmask quicParams JSON',
                  icon: Icons.data_object_rounded,
                  maxLines: 5,
                  onChanged: _refresh,
                ),
              ],
            ],
          ] else ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _finalMaskJsonController,
              label: 'finalmask JSON',
              icon: Icons.data_object_rounded,
              maxLines: 5,
              onChanged: _refresh,
            ),
          ],
        ],
        if (_usesWebSocketSettings) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _pathController,
            label: 'WebSocket path',
            icon: Icons.route_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _wsHostController,
            label: 'WebSocket Host',
            icon: Icons.language_rounded,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _enableTransportHeaders,
            title: 'WebSocket headers JSON',
            icon: Icons.data_object_rounded,
            onChanged: (value) =>
                setState(() => _enableTransportHeaders = value),
          ),
          if (_enableTransportHeaders) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _transportHeadersController,
              label: 'WebSocket headers JSON',
              icon: Icons.data_object_rounded,
              maxLines: 4,
              onChanged: _refresh,
            ),
          ],
          const SizedBox(height: 12),
          _TextInput(
            controller: _wsHeartbeatController,
            label: 'WebSocket heartbeat 秒',
            icon: Icons.monitor_heart_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _wsAcceptProxyProtocol,
            title: 'WS acceptProxyProtocol',
            icon: Icons.private_connectivity_rounded,
            onChanged: (value) =>
                setState(() => _wsAcceptProxyProtocol = value),
          ),
        ],
        if (_usesHttpUpgradeSettings) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _httpUpgradePathController,
            label: 'HTTPUpgrade path',
            icon: Icons.upgrade_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _wsHostController,
            label: 'HTTPUpgrade host',
            icon: Icons.language_rounded,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _enableTransportHeaders,
            title: 'HTTPUpgrade headers JSON',
            icon: Icons.data_object_rounded,
            onChanged: (value) =>
                setState(() => _enableTransportHeaders = value),
          ),
          if (_enableTransportHeaders) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _transportHeadersController,
              label: 'HTTPUpgrade headers JSON',
              icon: Icons.data_object_rounded,
              maxLines: 4,
              onChanged: _refresh,
            ),
          ],
          _CheckRow(
            value: _wsAcceptProxyProtocol,
            title: 'HTTPUpgrade acceptProxyProtocol',
            icon: Icons.private_connectivity_rounded,
            onChanged: (value) =>
                setState(() => _wsAcceptProxyProtocol = value),
          ),
        ],
        if (_usesSplitHttpSettings) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _splitHttpPathController,
            label: 'SplitHTTP/XHTTP path',
            icon: Icons.call_split_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _DropdownInput<SplitHTTPMode>(
            value: _splitHttpMode,
            label: 'SplitHTTP/XHTTP mode',
            icon: Icons.view_stream_rounded,
            values: SplitHTTPMode.values,
            labelOf: (value) => value.label,
            onChanged: (value) => setState(() => _splitHttpMode = value),
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _wsHostController,
            label: 'SplitHTTP/XHTTP Host',
            icon: Icons.language_rounded,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _enableTransportHeaders,
            title: 'SplitHTTP/XHTTP headers JSON',
            icon: Icons.data_object_rounded,
            onChanged: (value) =>
                setState(() => _enableTransportHeaders = value),
          ),
          if (_enableTransportHeaders) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _transportHeadersController,
              label: 'SplitHTTP/XHTTP headers JSON',
              icon: Icons.data_object_rounded,
              maxLines: 4,
              onChanged: _refresh,
            ),
          ],
          const SizedBox(height: 12),
          _TextInput(
            controller: _splitHttpUplinkMethodController,
            label: 'SplitHTTP/XHTTP uplinkHTTPMethod',
            icon: Icons.upload_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _splitHttpXPaddingBytesController,
            label: 'SplitHTTP/XHTTP xPaddingBytes',
            icon: Icons.straighten_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _splitHttpXPaddingKeyController,
            label: 'SplitHTTP/XHTTP xPaddingKey',
            icon: Icons.key_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _splitHttpXPaddingHeaderController,
            label: 'SplitHTTP/XHTTP xPaddingHeader',
            icon: Icons.title_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _DropdownInput<SplitHTTPPlacement>(
            value: _splitHttpXPaddingPlacement,
            label: 'SplitHTTP/XHTTP xPaddingPlacement',
            icon: Icons.place_rounded,
            values: SplitHTTPPlacement.values,
            labelOf: (value) => value.label,
            onChanged: (value) =>
                setState(() => _splitHttpXPaddingPlacement = value),
          ),
          const SizedBox(height: 12),
          _DropdownInput<SplitHTTPPaddingMethod>(
            value: _splitHttpXPaddingMethod,
            label: 'SplitHTTP/XHTTP xPaddingMethod',
            icon: Icons.format_align_left_rounded,
            values: SplitHTTPPaddingMethod.values,
            labelOf: (value) => value.label,
            onChanged: (value) =>
                setState(() => _splitHttpXPaddingMethod = value),
          ),
          _CheckRow(
            value: _splitHttpXPaddingObfsMode,
            title: 'SplitHTTP/XHTTP xPaddingObfsMode',
            icon: Icons.blur_on_rounded,
            onChanged: (value) =>
                setState(() => _splitHttpXPaddingObfsMode = value),
          ),
          const SizedBox(height: 12),
          _DropdownInput<SplitHTTPPlacement>(
            value: _splitHttpSessionIDPlacement,
            label: 'SplitHTTP/XHTTP sessionIDPlacement',
            icon: Icons.place_rounded,
            values: SplitHTTPPlacement.values,
            labelOf: (value) => value.label,
            onChanged: (value) =>
                setState(() => _splitHttpSessionIDPlacement = value),
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _splitHttpSessionIDKeyController,
            label: 'SplitHTTP/XHTTP sessionIDKey',
            icon: Icons.key_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _splitHttpSessionIDTableController,
            label: 'SplitHTTP/XHTTP sessionIDTable',
            icon: Icons.table_chart_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _splitHttpSessionIDLengthController,
            label: 'SplitHTTP/XHTTP sessionIDLength',
            icon: Icons.straighten_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _DropdownInput<SplitHTTPPlacement>(
            value: _splitHttpSeqPlacement,
            label: 'SplitHTTP/XHTTP seqPlacement',
            icon: Icons.place_rounded,
            values: SplitHTTPPlacement.values,
            labelOf: (value) => value.label,
            onChanged: (value) =>
                setState(() => _splitHttpSeqPlacement = value),
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _splitHttpSeqKeyController,
            label: 'SplitHTTP/XHTTP seqKey',
            icon: Icons.key_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _DropdownInput<SplitHTTPPlacement>(
            value: _splitHttpUplinkDataPlacement,
            label: 'SplitHTTP/XHTTP uplinkDataPlacement',
            icon: Icons.place_rounded,
            values: SplitHTTPPlacement.values,
            labelOf: (value) => value.label,
            onChanged: (value) =>
                setState(() => _splitHttpUplinkDataPlacement = value),
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _splitHttpUplinkDataKeyController,
            label: 'SplitHTTP/XHTTP uplinkDataKey',
            icon: Icons.key_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _splitHttpUplinkChunkSizeController,
            label: 'SplitHTTP/XHTTP uplinkChunkSize',
            icon: Icons.upload_rounded,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _splitHttpNoGrpcHeader,
            title: 'SplitHTTP/XHTTP noGRPCHeader',
            icon: Icons.hide_source_rounded,
            onChanged: (value) =>
                setState(() => _splitHttpNoGrpcHeader = value),
          ),
          _CheckRow(
            value: _splitHttpNoSseHeader,
            title: 'SplitHTTP/XHTTP noSSEHeader',
            icon: Icons.hide_source_rounded,
            onChanged: (value) => setState(() => _splitHttpNoSseHeader = value),
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _splitHttpScMaxEachPostBytesController,
            label: 'SplitHTTP/XHTTP scMaxEachPostBytes',
            icon: Icons.data_usage_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _splitHttpScMinPostsIntervalMsController,
            label: 'SplitHTTP/XHTTP scMinPostsIntervalMs',
            icon: Icons.timer_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _splitHttpScMaxBufferedPostsController,
            label: 'SplitHTTP/XHTTP scMaxBufferedPosts',
            icon: Icons.storage_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _splitHttpScStreamUpServerSecsController,
            label: 'SplitHTTP/XHTTP scStreamUpServerSecs',
            icon: Icons.timer_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _splitHttpServerMaxHeaderBytesController,
            label: 'SplitHTTP/XHTTP serverMaxHeaderBytes',
            icon: Icons.data_usage_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _splitHttpEnableXmux,
            title: 'SplitHTTP/XHTTP xmux',
            icon: Icons.call_split_rounded,
            onChanged: (value) => setState(() => _splitHttpEnableXmux = value),
          ),
          if (_splitHttpEnableXmux) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _splitHttpXmuxMaxConcurrencyController,
              label: 'xmux maxConcurrency',
              icon: Icons.numbers_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _splitHttpXmuxMaxConnectionsController,
              label: 'xmux maxConnections',
              icon: Icons.hub_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _splitHttpXmuxCMaxReuseTimesController,
              label: 'xmux cMaxReuseTimes',
              icon: Icons.replay_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _splitHttpXmuxHMaxRequestTimesController,
              label: 'xmux hMaxRequestTimes',
              icon: Icons.repeat_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _splitHttpXmuxHMaxReusableSecsController,
              label: 'xmux hMaxReusableSecs',
              icon: Icons.timer_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _splitHttpXmuxHKeepAlivePeriodController,
              label: 'xmux hKeepAlivePeriod',
              icon: Icons.monitor_heart_rounded,
              keyboardType: TextInputType.number,
              onChanged: _refresh,
            ),
          ],
          _CheckRow(
            value: _splitHttpEnableDownloadSettings,
            title: 'SplitHTTP/XHTTP downloadSettings',
            icon: Icons.download_rounded,
            onChanged: (value) =>
                setState(() => _splitHttpEnableDownloadSettings = value),
          ),
          if (_splitHttpEnableDownloadSettings) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _splitHttpDownloadSettingsController,
              label: 'downloadSettings StreamConfig JSON',
              icon: Icons.data_object_rounded,
              maxLines: 4,
              onChanged: _refresh,
            ),
          ],
          const SizedBox(height: 12),
          _TextInput(
            controller: _splitHttpExtraController,
            label: 'SplitHTTP/XHTTP extra JSON',
            icon: Icons.data_object_rounded,
            maxLines: 4,
            onChanged: _refresh,
          ),
        ],
        if (_usesTcpSettings) ...[
          _CheckRow(
            value: _tcpHeaderHttp,
            title: 'TCP header http',
            icon: Icons.http_rounded,
            onChanged: (value) => setState(() => _tcpHeaderHttp = value),
          ),
          if (_tcpHeaderHttp) ...[
            _CheckRow(
              value: _tcpHeaderHttpFields,
              title: 'TCP header http 字段配置',
              icon: Icons.tune_rounded,
              onChanged: (value) =>
                  setState(() => _tcpHeaderHttpFields = value),
            ),
            if (_tcpHeaderHttpFields) ...[
              const SizedBox(height: 12),
              _TextInput(
                controller: _tcpHeaderRequestVersionController,
                label: 'TCP header request version',
                icon: Icons.http_rounded,
                onChanged: _refresh,
              ),
              const SizedBox(height: 12),
              _TextInput(
                controller: _tcpHeaderRequestMethodController,
                label: 'TCP header request method',
                icon: Icons.upload_rounded,
                onChanged: _refresh,
              ),
              const SizedBox(height: 12),
              _TextInput(
                controller: _tcpHeaderRequestPathController,
                label: 'TCP header request path 逗号分隔',
                icon: Icons.route_rounded,
                onChanged: _refresh,
              ),
              const SizedBox(height: 12),
              _TextInput(
                controller: _tcpHeaderRequestHeadersController,
                label: 'TCP header request headers JSON',
                icon: Icons.data_object_rounded,
                maxLines: 4,
                onChanged: _refresh,
              ),
              const SizedBox(height: 12),
              _TextInput(
                controller: _tcpHeaderResponseVersionController,
                label: 'TCP header response version',
                icon: Icons.http_rounded,
                onChanged: _refresh,
              ),
              const SizedBox(height: 12),
              _TextInput(
                controller: _tcpHeaderResponseStatusController,
                label: 'TCP header response status',
                icon: Icons.numbers_rounded,
                onChanged: _refresh,
              ),
              const SizedBox(height: 12),
              _TextInput(
                controller: _tcpHeaderResponseReasonController,
                label: 'TCP header response reason',
                icon: Icons.short_text_rounded,
                onChanged: _refresh,
              ),
              const SizedBox(height: 12),
              _TextInput(
                controller: _tcpHeaderResponseHeadersController,
                label: 'TCP header response headers JSON',
                icon: Icons.data_object_rounded,
                maxLines: 4,
                onChanged: _refresh,
              ),
            ],
          ],
          _CheckRow(
            value: _tcpHeaderJson,
            title: 'TCP header JSON',
            icon: Icons.data_object_rounded,
            onChanged: (value) => setState(() => _tcpHeaderJson = value),
          ),
          if (_tcpHeaderJson) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _tcpHeaderJsonController,
              label: 'TCP header JSON',
              icon: Icons.data_object_rounded,
              maxLines: 5,
              onChanged: _refresh,
            ),
          ],
          _CheckRow(
            value: _tcpAcceptProxyProtocol,
            title: 'TCP acceptProxyProtocol',
            icon: Icons.private_connectivity_rounded,
            onChanged: (value) =>
                setState(() => _tcpAcceptProxyProtocol = value),
          ),
        ],
        if (_usesKcpSettings) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _kcpMtuController,
            label: 'KCP/mKCP MTU',
            icon: Icons.numbers_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _kcpTtiController,
            label: 'KCP/mKCP TTI',
            icon: Icons.timer_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _kcpUplinkController,
            label: 'KCP/mKCP uplinkCapacity',
            icon: Icons.upload_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _kcpDownlinkController,
            label: 'KCP/mKCP downlinkCapacity',
            icon: Icons.download_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _kcpCwndMultiplierController,
            label: 'KCP/mKCP cwndMultiplier',
            icon: Icons.speed_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _kcpMaxSendingWindowController,
            label: 'KCP/mKCP maxSendingWindow',
            icon: Icons.open_in_full_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _kcpSeedController,
            label: 'KCP/mKCP seed',
            icon: Icons.grass_rounded,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _kcpHeaderWechatVideo,
            title: 'KCP/mKCP header wechat-video',
            icon: Icons.video_settings_rounded,
            onChanged: (value) => setState(() => _kcpHeaderWechatVideo = value),
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _kcpHeaderJsonController,
            label: 'KCP/mKCP header JSON',
            icon: Icons.data_object_rounded,
            maxLines: 3,
            onChanged: _refresh,
          ),
        ],
        if (_usesGrpcSettings) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _serviceController,
            label: 'gRPC serviceName',
            icon: Icons.route_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _grpcAuthorityController,
            label: 'gRPC authority',
            icon: Icons.badge_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _grpcUserAgentController,
            label: 'gRPC user_agent',
            icon: Icons.smart_toy_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _grpcIdleTimeoutController,
            label: 'gRPC idle_timeout',
            icon: Icons.timer_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _grpcHealthCheckTimeoutController,
            label: 'gRPC health_check_timeout',
            icon: Icons.health_and_safety_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _grpcInitialWindowSizeController,
            label: 'gRPC initial_windows_size',
            icon: Icons.open_in_full_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _grpcMultiMode,
            title: 'gRPC multiMode',
            icon: Icons.call_split_rounded,
            onChanged: (value) => setState(() => _grpcMultiMode = value),
          ),
          _CheckRow(
            value: _grpcPermitWithoutStream,
            title: 'gRPC permit_without_stream',
            icon: Icons.stream_rounded,
            onChanged: (value) =>
                setState(() => _grpcPermitWithoutStream = value),
          ),
        ],
        if (_usesHysteriaTransportSettings) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _hysteriaVersionController,
            label: 'Hysteria transport version',
            icon: Icons.numbers_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _passwordController,
            label: 'Hysteria transport auth',
            icon: Icons.password_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _hysteriaCongestionController,
            label: 'Hysteria congestion',
            icon: Icons.traffic_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _hysteriaUpController,
            label: 'Hysteria up bandwidth',
            icon: Icons.upload_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _hysteriaDownController,
            label: 'Hysteria down bandwidth',
            icon: Icons.download_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _hysteriaUdpIdleTimeoutController,
            label: 'Hysteria udpIdleTimeout',
            icon: Icons.timer_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _hysteriaEnableUdpHop,
            title: 'Hysteria udphop',
            icon: Icons.sync_alt_rounded,
            onChanged: (value) => setState(() => _hysteriaEnableUdpHop = value),
          ),
          if (_hysteriaEnableUdpHop) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _hysteriaUdpHopPortsController,
              label: 'udphop ports',
              icon: Icons.tag_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _hysteriaUdpHopIntervalController,
              label: 'udphop interval',
              icon: Icons.timer_rounded,
              onChanged: _refresh,
            ),
          ],
          _CheckRow(
            value: _hysteriaEnableMasquerade,
            title: 'Hysteria masquerade',
            icon: Icons.theater_comedy_rounded,
            onChanged: (value) =>
                setState(() => _hysteriaEnableMasquerade = value),
          ),
          if (_hysteriaEnableMasquerade) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _hysteriaMasqueradeTypeController,
              label: 'masquerade type',
              icon: Icons.category_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _hysteriaMasqueradeDirController,
              label: 'masquerade dir',
              icon: Icons.folder_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _hysteriaMasqueradeUrlController,
              label: 'masquerade url',
              icon: Icons.link_rounded,
              onChanged: _refresh,
            ),
            _CheckRow(
              value: _hysteriaMasqueradeRewriteHost,
              title: 'masquerade rewriteHost',
              icon: Icons.edit_rounded,
              onChanged: (value) =>
                  setState(() => _hysteriaMasqueradeRewriteHost = value),
            ),
            _CheckRow(
              value: _hysteriaMasqueradeInsecure,
              title: 'masquerade insecure',
              icon: Icons.warning_rounded,
              onChanged: (value) =>
                  setState(() => _hysteriaMasqueradeInsecure = value),
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _hysteriaMasqueradeContentController,
              label: 'masquerade content',
              icon: Icons.article_rounded,
              maxLines: 3,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _hysteriaMasqueradeHeadersController,
              label: 'masquerade headers JSON',
              icon: Icons.data_object_rounded,
              maxLines: 3,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _hysteriaMasqueradeStatusController,
              label: 'masquerade statusCode',
              icon: Icons.numbers_rounded,
              keyboardType: TextInputType.number,
              onChanged: _refresh,
            ),
          ],
        ],
        if (_effectiveSecurity == SecurityKind.reality) ...[
          _CheckRow(
            value: _realityServerMode,
            title: 'REALITY server fields',
            icon: Icons.dns_rounded,
            onChanged: (value) => setState(() => _realityServerMode = value),
          ),
          _CheckRow(
            value: _realityShow,
            title: 'REALITY show',
            icon: Icons.visibility_rounded,
            onChanged: (value) => setState(() => _realityShow = value),
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _realityMasterKeyLogController,
            label: 'REALITY masterKeyLog',
            icon: Icons.key_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          if (_realityServerMode) ...[
            _TextInput(
              controller: _realityTargetController,
              label: 'REALITY target',
              icon: Icons.adjust_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _realityDestController,
              label: 'REALITY dest',
              icon: Icons.output_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _realityTypeController,
              label: 'REALITY type',
              icon: Icons.category_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _realityXverController,
              label: 'REALITY xver',
              icon: Icons.numbers_rounded,
              keyboardType: TextInputType.number,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _realityServerNamesController,
              label: 'REALITY serverNames 逗号分隔',
              icon: Icons.language_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _realityPrivateKeyController,
              label: 'REALITY privateKey',
              icon: Icons.vpn_key_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _realityShortIdsController,
              label: 'REALITY shortIds 逗号分隔',
              icon: Icons.short_text_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _realityMinClientVerController,
              label: 'REALITY minClientVer',
              icon: Icons.vertical_align_bottom_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _realityMaxClientVerController,
              label: 'REALITY maxClientVer',
              icon: Icons.vertical_align_top_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _realityMaxTimeDiffController,
              label: 'REALITY maxTimeDiff',
              icon: Icons.timer_rounded,
              keyboardType: TextInputType.number,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _realityMldsa65SeedController,
              label: 'REALITY mldsa65Seed',
              icon: Icons.grass_rounded,
              onChanged: _refresh,
            ),
            _CheckRow(
              value: _realityLimitUpload,
              title: 'REALITY limitFallbackUpload',
              icon: Icons.upload_rounded,
              onChanged: (value) => setState(() => _realityLimitUpload = value),
            ),
            if (_realityLimitUpload) ...[
              const SizedBox(height: 12),
              _TextInput(
                controller: _realityUploadAfterBytesController,
                label: 'upload afterBytes',
                icon: Icons.data_usage_rounded,
                keyboardType: TextInputType.number,
                onChanged: _refresh,
              ),
              const SizedBox(height: 12),
              _TextInput(
                controller: _realityUploadBytesPerSecController,
                label: 'upload bytesPerSec',
                icon: Icons.speed_rounded,
                keyboardType: TextInputType.number,
                onChanged: _refresh,
              ),
              const SizedBox(height: 12),
              _TextInput(
                controller: _realityUploadBurstController,
                label: 'upload burstBytesPerSec',
                icon: Icons.bolt_rounded,
                keyboardType: TextInputType.number,
                onChanged: _refresh,
              ),
            ],
            _CheckRow(
              value: _realityLimitDownload,
              title: 'REALITY limitFallbackDownload',
              icon: Icons.download_rounded,
              onChanged: (value) =>
                  setState(() => _realityLimitDownload = value),
            ),
            if (_realityLimitDownload) ...[
              const SizedBox(height: 12),
              _TextInput(
                controller: _realityDownloadAfterBytesController,
                label: 'download afterBytes',
                icon: Icons.data_usage_rounded,
                keyboardType: TextInputType.number,
                onChanged: _refresh,
              ),
              const SizedBox(height: 12),
              _TextInput(
                controller: _realityDownloadBytesPerSecController,
                label: 'download bytesPerSec',
                icon: Icons.speed_rounded,
                keyboardType: TextInputType.number,
                onChanged: _refresh,
              ),
              const SizedBox(height: 12),
              _TextInput(
                controller: _realityDownloadBurstController,
                label: 'download burstBytesPerSec',
                icon: Icons.bolt_rounded,
                keyboardType: TextInputType.number,
                onChanged: _refresh,
              ),
            ],
          ] else ...[
            _TextInput(
              controller: _publicKeyController,
              label: 'REALITY publicKey',
              icon: Icons.vpn_key_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _shortIdController,
              label: 'REALITY shortId',
              icon: Icons.short_text_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _realityPasswordController,
              label: 'REALITY password',
              icon: Icons.password_rounded,
              onChanged: _refresh,
            ),
            _CheckRow(
              value: _realitySpiderX,
              title: 'REALITY spiderX',
              icon: Icons.travel_explore_rounded,
              onChanged: (value) => setState(() => _realitySpiderX = value),
            ),
            if (_realitySpiderX) ...[
              const SizedBox(height: 12),
              _TextInput(
                controller: _realitySpiderXController,
                label: 'REALITY spiderX 路径',
                icon: Icons.route_rounded,
                onChanged: _refresh,
              ),
            ],
            const SizedBox(height: 12),
            _TextInput(
              controller: _realityMldsa65VerifyController,
              label: 'REALITY mldsa65Verify',
              icon: Icons.verified_rounded,
              onChanged: _refresh,
            ),
          ],
        ],
        if (_usesTlsTransport) ...[
          _CheckRow(
            value: _tlsAllowInsecure,
            title: 'TLS allowInsecure',
            icon: Icons.warning_rounded,
            onChanged: (value) => setState(() => _tlsAllowInsecure = value),
          ),
          _CheckRow(
            value: _tlsServerNameOverride,
            title: 'TLS serverName 自定义',
            icon: Icons.badge_rounded,
            onChanged: (value) =>
                setState(() => _tlsServerNameOverride = value),
          ),
          if (_tlsServerNameOverride) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _tlsServerNameController,
              label: 'TLS serverName',
              icon: Icons.badge_rounded,
              onChanged: _refresh,
            ),
          ],
          _CheckRow(
            value: _tlsAlpnH2,
            title: 'TLS ALPN h2',
            icon: Icons.view_stream_rounded,
            onChanged: (value) => setState(() => _tlsAlpnH2 = value),
          ),
          _CheckRow(
            value: _tlsAlpnHttp11,
            title: 'TLS ALPN http/1.1',
            icon: Icons.http_rounded,
            onChanged: (value) => setState(() => _tlsAlpnHttp11 = value),
          ),
          _CheckRow(
            value: _tlsAlpnCustom,
            title: 'TLS ALPN 自定义列表',
            icon: Icons.list_rounded,
            onChanged: (value) => setState(() => _tlsAlpnCustom = value),
          ),
          if (_tlsAlpnCustom) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _tlsAlpnCustomController,
              label: 'TLS ALPN 逗号分隔',
              icon: Icons.list_rounded,
              onChanged: _refresh,
            ),
          ],
          _CheckRow(
            value: _tlsSessionResumption,
            title: 'TLS session resumption',
            icon: Icons.replay_rounded,
            onChanged: (value) => setState(() => _tlsSessionResumption = value),
          ),
          _CheckRow(
            value: _tlsDisableSystemRoot,
            title: 'TLS disableSystemRoot',
            icon: Icons.folder_off_rounded,
            onChanged: (value) => setState(() => _tlsDisableSystemRoot = value),
          ),
          _CheckRow(
            value: _tlsRejectUnknownSni,
            title: 'TLS rejectUnknownSni',
            icon: Icons.gpp_bad_rounded,
            onChanged: (value) => setState(() => _tlsRejectUnknownSni = value),
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _tlsMinVersionController,
            label: 'TLS minVersion',
            icon: Icons.vertical_align_bottom_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _tlsMaxVersionController,
            label: 'TLS maxVersion',
            icon: Icons.vertical_align_top_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _tlsCipherSuitesController,
            label: 'TLS cipherSuites',
            icon: Icons.enhanced_encryption_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _tlsCurvePreferencesController,
            label: 'TLS curvePreferences 逗号分隔',
            icon: Icons.timeline_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _tlsMasterKeyLogController,
            label: 'TLS masterKeyLog',
            icon: Icons.key_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _tlsPinnedPeerCertController,
            label: 'TLS pinnedPeerCertSha256',
            icon: Icons.push_pin_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _tlsVerifyPeerCertByNameController,
            label: 'TLS verifyPeerCertByName',
            icon: Icons.badge_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _tlsEchServerKeysController,
            label: 'TLS echServerKeys',
            icon: Icons.vpn_key_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _tlsEchConfigListController,
            label: 'TLS echConfigList',
            icon: Icons.list_alt_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _tlsEchSockoptController,
            label: 'TLS echSockopt JSON',
            icon: Icons.settings_ethernet_rounded,
            maxLines: 4,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _tlsEnableCert,
            title: 'TLS certificates',
            icon: Icons.badge_rounded,
            onChanged: (value) => setState(() => _tlsEnableCert = value),
          ),
          if (_tlsEnableCert) ...[
            _CheckRow(
              value: _tlsCertsJson,
              title: 'TLS certificates JSON 数组',
              icon: Icons.data_array_rounded,
              onChanged: (value) => setState(() => _tlsCertsJson = value),
            ),
            if (_tlsCertsJson) ...[
              const SizedBox(height: 12),
              _TextInput(
                controller: _tlsCertsJsonController,
                label: 'TLS certificates JSON 数组',
                icon: Icons.data_array_rounded,
                maxLines: 6,
                onChanged: _refresh,
              ),
            ],
            const SizedBox(height: 12),
            _TextInput(
              controller: _tlsCertFileController,
              label: 'certificateFile',
              icon: Icons.insert_drive_file_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _tlsCertLinesController,
              label: 'certificate 行文本',
              icon: Icons.article_rounded,
              maxLines: 4,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _tlsKeyFileController,
              label: 'keyFile',
              icon: Icons.key_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _tlsKeyLinesController,
              label: 'key 行文本',
              icon: Icons.vpn_key_rounded,
              maxLines: 4,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _DropdownInput<TLSCertificateUsage>(
              value: _tlsCertUsage,
              label: 'certificate usage',
              icon: Icons.verified_user_rounded,
              values: TLSCertificateUsage.values,
              labelOf: (value) => value.label,
              onChanged: (value) => setState(() => _tlsCertUsage = value),
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _tlsOcspStaplingController,
              label: 'ocspStapling',
              icon: Icons.fact_check_rounded,
              keyboardType: TextInputType.number,
              onChanged: _refresh,
            ),
            _CheckRow(
              value: _tlsCertOneTimeLoading,
              title: 'certificate oneTimeLoading',
              icon: Icons.download_done_rounded,
              onChanged: (value) =>
                  setState(() => _tlsCertOneTimeLoading = value),
            ),
            _CheckRow(
              value: _tlsCertBuildChain,
              title: 'certificate buildChain',
              icon: Icons.account_tree_rounded,
              onChanged: (value) => setState(() => _tlsCertBuildChain = value),
            ),
          ],
        ],
        _CheckRow(
          value: _enableSockopt,
          title: '添加 sockopt',
          icon: Icons.settings_ethernet_rounded,
          onChanged: (value) => setState(() => _enableSockopt = value),
        ),
        if (_enableSockopt) ...[
          _CheckRow(
            value: _sockoptTcpFastOpen,
            title: 'sockopt tcpFastOpen',
            icon: Icons.bolt_rounded,
            onChanged: (value) => setState(() => _sockoptTcpFastOpen = value),
          ),
          _CheckRow(
            value: _sockoptTcpFastOpenCustom,
            title: 'sockopt tcpFastOpen 自定义值',
            icon: Icons.tune_rounded,
            onChanged: (value) =>
                setState(() => _sockoptTcpFastOpenCustom = value),
          ),
          if (_sockoptTcpFastOpenCustom) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _sockoptTcpFastOpenValueController,
              label: 'sockopt tcpFastOpen JSON/值',
              icon: Icons.code_rounded,
              onChanged: _refresh,
            ),
          ],
          _CheckRow(
            value: _sockoptMptcp,
            title: 'sockopt tcpMptcp',
            icon: Icons.merge_rounded,
            onChanged: (value) => setState(() => _sockoptMptcp = value),
          ),
          _CheckRow(
            value: _sockoptAcceptProxyProtocol,
            title: 'sockopt acceptProxyProtocol',
            icon: Icons.private_connectivity_rounded,
            onChanged: (value) =>
                setState(() => _sockoptAcceptProxyProtocol = value),
          ),
          _CheckRow(
            value: _sockoptV6Only,
            title: 'sockopt v6only',
            icon: Icons.looks_6_rounded,
            onChanged: (value) => setState(() => _sockoptV6Only = value),
          ),
          _CheckRow(
            value: _sockoptPenetrate,
            title: 'sockopt penetrate',
            icon: Icons.keyboard_double_arrow_right_rounded,
            onChanged: (value) => setState(() => _sockoptPenetrate = value),
          ),
          const SizedBox(height: 12),
          _DropdownInput<TProxyMode>(
            value: _sockoptTproxy,
            label: 'sockopt tproxy',
            icon: Icons.call_merge_rounded,
            values: TProxyMode.values,
            labelOf: (value) => value.label,
            onChanged: (value) => setState(() => _sockoptTproxy = value),
          ),
          const SizedBox(height: 12),
          _DropdownInput<AddressPortStrategy>(
            value: _sockoptAddressPortStrategy,
            label: 'sockopt addressPortStrategy',
            icon: Icons.merge_rounded,
            values: AddressPortStrategy.values,
            labelOf: (value) => value.label,
            onChanged: (value) =>
                setState(() => _sockoptAddressPortStrategy = value),
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _sockoptMarkController,
            label: 'sockopt mark',
            icon: Icons.bookmark_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _sockoptInterfaceController,
            label: 'sockopt interface',
            icon: Icons.cable_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _sockoptDialerProxyController,
            label: 'sockopt dialerProxy',
            icon: Icons.swap_calls_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _sockoptKeepAliveIntervalController,
            label: 'sockopt keepAliveInterval',
            icon: Icons.timer_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _sockoptKeepAliveIdleController,
            label: 'sockopt keepAliveIdle',
            icon: Icons.hourglass_empty_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _sockoptTcpCongestionController,
            label: 'sockopt tcpCongestion',
            icon: Icons.traffic_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _sockoptTcpWindowClampController,
            label: 'sockopt tcpWindowClamp',
            icon: Icons.open_in_full_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _sockoptTcpMaxSegController,
            label: 'sockopt tcpMaxSeg',
            icon: Icons.straighten_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _sockoptTcpUserTimeoutController,
            label: 'sockopt tcpUserTimeout',
            icon: Icons.timer_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _sockoptTrustedXffController,
            label: 'sockopt trustedXForwardedFor 逗号分隔',
            icon: Icons.verified_user_rounded,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _sockoptEnableCustomSockopt,
            title: 'sockopt customSockopt',
            icon: Icons.tune_rounded,
            onChanged: (value) =>
                setState(() => _sockoptEnableCustomSockopt = value),
          ),
          if (_sockoptEnableCustomSockopt) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _sockoptCustomSockoptController,
              label: 'customSockopt JSON 数组',
              icon: Icons.data_array_rounded,
              maxLines: 4,
              onChanged: _refresh,
            ),
          ],
          _CheckRow(
            value: _sockoptEnableHappyEyeballs,
            title: 'sockopt happyEyeballs',
            icon: Icons.hub_rounded,
            onChanged: (value) =>
                setState(() => _sockoptEnableHappyEyeballs = value),
          ),
          if (_sockoptEnableHappyEyeballs) ...[
            _CheckRow(
              value: _happyEyeballsPrioritizeIpv6,
              title: 'happyEyeballs prioritizeIPv6',
              icon: Icons.looks_6_rounded,
              onChanged: (value) =>
                  setState(() => _happyEyeballsPrioritizeIpv6 = value),
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _happyEyeballsTryDelayController,
              label: 'happyEyeballs tryDelayMs',
              icon: Icons.timer_rounded,
              keyboardType: TextInputType.number,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _happyEyeballsInterleaveController,
              label: 'happyEyeballs interleave',
              icon: Icons.merge_rounded,
              keyboardType: TextInputType.number,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _happyEyeballsMaxConcurrentController,
              label: 'happyEyeballs maxConcurrentTry',
              icon: Icons.groups_rounded,
              keyboardType: TextInputType.number,
              onChanged: _refresh,
            ),
          ],
        ],
        const Divider(height: 28),
        _SectionLabel('DNS'),
        _CheckRow(
          value: _enableDns,
          title: '添加 DNS',
          icon: Icons.travel_explore_rounded,
          onChanged: (value) => setState(() => _enableDns = value),
        ),
        if (_enableDns) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _dnsPrimaryController,
            label: 'DNS 主服务器',
            icon: Icons.dns_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _dnsPrimaryPortController,
            label: 'DNS 主服务器端口',
            icon: Icons.tag_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _dnsPrimaryClientIpController,
            label: 'DNS 主服务器 clientIp',
            icon: Icons.my_location_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _dnsPrimaryTagController,
            label: 'DNS 主服务器 tag',
            icon: Icons.sell_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _dnsPrimaryDomainsController,
            label: 'DNS 主服务器 domains 逗号分隔',
            icon: Icons.language_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _dnsPrimaryExpectedIpsController,
            label: 'DNS 主服务器 expectedIPs 逗号分隔',
            icon: Icons.rule_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _dnsPrimaryExpectIpsController,
            label: 'DNS 主服务器 expectIPs 逗号分隔',
            icon: Icons.rule_folder_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _dnsPrimaryUnexpectedIpsController,
            label: 'DNS 主服务器 unexpectedIPs 逗号分隔',
            icon: Icons.rule_folder_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _dnsPrimaryTimeoutController,
            label: 'DNS 主服务器 timeoutMs',
            icon: Icons.timer_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _dnsPrimaryServeExpiredTtlController,
            label: 'DNS 主服务器 serveExpiredTTL',
            icon: Icons.timer_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _dnsSecondaryController,
            label: 'DNS 备用服务器',
            icon: Icons.dns_rounded,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _dnsSecondaryDetailed,
            title: 'DNS 备用服务器详细配置',
            icon: Icons.tune_rounded,
            onChanged: (value) => setState(() => _dnsSecondaryDetailed = value),
          ),
          if (_dnsSecondaryDetailed) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _dnsSecondaryPortController,
              label: 'DNS 备用服务器端口',
              icon: Icons.tag_rounded,
              keyboardType: TextInputType.number,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _dnsSecondaryClientIpController,
              label: 'DNS 备用服务器 clientIp',
              icon: Icons.my_location_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _dnsSecondaryTagController,
              label: 'DNS 备用服务器 tag',
              icon: Icons.sell_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _dnsSecondaryDomainsController,
              label: 'DNS 备用服务器 domains 逗号分隔',
              icon: Icons.language_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _dnsSecondaryExpectedIpsController,
              label: 'DNS 备用服务器 expectedIPs 逗号分隔',
              icon: Icons.rule_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _dnsSecondaryExpectIpsController,
              label: 'DNS 备用服务器 expectIPs 逗号分隔',
              icon: Icons.rule_folder_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _dnsSecondaryUnexpectedIpsController,
              label: 'DNS 备用服务器 unexpectedIPs 逗号分隔',
              icon: Icons.rule_folder_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _dnsSecondaryTimeoutController,
              label: 'DNS 备用服务器 timeoutMs',
              icon: Icons.timer_rounded,
              keyboardType: TextInputType.number,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _dnsSecondaryServeExpiredTtlController,
              label: 'DNS 备用服务器 serveExpiredTTL',
              icon: Icons.timer_rounded,
              keyboardType: TextInputType.number,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _DropdownInput<DnsQueryStrategy>(
              value: _dnsSecondaryQueryStrategy,
              label: 'DNS 备用服务器 queryStrategy',
              icon: Icons.manage_search_rounded,
              values: DnsQueryStrategy.values,
              labelOf: (value) => value.label,
              onChanged: (value) =>
                  setState(() => _dnsSecondaryQueryStrategy = value),
            ),
            _CheckRow(
              value: _dnsSecondaryDisableCache,
              title: 'DNS 备用服务器 disableCache',
              icon: Icons.cached_rounded,
              onChanged: (value) =>
                  setState(() => _dnsSecondaryDisableCache = value),
            ),
            _CheckRow(
              value: _dnsSecondaryServeStale,
              title: 'DNS 备用服务器 serveStale',
              icon: Icons.cached_rounded,
              onChanged: (value) =>
                  setState(() => _dnsSecondaryServeStale = value),
            ),
            _CheckRow(
              value: _dnsSecondarySkipFallback,
              title: 'DNS 备用服务器 skipFallback',
              icon: Icons.skip_next_rounded,
              onChanged: (value) =>
                  setState(() => _dnsSecondarySkipFallback = value),
            ),
            _CheckRow(
              value: _dnsSecondaryFinalQuery,
              title: 'DNS 备用服务器 finalQuery',
              icon: Icons.done_all_rounded,
              onChanged: (value) =>
                  setState(() => _dnsSecondaryFinalQuery = value),
            ),
          ],
          const SizedBox(height: 12),
          _TextInput(
            controller: _dnsClientIpController,
            label: 'DNS clientIp',
            icon: Icons.my_location_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _dnsTagController,
            label: 'DNS tag',
            icon: Icons.sell_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _dnsHostsJsonController,
            label: 'DNS hosts JSON',
            icon: Icons.data_object_rounded,
            maxLines: 4,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _dnsServeExpiredTtlController,
            label: 'DNS serveExpiredTTL',
            icon: Icons.timer_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _DropdownInput<DnsQueryStrategy>(
            value: _dnsQueryStrategy,
            label: 'DNS queryStrategy',
            icon: Icons.rule_rounded,
            values: DnsQueryStrategy.values,
            labelOf: (value) => value.label,
            onChanged: (value) => setState(() => _dnsQueryStrategy = value),
          ),
          _CheckRow(
            value: _dnsDisableCache,
            title: 'DNS disableCache',
            icon: Icons.cached_rounded,
            onChanged: (value) => setState(() => _dnsDisableCache = value),
          ),
          _CheckRow(
            value: _dnsUseSystemHosts,
            title: 'DNS useSystemHosts',
            icon: Icons.storage_rounded,
            onChanged: (value) => setState(() => _dnsUseSystemHosts = value),
          ),
          _CheckRow(
            value: _dnsParallelQuery,
            title: 'DNS enableParallelQuery',
            icon: Icons.sync_rounded,
            onChanged: (value) => setState(() => _dnsParallelQuery = value),
          ),
          _CheckRow(
            value: _dnsDisableFallback,
            title: 'DNS disableFallback',
            icon: Icons.do_not_disturb_on_rounded,
            onChanged: (value) => setState(() => _dnsDisableFallback = value),
          ),
          _CheckRow(
            value: _dnsDisableFallbackIfMatch,
            title: 'DNS disableFallbackIfMatch',
            icon: Icons.rule_rounded,
            onChanged: (value) =>
                setState(() => _dnsDisableFallbackIfMatch = value),
          ),
          _CheckRow(
            value: _dnsServeStale,
            title: 'DNS serveStale',
            icon: Icons.cached_rounded,
            onChanged: (value) => setState(() => _dnsServeStale = value),
          ),
          _CheckRow(
            value: _dnsPrimaryDisableCache,
            title: 'DNS 主服务器 disableCache',
            icon: Icons.cached_rounded,
            onChanged: (value) =>
                setState(() => _dnsPrimaryDisableCache = value),
          ),
          _CheckRow(
            value: _dnsPrimaryServeStale,
            title: 'DNS 主服务器 serveStale',
            icon: Icons.cached_rounded,
            onChanged: (value) => setState(() => _dnsPrimaryServeStale = value),
          ),
          _CheckRow(
            value: _dnsPrimarySkipFallback,
            title: 'DNS 主服务器 skipFallback',
            icon: Icons.skip_next_rounded,
            onChanged: (value) =>
                setState(() => _dnsPrimarySkipFallback = value),
          ),
          _CheckRow(
            value: _dnsPrimaryFinalQuery,
            title: 'DNS 主服务器 finalQuery',
            icon: Icons.done_all_rounded,
            onChanged: (value) => setState(() => _dnsPrimaryFinalQuery = value),
          ),
          _CheckRow(
            value: _dnsUseServersJson,
            title: 'DNS servers JSON 数组',
            icon: Icons.data_array_rounded,
            onChanged: (value) => setState(() => _dnsUseServersJson = value),
          ),
          if (_dnsUseServersJson) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _dnsServersJsonController,
              label: 'DNS servers JSON 数组',
              icon: Icons.data_array_rounded,
              maxLines: 6,
              onChanged: _refresh,
            ),
          ],
        ],
        const Divider(height: 28),
        _SectionLabel('路由'),
        _CheckRow(
          value: _enableRouting,
          title: '添加 routing',
          icon: Icons.alt_route_rounded,
          onChanged: (value) => setState(() => _enableRouting = value),
        ),
        if (_enableRouting) ...[
          const SizedBox(height: 12),
          _DropdownInput<RouterDomainStrategy>(
            value: _routerDomainStrategy,
            label: 'domainStrategy',
            icon: Icons.account_tree_rounded,
            values: RouterDomainStrategy.values,
            labelOf: (value) => value.label,
            onChanged: (value) => setState(() => _routerDomainStrategy = value),
          ),
          _CheckRow(
            value: _routeUseRulesJson,
            title: 'routing rules JSON 数组',
            icon: Icons.data_array_rounded,
            onChanged: (value) => setState(() => _routeUseRulesJson = value),
          ),
          if (_routeUseRulesJson) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _routeRulesJsonController,
              label: 'routing rules JSON 数组',
              icon: Icons.data_array_rounded,
              maxLines: 6,
              onChanged: _refresh,
            ),
          ],
          _CheckRow(
            value: _routeUseBalancersJson,
            title: 'routing balancers JSON 数组',
            icon: Icons.data_array_rounded,
            onChanged: (value) =>
                setState(() => _routeUseBalancersJson = value),
          ),
          if (_routeUseBalancersJson) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _balancersJsonController,
              label: 'routing balancers JSON 数组',
              icon: Icons.data_array_rounded,
              maxLines: 5,
              onChanged: _refresh,
            ),
          ],
          _CheckRow(
            value: _enableBalancer,
            enabled: !_routeUseBalancersJson,
            title: '添加 routing balancer',
            icon: Icons.balance_rounded,
            onChanged: (value) => setState(() => _enableBalancer = value),
          ),
          if (_enableBalancer) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _balancerTagController,
              label: 'balancer tag',
              icon: Icons.sell_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _balancerSelectorsController,
              label: 'balancer selector 逗号分隔',
              icon: Icons.filter_list_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _balancerFallbackTagController,
              label: 'balancer fallbackTag',
              icon: Icons.keyboard_return_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _DropdownInput<BalancingStrategyType>(
              value: _balancerStrategy,
              label: 'balancer strategy',
              icon: Icons.route_rounded,
              values: BalancingStrategyType.values,
              labelOf: (value) => value.label,
              onChanged: (value) => setState(() => _balancerStrategy = value),
            ),
            if (_balancerStrategy == BalancingStrategyType.leastload) ...[
              const SizedBox(height: 12),
              _TextInput(
                controller: _balancerCostsController,
                label: 'leastload costs JSON',
                icon: Icons.data_object_rounded,
                maxLines: 3,
                onChanged: _refresh,
              ),
              const SizedBox(height: 12),
              _TextInput(
                controller: _balancerBaselinesController,
                label: 'leastload baselines 逗号分隔',
                icon: Icons.timer_rounded,
                onChanged: _refresh,
              ),
              const SizedBox(height: 12),
              _TextInput(
                controller: _balancerExpectedController,
                label: 'leastload expected',
                icon: Icons.numbers_rounded,
                keyboardType: TextInputType.number,
                onChanged: _refresh,
              ),
              const SizedBox(height: 12),
              _TextInput(
                controller: _balancerMaxRttController,
                label: 'leastload maxRTT',
                icon: Icons.speed_rounded,
                onChanged: _refresh,
              ),
              const SizedBox(height: 12),
              _TextInput(
                controller: _balancerToleranceController,
                label: 'leastload tolerance',
                icon: Icons.percent_rounded,
                keyboardType: TextInputType.number,
                onChanged: _refresh,
              ),
            ],
          ],
        ],
        _CheckRow(
          value: _routePrivateDirect,
          enabled: _enableRouting && _addDirectOutbound,
          title: '私有/CN IP 直连',
          icon: Icons.signpost_rounded,
          onChanged: (value) => setState(() => _routePrivateDirect = value),
        ),
        _CheckRow(
          value: _routeChinaSitesDirect,
          enabled: _enableRouting && _addDirectOutbound,
          title: '中国域名直连',
          icon: Icons.language_rounded,
          onChanged: (value) => setState(() => _routeChinaSitesDirect = value),
        ),
        _CheckRow(
          value: _blockAds,
          enabled: _enableRouting && _addBlockOutbound,
          title: '广告域名拦截',
          icon: Icons.filter_alt_rounded,
          onChanged: (value) => setState(() => _blockAds = value),
        ),
        _CheckRow(
          value: _blockQuic,
          enabled: _enableRouting && _addBlockOutbound,
          title: '拦截 QUIC UDP/443',
          icon: Icons.no_encryption_rounded,
          onChanged: (value) => setState(() => _blockQuic = value),
        ),
        _CheckRow(
          value: _routeBitTorrentBlock,
          enabled: _enableRouting && _addBlockOutbound,
          title: '拦截 BitTorrent',
          icon: Icons.block_rounded,
          onChanged: (value) => setState(() => _routeBitTorrentBlock = value),
        ),
        _CheckRow(
          value: _routeCustomRule,
          enabled: _enableRouting,
          title: '添加自定义 routing rule',
          icon: Icons.rule_rounded,
          onChanged: (value) => setState(() => _routeCustomRule = value),
        ),
        if (_routeCustomRule) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _routeRuleTagController,
            label: 'ruleTag',
            icon: Icons.sell_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _routeOutboundTagController,
            label: 'outboundTag',
            icon: Icons.outbound_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _routeBalancerTagController,
            label: 'balancerTag',
            icon: Icons.balance_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _routeDomainController,
            label: 'domain 逗号分隔',
            icon: Icons.language_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _routeDomainsController,
            label: 'domains 逗号分隔',
            icon: Icons.language_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _routeIpController,
            label: 'ip 逗号分隔',
            icon: Icons.my_location_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _routePortController,
            label: 'port',
            icon: Icons.tag_rounded,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _routeCustomTcp,
            title: 'rule network TCP',
            icon: Icons.settings_ethernet_rounded,
            onChanged: (value) => setState(() => _routeCustomTcp = value),
          ),
          _CheckRow(
            value: _routeCustomUdp,
            title: 'rule network UDP',
            icon: Icons.sync_alt_rounded,
            onChanged: (value) => setState(() => _routeCustomUdp = value),
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _routeSourceIpController,
            label: 'sourceIP 逗号分隔',
            icon: Icons.input_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _routeSourceController,
            label: 'source 逗号分隔',
            icon: Icons.input_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _routeSourcePortController,
            label: 'sourcePort',
            icon: Icons.tag_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _routeUserController,
            label: 'user 逗号分隔',
            icon: Icons.person_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _routeVlessRouteController,
            label: 'vlessRoute',
            icon: Icons.route_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _routeInboundTagController,
            label: 'inboundTag 逗号分隔',
            icon: Icons.input_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _routeProtocolsController,
            label: 'protocol 逗号分隔',
            icon: Icons.schema_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _routeAttrsController,
            label: 'attrs JSON',
            icon: Icons.data_object_rounded,
            maxLines: 3,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _routeLocalIpController,
            label: 'localIP 逗号分隔',
            icon: Icons.my_location_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _routeLocalPortController,
            label: 'localPort',
            icon: Icons.tag_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _routeProcessController,
            label: 'process 逗号分隔',
            icon: Icons.memory_rounded,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _routeEnableWebhook,
            title: 'rule webhook',
            icon: Icons.webhook_rounded,
            onChanged: (value) => setState(() => _routeEnableWebhook = value),
          ),
          if (_routeEnableWebhook) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _routeWebhookUrlController,
              label: 'webhook url',
              icon: Icons.link_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _routeWebhookDedupController,
              label: 'webhook deduplication',
              icon: Icons.numbers_rounded,
              keyboardType: TextInputType.number,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _routeWebhookHeadersController,
              label: 'webhook headers JSON',
              icon: Icons.data_object_rounded,
              maxLines: 3,
              onChanged: _refresh,
            ),
          ],
        ],
        const Divider(height: 28),
        _SectionLabel('模块'),
        _CheckRow(
          value: _addDirectOutbound,
          title: '添加 direct 出站',
          icon: Icons.near_me_rounded,
          onChanged: (value) => setState(() => _addDirectOutbound = value),
        ),
        if (_addDirectOutbound) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _directTagController,
            label: 'direct outbound tag',
            icon: Icons.sell_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _DropdownInput<XrayTargetStrategy>(
            value: _directDomainStrategy,
            label: 'direct domainStrategy',
            icon: Icons.track_changes_rounded,
            values: XrayTargetStrategy.values,
            labelOf: (value) => value.label,
            onChanged: (value) => setState(() => _directDomainStrategy = value),
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _directRedirectController,
            label: 'direct redirect',
            icon: Icons.redo_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _directUserLevelController,
            label: 'direct userLevel',
            icon: Icons.person_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _directProxyProtocolController,
            label: 'direct proxyProtocol',
            icon: Icons.private_connectivity_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _directIpsBlockedController,
            label: 'direct ipsBlocked 逗号分隔',
            icon: Icons.block_rounded,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _directEnableFragment,
            title: 'direct fragment',
            icon: Icons.call_split_rounded,
            onChanged: (value) => setState(() => _directEnableFragment = value),
          ),
          if (_directEnableFragment) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _directFragmentPacketsController,
              label: 'fragment packets',
              icon: Icons.inventory_2_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _directFragmentLengthController,
              label: 'fragment length',
              icon: Icons.straighten_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _directFragmentIntervalController,
              label: 'fragment interval',
              icon: Icons.timer_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _directFragmentMaxSplitController,
              label: 'fragment maxSplit',
              icon: Icons.call_split_rounded,
              onChanged: _refresh,
            ),
          ],
          _CheckRow(
            value: _directEnableNoise,
            title: 'direct noise',
            icon: Icons.graphic_eq_rounded,
            onChanged: (value) => setState(() => _directEnableNoise = value),
          ),
          if (_directEnableNoise) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _directNoiseTypeController,
              label: 'noise type',
              icon: Icons.category_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _directNoisePacketController,
              label: 'noise packet',
              icon: Icons.inventory_2_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _directNoiseDelayController,
              label: 'noise delay',
              icon: Icons.timer_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _directNoiseApplyToController,
              label: 'noise applyTo',
              icon: Icons.filter_alt_rounded,
              onChanged: _refresh,
            ),
          ],
          _CheckRow(
            value: _directEnableNoises,
            title: 'direct noises JSON 数组',
            icon: Icons.data_array_rounded,
            onChanged: (value) => setState(() => _directEnableNoises = value),
          ),
          if (_directEnableNoises) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _directNoisesJsonController,
              label: 'direct noises JSON 数组',
              icon: Icons.data_array_rounded,
              maxLines: 5,
              onChanged: _refresh,
            ),
          ],
        ],
        _CheckRow(
          value: _addBlockOutbound,
          title: '添加 block 出站',
          icon: Icons.block_rounded,
          onChanged: (value) => setState(() => _addBlockOutbound = value),
        ),
        if (_addBlockOutbound) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _blockTagController,
            label: 'block outbound tag',
            icon: Icons.sell_rounded,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _blockHttpResponse,
            title: 'block response http',
            icon: Icons.http_rounded,
            onChanged: (value) => setState(() => _blockHttpResponse = value),
          ),
        ],
        _CheckRow(
          value: _addDnsOutbound,
          title: '添加 dns 出站',
          icon: Icons.dns_rounded,
          onChanged: (value) => setState(() => _addDnsOutbound = value),
        ),
        if (_addDnsOutbound) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _dnsOutboundTagController,
            label: 'dns outbound tag',
            icon: Icons.sell_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _DropdownInput<XrayNetwork>(
            value: _dnsOutboundNetwork,
            label: 'dns outbound network',
            icon: Icons.settings_ethernet_rounded,
            values: const [XrayNetwork.tcp, XrayNetwork.udp],
            labelOf: (value) => value.label,
            onChanged: (value) => setState(() => _dnsOutboundNetwork = value),
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _dnsOutboundAddressController,
            label: 'dns outbound address',
            icon: Icons.dns_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _dnsOutboundPortController,
            label: 'dns outbound port',
            icon: Icons.tag_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _dnsOutboundUserLevelController,
            label: 'dns outbound userLevel',
            icon: Icons.person_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _enableDnsOutboundRule,
            title: 'dns outbound rule',
            icon: Icons.rule_rounded,
            onChanged: (value) =>
                setState(() => _enableDnsOutboundRule = value),
          ),
          if (_enableDnsOutboundRule) ...[
            _CheckRow(
              value: _dnsOutboundRulesJson,
              title: 'dns outbound rules JSON 数组',
              icon: Icons.data_array_rounded,
              onChanged: (value) =>
                  setState(() => _dnsOutboundRulesJson = value),
            ),
            if (_dnsOutboundRulesJson) ...[
              const SizedBox(height: 12),
              _TextInput(
                controller: _dnsOutboundRulesJsonController,
                label: 'dns outbound rules JSON 数组',
                icon: Icons.data_array_rounded,
                maxLines: 5,
                onChanged: _refresh,
              ),
            ],
            const SizedBox(height: 12),
            _DropdownInput<DNSOutboundRuleAction>(
              value: _dnsOutboundRuleAction,
              label: 'dns rule action',
              icon: Icons.route_rounded,
              values: DNSOutboundRuleAction.values,
              labelOf: (value) => value.label,
              onChanged: (value) =>
                  setState(() => _dnsOutboundRuleAction = value),
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _dnsOutboundRuleQtypeController,
              label: 'dns rule qType',
              icon: Icons.tag_rounded,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _dnsOutboundRuleDomainController,
              label: 'dns rule domain 逗号分隔',
              icon: Icons.language_rounded,
              onChanged: _refresh,
            ),
          ],
          const SizedBox(height: 12),
          _TextInput(
            controller: _dnsOutboundNonIpQueryController,
            label: 'dns outbound nonIPQuery',
            icon: Icons.question_mark_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _dnsOutboundBlockTypesController,
            label: 'dns outbound blockTypes 逗号分隔',
            icon: Icons.block_rounded,
            onChanged: _refresh,
          ),
        ],
        _CheckRow(
          value: _enableFakeDns,
          title: '添加 fakeDns',
          icon: Icons.blur_on_rounded,
          onChanged: (value) => setState(() => _enableFakeDns = value),
        ),
        if (_enableFakeDns) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _fakeDnsIpPoolController,
            label: 'fakeDns ipPool',
            icon: Icons.blur_on_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _fakeDnsPoolSizeController,
            label: 'fakeDns poolSize',
            icon: Icons.numbers_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _fakeDnsUsePoolsJson,
            title: 'fakeDns pools JSON 数组',
            icon: Icons.data_array_rounded,
            onChanged: (value) => setState(() => _fakeDnsUsePoolsJson = value),
          ),
          if (_fakeDnsUsePoolsJson) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _fakeDnsPoolsJsonController,
              label: 'fakeDns pools JSON 数组',
              icon: Icons.data_array_rounded,
              maxLines: 5,
              onChanged: _refresh,
            ),
          ],
        ],
        _CheckRow(
          value: _enableMetrics,
          title: '添加 metrics',
          icon: Icons.monitor_heart_rounded,
          onChanged: (value) => setState(() => _enableMetrics = value),
        ),
        if (_enableMetrics) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _metricsListenController,
            label: 'metrics listen',
            icon: Icons.monitor_heart_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _metricsTagController,
            label: 'metrics tag',
            icon: Icons.sell_rounded,
            onChanged: _refresh,
          ),
        ],
        _CheckRow(
          value: _enableStats,
          title: '添加 stats',
          icon: Icons.query_stats_rounded,
          onChanged: (value) => setState(() => _enableStats = value),
        ),
        _CheckRow(
          value: _enablePolicy,
          title: '添加 policy',
          icon: Icons.policy_rounded,
          onChanged: (value) => setState(() => _enablePolicy = value),
        ),
        if (_enablePolicy) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _policyHandshakeController,
            label: 'policy level 0 handshake',
            icon: Icons.back_hand_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _policyConnIdleController,
            label: 'policy level 0 connIdle',
            icon: Icons.hourglass_empty_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _policyUplinkOnlyController,
            label: 'policy level 0 uplinkOnly',
            icon: Icons.upload_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _policyDownlinkOnlyController,
            label: 'policy level 0 downlinkOnly',
            icon: Icons.download_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _policyBufferSizeController,
            label: 'policy level 0 bufferSize',
            icon: Icons.memory_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _policyUserStatsUplink,
            title: 'policy level 0 statsUserUplink',
            icon: Icons.upload_rounded,
            onChanged: (value) =>
                setState(() => _policyUserStatsUplink = value),
          ),
          _CheckRow(
            value: _policyUserStatsDownlink,
            title: 'policy level 0 statsUserDownlink',
            icon: Icons.download_rounded,
            onChanged: (value) =>
                setState(() => _policyUserStatsDownlink = value),
          ),
          _CheckRow(
            value: _policyUserStatsOnline,
            title: 'policy level 0 statsUserOnline',
            icon: Icons.online_prediction_rounded,
            onChanged: (value) =>
                setState(() => _policyUserStatsOnline = value),
          ),
          _CheckRow(
            value: _policyUseLevelsJson,
            title: 'policy levels JSON',
            icon: Icons.data_object_rounded,
            onChanged: (value) => setState(() => _policyUseLevelsJson = value),
          ),
          if (_policyUseLevelsJson) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _policyLevelsJsonController,
              label: 'policy levels JSON',
              icon: Icons.data_object_rounded,
              maxLines: 5,
              onChanged: _refresh,
            ),
          ],
          _CheckRow(
            value: _policyInboundStats,
            title: 'policy system inbound stats',
            icon: Icons.input_rounded,
            onChanged: (value) => setState(() => _policyInboundStats = value),
          ),
          _CheckRow(
            value: _policyOutboundStats,
            title: 'policy system outbound stats',
            icon: Icons.output_rounded,
            onChanged: (value) => setState(() => _policyOutboundStats = value),
          ),
        ],
        _CheckRow(
          value: _enableApi,
          title: '添加 api',
          icon: Icons.api_rounded,
          onChanged: (value) => setState(() => _enableApi = value),
        ),
        if (_enableApi) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _apiTagController,
            label: 'api tag',
            icon: Icons.sell_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _apiListenController,
            label: 'api listen',
            icon: Icons.settings_input_component_rounded,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _apiReflectionService,
            title: 'api ReflectionService',
            icon: Icons.screen_search_desktop_rounded,
            onChanged: (value) => setState(() => _apiReflectionService = value),
          ),
          _CheckRow(
            value: _apiHandlerService,
            title: 'api HandlerService',
            icon: Icons.settings_rounded,
            onChanged: (value) => setState(() => _apiHandlerService = value),
          ),
          _CheckRow(
            value: _apiLoggerService,
            title: 'api LoggerService',
            icon: Icons.article_rounded,
            onChanged: (value) => setState(() => _apiLoggerService = value),
          ),
          _CheckRow(
            value: _apiStatsService,
            title: 'api StatsService',
            icon: Icons.query_stats_rounded,
            onChanged: (value) => setState(() => _apiStatsService = value),
          ),
          _CheckRow(
            value: _apiObservatoryService,
            title: 'api ObservatoryService',
            icon: Icons.remove_red_eye_rounded,
            onChanged: (value) =>
                setState(() => _apiObservatoryService = value),
          ),
          _CheckRow(
            value: _apiRoutingService,
            title: 'api RoutingService',
            icon: Icons.alt_route_rounded,
            onChanged: (value) => setState(() => _apiRoutingService = value),
          ),
        ],
        _CheckRow(
          value: _enableReverse,
          title: '添加 reverse',
          icon: Icons.compare_arrows_rounded,
          onChanged: (value) => setState(() => _enableReverse = value),
        ),
        if (_enableReverse) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _reverseDomainController,
            label: 'reverse domain',
            icon: Icons.domain_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _reverseBridgeTagController,
            label: 'reverse bridge tag',
            icon: Icons.sell_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _reversePortalTagController,
            label: 'reverse portal tag',
            icon: Icons.sell_rounded,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _reverseUseJsonLists,
            title: 'reverse bridges/portals JSON',
            icon: Icons.data_array_rounded,
            onChanged: (value) => setState(() => _reverseUseJsonLists = value),
          ),
          if (_reverseUseJsonLists) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _reverseBridgesJsonController,
              label: 'reverse bridges JSON 数组',
              icon: Icons.data_array_rounded,
              maxLines: 4,
              onChanged: _refresh,
            ),
            const SizedBox(height: 12),
            _TextInput(
              controller: _reversePortalsJsonController,
              label: 'reverse portals JSON 数组',
              icon: Icons.data_array_rounded,
              maxLines: 4,
              onChanged: _refresh,
            ),
          ],
        ],
        _CheckRow(
          value: _enableObservatory,
          title: '添加 observatory',
          icon: Icons.remove_red_eye_rounded,
          onChanged: (value) => setState(() => _enableObservatory = value),
        ),
        if (_enableObservatory) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _observatorySubjectController,
            label: 'observatory subjectSelector 逗号分隔',
            icon: Icons.sell_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _observatoryUrlController,
            label: 'observatory probeURL',
            icon: Icons.link_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _observatoryIntervalController,
            label: 'observatory probeInterval',
            icon: Icons.timer_rounded,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _observatoryConcurrency,
            title: 'observatory enableConcurrency',
            icon: Icons.sync_rounded,
            onChanged: (value) =>
                setState(() => _observatoryConcurrency = value),
          ),
        ],
        _CheckRow(
          value: _enableBurstObservatory,
          title: '添加 burstObservatory',
          icon: Icons.speed_rounded,
          onChanged: (value) => setState(() => _enableBurstObservatory = value),
        ),
        if (_enableBurstObservatory) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _observatorySubjectController,
            label: 'burst subjectSelector 逗号分隔',
            icon: Icons.sell_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _burstDestinationController,
            label: 'burst destination',
            icon: Icons.health_and_safety_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _burstConnectivityController,
            label: 'burst connectivity',
            icon: Icons.link_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _burstIntervalController,
            label: 'burst interval',
            icon: Icons.timer_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _burstSamplingController,
            label: 'burst sampling',
            icon: Icons.repeat_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _burstTimeoutController,
            label: 'burst timeout',
            icon: Icons.hourglass_empty_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _burstMethodController,
            label: 'burst httpMethod',
            icon: Icons.http_rounded,
            onChanged: _refresh,
          ),
        ],
        _CheckRow(
          value: _enableVersion,
          title: '添加 version',
          icon: Icons.new_releases_rounded,
          onChanged: (value) => setState(() => _enableVersion = value),
        ),
        if (_enableVersion) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _versionMinController,
            label: 'version min',
            icon: Icons.vertical_align_bottom_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _versionMaxController,
            label: 'version max',
            icon: Icons.vertical_align_top_rounded,
            onChanged: _refresh,
          ),
        ],
        _CheckRow(
          value: _enableGeodata,
          title: '添加 geodata',
          icon: Icons.public_rounded,
          onChanged: (value) => setState(() => _enableGeodata = value),
        ),
        if (_enableGeodata) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _geodataCronController,
            label: 'geodata cron',
            icon: Icons.schedule_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _geodataOutboundController,
            label: 'geodata outbound',
            icon: Icons.output_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _geodataAssetUrlController,
            label: 'geodata asset url',
            icon: Icons.link_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _geodataAssetFileController,
            label: 'geodata asset file',
            icon: Icons.insert_drive_file_rounded,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _geodataUseAssetsJson,
            title: 'geodata assets JSON 数组',
            icon: Icons.data_array_rounded,
            onChanged: (value) => setState(() => _geodataUseAssetsJson = value),
          ),
          if (_geodataUseAssetsJson) ...[
            const SizedBox(height: 12),
            _TextInput(
              controller: _geodataAssetsJsonController,
              label: 'geodata assets JSON 数组',
              icon: Icons.data_array_rounded,
              maxLines: 5,
              onChanged: _refresh,
            ),
          ],
        ],
        _CheckRow(
          value: _enableTransport,
          title: '添加顶层 transport JSON',
          icon: Icons.data_object_rounded,
          onChanged: (value) => setState(() => _enableTransport = value),
        ),
        if (_enableTransport) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _transportJsonController,
            label: 'transport JSON',
            icon: Icons.code_rounded,
            maxLines: 5,
            onChanged: _refresh,
          ),
        ],
        _CheckRow(
          value: _enableMux,
          title: '添加 mux',
          icon: Icons.call_split_rounded,
          onChanged: (value) => setState(() => _enableMux = value),
        ),
        if (_enableMux) ...[
          _CheckRow(
            value: _muxEnabled,
            title: 'mux enabled',
            icon: Icons.power_settings_new_rounded,
            onChanged: (value) => setState(() => _muxEnabled = value),
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _muxConcurrencyController,
            label: 'mux concurrency',
            icon: Icons.numbers_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _muxXudpConcurrencyController,
            label: 'mux xudpConcurrency',
            icon: Icons.sync_alt_rounded,
            keyboardType: TextInputType.number,
            onChanged: _refresh,
          ),
          _CheckRow(
            value: _muxXudpUdp443Reject,
            title: 'mux 拒绝 XUDP UDP/443',
            icon: Icons.block_rounded,
            onChanged: (value) => setState(() => _muxXudpUdp443Reject = value),
          ),
        ],
      ],
    );
  }

  List<Widget> _buildFinalMaskMaskControls({
    required bool udp,
    required bool fragmentValue,
    required bool noiseValue,
    required bool dnsValue,
    required bool salamanderValue,
    required bool aesValue,
    required bool xdnsValue,
    required bool xicmpValue,
    required bool headerCustomValue,
    required bool sudokuValue,
    required bool originalValue,
    required bool dtlsValue,
    required bool srtpValue,
    required bool utpValue,
    required bool wechatValue,
    required bool wireguardValue,
    required ValueChanged<bool> onFragmentChanged,
    required ValueChanged<bool> onNoiseChanged,
    required ValueChanged<bool> onDnsChanged,
    required ValueChanged<bool> onSalamanderChanged,
    required ValueChanged<bool> onAesChanged,
    required ValueChanged<bool> onXdnsChanged,
    required ValueChanged<bool> onXicmpChanged,
    required ValueChanged<bool> onHeaderCustomChanged,
    required ValueChanged<bool> onSudokuChanged,
    required ValueChanged<bool> onOriginalChanged,
    required ValueChanged<bool> onDtlsChanged,
    required ValueChanged<bool> onSrtpChanged,
    required ValueChanged<bool> onUtpChanged,
    required ValueChanged<bool> onWechatChanged,
    required ValueChanged<bool> onWireguardChanged,
  }) {
    return [
      _CheckRow(
        value: fragmentValue,
        title: '添加 fragment mask',
        icon: Icons.call_split_rounded,
        onChanged: onFragmentChanged,
      ),
      if (fragmentValue) ...[
        const SizedBox(height: 12),
        _TextInput(
          controller: _finalMaskFragmentPacketsController,
          label: 'fragment mask packets',
          icon: Icons.inventory_2_rounded,
          onChanged: _refresh,
        ),
        const SizedBox(height: 12),
        _TextInput(
          controller: _finalMaskFragmentLengthController,
          label: 'fragment mask length',
          icon: Icons.straighten_rounded,
          onChanged: _refresh,
        ),
        const SizedBox(height: 12),
        _TextInput(
          controller: _finalMaskFragmentDelayController,
          label: 'fragment mask delay',
          icon: Icons.timer_rounded,
          onChanged: _refresh,
        ),
        const SizedBox(height: 12),
        _TextInput(
          controller: _finalMaskFragmentMaxSplitController,
          label: 'fragment mask maxSplit',
          icon: Icons.call_split_rounded,
          onChanged: _refresh,
        ),
      ],
      if (udp) ...[
        _CheckRow(
          value: noiseValue,
          title: '添加 noise mask',
          icon: Icons.graphic_eq_rounded,
          onChanged: onNoiseChanged,
        ),
        if (noiseValue) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _finalMaskNoiseResetController,
            label: 'noise mask reset',
            icon: Icons.restart_alt_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _finalMaskNoiseItemsController,
            label: 'noise mask items JSON 数组',
            icon: Icons.data_array_rounded,
            maxLines: 5,
            onChanged: _refresh,
          ),
        ],
        _CheckRow(
          value: dnsValue,
          title: '添加 mkcp-legacy dns mask',
          icon: Icons.dns_rounded,
          onChanged: onDnsChanged,
        ),
        if (dnsValue) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _finalMaskDnsDomainController,
            label: 'mkcp-legacy dns value',
            icon: Icons.language_rounded,
            onChanged: _refresh,
          ),
        ],
        _CheckRow(
          value: salamanderValue,
          title: '添加 salamander mask',
          icon: Icons.password_rounded,
          onChanged: onSalamanderChanged,
        ),
        if (salamanderValue) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _finalMaskSalamanderPasswordController,
            label: 'salamander password',
            icon: Icons.password_rounded,
            onChanged: _refresh,
          ),
        ],
        _CheckRow(
          value: aesValue,
          title: '添加 mkcp-legacy aes128gcm mask',
          icon: Icons.enhanced_encryption_rounded,
          onChanged: onAesChanged,
        ),
        if (aesValue) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _finalMaskAesPasswordController,
            label: 'mkcp-legacy aes value',
            icon: Icons.password_rounded,
            onChanged: _refresh,
          ),
        ],
        _CheckRow(
          value: xdnsValue,
          title: '添加 xdns mask',
          icon: Icons.travel_explore_rounded,
          onChanged: onXdnsChanged,
        ),
        if (xdnsValue) ...[
          const SizedBox(height: 12),
          _TextInput(
            controller: _finalMaskXdnsDomainController,
            label: 'xdns domain',
            icon: Icons.language_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _finalMaskXdnsDomainsController,
            label: 'xdns domains 逗号分隔',
            icon: Icons.language_rounded,
            onChanged: _refresh,
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _finalMaskXdnsResolversController,
            label: 'xdns resolvers 逗号分隔',
            icon: Icons.dns_rounded,
            onChanged: _refresh,
          ),
        ],
        _CheckRow(
          value: xicmpValue,
          title: '添加 xicmp mask',
          icon: Icons.sensors_rounded,
          onChanged: onXicmpChanged,
        ),
        if (xicmpValue) ...[
          const SizedBox(height: 12),
          _CheckRow(
            value: _finalMaskXicmpDgram,
            title: 'xicmp dgram',
            icon: Icons.swap_horiz_rounded,
            onChanged: (value) => setState(() => _finalMaskXicmpDgram = value),
          ),
          const SizedBox(height: 12),
          _TextInput(
            controller: _finalMaskXicmpIpsController,
            label: 'xicmp ips 逗号分隔',
            icon: Icons.my_location_rounded,
            onChanged: _refresh,
          ),
        ],
      ],
      _CheckRow(
        value: headerCustomValue,
        title: '添加 header-custom mask',
        icon: Icons.extension_rounded,
        onChanged: onHeaderCustomChanged,
      ),
      if (headerCustomValue && !udp) ...[
        const SizedBox(height: 12),
        _TextInput(
          controller: _finalMaskTcpCustomClientsController,
          label: 'header-custom tcp clients JSON 二维数组',
          icon: Icons.data_array_rounded,
          maxLines: 5,
          onChanged: _refresh,
        ),
        const SizedBox(height: 12),
        _TextInput(
          controller: _finalMaskTcpCustomServersController,
          label: 'header-custom tcp servers JSON 二维数组',
          icon: Icons.data_array_rounded,
          maxLines: 5,
          onChanged: _refresh,
        ),
        const SizedBox(height: 12),
        _TextInput(
          controller: _finalMaskTcpCustomErrorsController,
          label: 'header-custom tcp errors JSON 二维数组',
          icon: Icons.data_array_rounded,
          maxLines: 5,
          onChanged: _refresh,
        ),
      ],
      if (headerCustomValue && udp) ...[
        const SizedBox(height: 12),
        _TextInput(
          controller: _finalMaskUdpCustomModeController,
          label: 'header-custom udp mode',
          icon: Icons.tune_rounded,
          onChanged: _refresh,
        ),
        const SizedBox(height: 12),
        _TextInput(
          controller: _finalMaskUdpCustomClientController,
          label: 'header-custom udp client JSON 数组',
          icon: Icons.data_array_rounded,
          maxLines: 5,
          onChanged: _refresh,
        ),
        const SizedBox(height: 12),
        _TextInput(
          controller: _finalMaskUdpCustomServerController,
          label: 'header-custom udp server JSON 数组',
          icon: Icons.data_array_rounded,
          maxLines: 5,
          onChanged: _refresh,
        ),
      ],
      _CheckRow(
        value: sudokuValue,
        title: '添加 sudoku mask',
        icon: Icons.grid_on_rounded,
        onChanged: onSudokuChanged,
      ),
      if (sudokuValue) ...[
        const SizedBox(height: 12),
        _TextInput(
          controller: _finalMaskSudokuPasswordController,
          label: 'sudoku password',
          icon: Icons.password_rounded,
          onChanged: _refresh,
        ),
        const SizedBox(height: 12),
        _TextInput(
          controller: _finalMaskSudokuAsciiController,
          label: 'sudoku ascii',
          icon: Icons.text_fields_rounded,
          onChanged: _refresh,
        ),
        const SizedBox(height: 12),
        _TextInput(
          controller: _finalMaskSudokuCustomTableController,
          label: 'sudoku customTable',
          icon: Icons.table_chart_rounded,
          onChanged: _refresh,
        ),
        const SizedBox(height: 12),
        _TextInput(
          controller: _finalMaskSudokuCustomTablesController,
          label: 'sudoku customTables 逗号分隔',
          icon: Icons.view_list_rounded,
          onChanged: _refresh,
        ),
        const SizedBox(height: 12),
        _TextInput(
          controller: _finalMaskSudokuPaddingMinController,
          label: 'sudoku paddingMin',
          icon: Icons.compress_rounded,
          keyboardType: TextInputType.number,
          onChanged: _refresh,
        ),
        const SizedBox(height: 12),
        _TextInput(
          controller: _finalMaskSudokuPaddingMaxController,
          label: 'sudoku paddingMax',
          icon: Icons.expand_rounded,
          keyboardType: TextInputType.number,
          onChanged: _refresh,
        ),
      ],
      if (udp) ...[
        _CheckRow(
          value: originalValue,
          title: '添加 mkcp-legacy original mask',
          icon: Icons.radio_button_unchecked_rounded,
          onChanged: onOriginalChanged,
        ),
        _CheckRow(
          value: dtlsValue,
          title: '添加 mkcp-legacy dtls mask',
          icon: Icons.security_rounded,
          onChanged: onDtlsChanged,
        ),
        _CheckRow(
          value: srtpValue,
          title: '添加 mkcp-legacy srtp mask',
          icon: Icons.settings_input_antenna_rounded,
          onChanged: onSrtpChanged,
        ),
        _CheckRow(
          value: utpValue,
          title: '添加 mkcp-legacy utp mask',
          icon: Icons.settings_input_component_rounded,
          onChanged: onUtpChanged,
        ),
        _CheckRow(
          value: wechatValue,
          title: '添加 mkcp-legacy wechat mask',
          icon: Icons.chat_bubble_outline_rounded,
          onChanged: onWechatChanged,
        ),
        _CheckRow(
          value: wireguardValue,
          title: '添加 mkcp-legacy wireguard mask',
          icon: Icons.shield_rounded,
          onChanged: onWireguardChanged,
        ),
      ],
    ];
  }

  bool _transportEnabled(TransportKind transport) {
    if (_protocol == ProxyProtocol.http ||
        _protocol == ProxyProtocol.socks ||
        _protocol == ProxyProtocol.wireguard ||
        _protocol == ProxyProtocol.hysteria ||
        _protocol == ProxyProtocol.loopback ||
        _protocol == ProxyProtocol.raw) {
      return transport == TransportKind.raw;
    }
    return true;
  }

  bool _securityEnabled(SecurityKind security) {
    if (security == SecurityKind.reality) {
      return _protocol == ProxyProtocol.vless;
    }
    return true;
  }
}

class _ControlPane extends StatelessWidget {
  const _ControlPane({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Material(
      color: colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: colorScheme.outlineVariant),
      ),
      child: child,
    );
  }
}

class _JsonPane extends StatelessWidget {
  const _JsonPane({
    required this.title,
    required this.subtitle,
    required this.issues,
    required this.jsonText,
    required this.onCopy,
  });

  final String title;
  final String subtitle;
  final List<XrayValidationIssue> issues;
  final String jsonText;
  final VoidCallback onCopy;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Material(
      color: const Color(0xff101624),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(16, 12, 12, 12),
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Color(0xff2b3446))),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        subtitle,
                        style: const TextStyle(color: Color(0xffa9b6d3)),
                      ),
                    ],
                  ),
                ),
                FilledButton.icon(
                  onPressed: onCopy,
                  icon: const Icon(Icons.copy_rounded, size: 18),
                  label: const Text('复制'),
                ),
              ],
            ),
          ),
          if (issues.isNotEmpty)
            Container(
              padding: const EdgeInsets.all(12),
              color: colorScheme.errorContainer,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '校验提示',
                    style: TextStyle(
                      color: colorScheme.onErrorContainer,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 6),
                  for (final issue in issues)
                    Text(
                      '- ${issue.path}: ${issue.message}',
                      style: TextStyle(color: colorScheme.onErrorContainer),
                    ),
                ],
              ),
            ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: SelectableText(
                jsonText,
                style: const TextStyle(
                  color: Color(0xffd7e2ff),
                  fontFamily: 'monospace',
                  fontSize: 13,
                  height: 1.45,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _PaneHeader extends StatelessWidget {
  const _PaneHeader({
    required this.icon,
    required this.title,
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 4, 4, 12),
      child: Row(
        children: [
          Icon(icon, size: 20),
          const SizedBox(width: 8),
          Text(
            title,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
          ),
        ],
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  const _SectionLabel(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.w800,
            ),
      ),
    );
  }
}

class _CheckRow extends StatelessWidget {
  const _CheckRow({
    required this.value,
    required this.title,
    required this.icon,
    required this.onChanged,
    this.enabled = true,
  });

  final bool value;
  final String title;
  final IconData icon;
  final ValueChanged<bool> onChanged;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: value,
      onChanged: enabled ? (value) => onChanged(value ?? false) : null,
      title: Text(title),
      secondary: Icon(icon),
      dense: true,
      controlAffinity: ListTileControlAffinity.trailing,
      contentPadding: EdgeInsets.zero,
    );
  }
}

class _TextInput extends StatelessWidget {
  const _TextInput({
    this.fieldKey,
    required this.controller,
    required this.label,
    required this.icon,
    required this.onChanged,
    this.keyboardType,
    this.maxLines = 1,
  });

  final Key? fieldKey;
  final TextEditingController controller;
  final String label;
  final IconData icon;
  final ValueChanged<String> onChanged;
  final TextInputType? keyboardType;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      key: fieldKey,
      controller: controller,
      keyboardType: keyboardType,
      maxLines: maxLines,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        border: const OutlineInputBorder(),
      ),
    );
  }
}

class _DropdownInput<T extends Object> extends StatelessWidget {
  const _DropdownInput({
    required this.value,
    required this.label,
    required this.icon,
    required this.values,
    required this.labelOf,
    required this.onChanged,
  });

  final T value;
  final String label;
  final IconData icon;
  final List<T> values;
  final String Function(T value) labelOf;
  final ValueChanged<T> onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      initialValue: value,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        border: const OutlineInputBorder(),
      ),
      items: values
          .map(
            (value) => DropdownMenuItem(
              value: value,
              child: Text(labelOf(value)),
            ),
          )
          .toList(),
      onChanged: (value) {
        if (value != null) {
          onChanged(value);
        }
      },
    );
  }
}

extension on InboundKind {
  String get label {
    return switch (this) {
      InboundKind.socks => 'SOCKS',
      InboundKind.http => 'HTTP',
      InboundKind.vless => 'VLESS',
      InboundKind.vmess => 'VMess',
      InboundKind.trojan => 'Trojan',
      InboundKind.shadowsocks => 'Shadowsocks',
      InboundKind.dokodemo => 'Dokodemo-door',
      InboundKind.wireguard => 'WireGuard',
      InboundKind.hysteria => 'Hysteria',
      InboundKind.tun => 'TUN',
      InboundKind.raw => 'Raw',
    };
  }
}

extension on ProxyProtocol {
  String get label {
    return switch (this) {
      ProxyProtocol.vless => 'VLESS',
      ProxyProtocol.vmess => 'VMess',
      ProxyProtocol.trojan => 'Trojan',
      ProxyProtocol.shadowsocks => 'Shadowsocks',
      ProxyProtocol.http => 'HTTP',
      ProxyProtocol.socks => 'SOCKS',
      ProxyProtocol.wireguard => 'WireGuard',
      ProxyProtocol.hysteria => 'Hysteria',
      ProxyProtocol.loopback => 'Loopback',
      ProxyProtocol.raw => 'Raw',
    };
  }
}

extension on LogLevel {
  String get label => toJson();
}

extension on TlsFingerprint {
  String get label => name;
}

extension on VmessSecurity {
  String get label => toJson();
}

extension on SocksAuthMethod {
  String get label => toJson();
}

extension on SplitHTTPMode {
  String get label => toJson();
}

extension on SplitHTTPPlacement {
  String get label => toJson();
}

extension on SplitHTTPPaddingMethod {
  String get label => toJson();
}

extension on TProxyMode {
  String get label => toJson();
}

extension on AddressPortStrategy {
  String get label => toJson();
}

extension on XrayFallbackType {
  String get label => toJson();
}

extension on TLSCertificateUsage {
  String get label => toJson();
}

extension on BalancingStrategyType {
  String get label => toJson();
}

extension on DnsQueryStrategy {
  String get label => toJson();
}

extension on RouterDomainStrategy {
  String get label => toJson();
}

extension on XrayTargetStrategy {
  String get label => toJson();
}

extension on XrayNetwork {
  String get label => toJson();
}

extension on DNSOutboundRuleAction {
  String get label => toJson();
}

extension on TransportKind {
  String get label {
    return switch (this) {
      TransportKind.tcp => 'TCP',
      TransportKind.raw => 'Raw',
      TransportKind.ws => 'WS',
      TransportKind.grpc => 'gRPC',
      TransportKind.httpUpgrade => 'HTTPUpgrade',
      TransportKind.splitHttp => 'SplitHTTP',
      TransportKind.xhttp => 'XHTTP',
      TransportKind.mkcp => 'mKCP',
      TransportKind.kcp => 'KCP',
      TransportKind.hysteria => 'Hysteria',
    };
  }
}

extension on SecurityKind {
  String get label {
    return switch (this) {
      SecurityKind.none => '空',
      SecurityKind.tls => 'TLS',
      SecurityKind.reality => 'REALITY',
    };
  }
}

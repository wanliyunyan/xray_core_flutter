part of 'apps.dart';

@freezed
abstract class WebhookRuleConfig with _$WebhookRuleConfig {
  const factory WebhookRuleConfig({
    required String url,
    int? deduplication,
    Map<String, String>? headers,
  }) = _WebhookRuleConfig;

  factory WebhookRuleConfig.fromJson(Object? json) {
    final map = asJsonMap(json, 'webhook');
    return WebhookRuleConfig(
      url: map['url'] as String,
      deduplication: map['deduplication'] as int?,
      headers: (map['headers'] as Map?)?.cast<String, String>(),
    );
  }

  const WebhookRuleConfig._();

  Map<String, dynamic> toJson() => withoutNulls({
    'url': url,
    'deduplication': deduplication,
    'headers': headers,
  });
}

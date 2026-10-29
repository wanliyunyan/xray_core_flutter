part of 'config.dart';

void _validateXmux(
  XmuxConfig? xmux,
  List<XrayValidationIssue> issues,
  String path,
) {
  if (xmux == null) return;
  for (final field in {
    'maxConcurrency': xmux.maxConcurrency,
    'maxConnections': xmux.maxConnections,
    'cMaxReuseTimes': xmux.cMaxReuseTimes,
    'hMaxRequestTimes': xmux.hMaxRequestTimes,
    'hMaxReusableSecs': xmux.hMaxReusableSecs,
  }.entries) {
    final range = field.value;
    // Equal endpoints serialize as a JSON number, which Core reads as int32.
    if (range != null &&
        range.left == range.right &&
        (range.left < -0x80000000 || range.left > 0x7fffffff)) {
      issues.add(
        XrayValidationIssue(
          '$path.${field.key}',
          'expected an int32 JSON number',
        ),
      );
    }
  }
  if (_xmuxHasPositiveEndpoint(xmux.maxConnections) &&
      _xmuxHasPositiveEndpoint(xmux.maxConcurrency)) {
    issues.add(
      XrayValidationIssue(
        path,
        'maxConnections cannot be specified together with maxConcurrency',
      ),
    );
  }
}

// Distinct typed endpoints serialize as strings; Core casts each to int32.
bool _xmuxHasPositiveEndpoint(XrayInt32Range? range) =>
    range != null &&
    (range.left.toSigned(32) > 0 || range.right.toSigned(32) > 0);

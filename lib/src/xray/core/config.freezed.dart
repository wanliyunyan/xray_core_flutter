// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InboundDetourConfig {

 String get protocol; XrayPortList? get port; XrayAddress? get listen; XrayInboundSettings? get settings; String? get tag; StreamConfig? get streamSettings; SniffingConfig? get sniffing;
/// Create a copy of InboundDetourConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InboundDetourConfigCopyWith<InboundDetourConfig> get copyWith => _$InboundDetourConfigCopyWithImpl<InboundDetourConfig>(this as InboundDetourConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InboundDetourConfig&&(identical(other.protocol, protocol) || other.protocol == protocol)&&(identical(other.port, port) || other.port == port)&&(identical(other.listen, listen) || other.listen == listen)&&(identical(other.settings, settings) || other.settings == settings)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.streamSettings, streamSettings) || other.streamSettings == streamSettings)&&(identical(other.sniffing, sniffing) || other.sniffing == sniffing));
}


@override
int get hashCode => Object.hash(runtimeType,protocol,port,listen,settings,tag,streamSettings,sniffing);

@override
String toString() {
  return 'InboundDetourConfig(protocol: $protocol, port: $port, listen: $listen, settings: $settings, tag: $tag, streamSettings: $streamSettings, sniffing: $sniffing)';
}


}

/// @nodoc
abstract mixin class $InboundDetourConfigCopyWith<$Res>  {
  factory $InboundDetourConfigCopyWith(InboundDetourConfig value, $Res Function(InboundDetourConfig) _then) = _$InboundDetourConfigCopyWithImpl;
@useResult
$Res call({
 String protocol, XrayPortList? port, XrayAddress? listen, XrayInboundSettings? settings, String? tag, StreamConfig? streamSettings, SniffingConfig? sniffing
});


$StreamConfigCopyWith<$Res>? get streamSettings;$SniffingConfigCopyWith<$Res>? get sniffing;

}
/// @nodoc
class _$InboundDetourConfigCopyWithImpl<$Res>
    implements $InboundDetourConfigCopyWith<$Res> {
  _$InboundDetourConfigCopyWithImpl(this._self, this._then);

  final InboundDetourConfig _self;
  final $Res Function(InboundDetourConfig) _then;

/// Create a copy of InboundDetourConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? protocol = null,Object? port = freezed,Object? listen = freezed,Object? settings = freezed,Object? tag = freezed,Object? streamSettings = freezed,Object? sniffing = freezed,}) {
  return _then(_self.copyWith(
protocol: null == protocol ? _self.protocol : protocol // ignore: cast_nullable_to_non_nullable
as String,port: freezed == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as XrayPortList?,listen: freezed == listen ? _self.listen : listen // ignore: cast_nullable_to_non_nullable
as XrayAddress?,settings: freezed == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as XrayInboundSettings?,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String?,streamSettings: freezed == streamSettings ? _self.streamSettings : streamSettings // ignore: cast_nullable_to_non_nullable
as StreamConfig?,sniffing: freezed == sniffing ? _self.sniffing : sniffing // ignore: cast_nullable_to_non_nullable
as SniffingConfig?,
  ));
}
/// Create a copy of InboundDetourConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreamConfigCopyWith<$Res>? get streamSettings {
    if (_self.streamSettings == null) {
    return null;
  }

  return $StreamConfigCopyWith<$Res>(_self.streamSettings!, (value) {
    return _then(_self.copyWith(streamSettings: value));
  });
}/// Create a copy of InboundDetourConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SniffingConfigCopyWith<$Res>? get sniffing {
    if (_self.sniffing == null) {
    return null;
  }

  return $SniffingConfigCopyWith<$Res>(_self.sniffing!, (value) {
    return _then(_self.copyWith(sniffing: value));
  });
}
}


/// Adds pattern-matching-related methods to [InboundDetourConfig].
extension InboundDetourConfigPatterns on InboundDetourConfig {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InboundDetourConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InboundDetourConfig() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InboundDetourConfig value)  $default,){
final _that = this;
switch (_that) {
case _InboundDetourConfig():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InboundDetourConfig value)?  $default,){
final _that = this;
switch (_that) {
case _InboundDetourConfig() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String protocol,  XrayPortList? port,  XrayAddress? listen,  XrayInboundSettings? settings,  String? tag,  StreamConfig? streamSettings,  SniffingConfig? sniffing)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InboundDetourConfig() when $default != null:
return $default(_that.protocol,_that.port,_that.listen,_that.settings,_that.tag,_that.streamSettings,_that.sniffing);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String protocol,  XrayPortList? port,  XrayAddress? listen,  XrayInboundSettings? settings,  String? tag,  StreamConfig? streamSettings,  SniffingConfig? sniffing)  $default,) {final _that = this;
switch (_that) {
case _InboundDetourConfig():
return $default(_that.protocol,_that.port,_that.listen,_that.settings,_that.tag,_that.streamSettings,_that.sniffing);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String protocol,  XrayPortList? port,  XrayAddress? listen,  XrayInboundSettings? settings,  String? tag,  StreamConfig? streamSettings,  SniffingConfig? sniffing)?  $default,) {final _that = this;
switch (_that) {
case _InboundDetourConfig() when $default != null:
return $default(_that.protocol,_that.port,_that.listen,_that.settings,_that.tag,_that.streamSettings,_that.sniffing);case _:
  return null;

}
}

}

/// @nodoc


class _InboundDetourConfig extends InboundDetourConfig {
  const _InboundDetourConfig({required this.protocol, this.port, this.listen, this.settings, this.tag, this.streamSettings, this.sniffing}): super._();
  

@override final  String protocol;
@override final  XrayPortList? port;
@override final  XrayAddress? listen;
@override final  XrayInboundSettings? settings;
@override final  String? tag;
@override final  StreamConfig? streamSettings;
@override final  SniffingConfig? sniffing;

/// Create a copy of InboundDetourConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InboundDetourConfigCopyWith<_InboundDetourConfig> get copyWith => __$InboundDetourConfigCopyWithImpl<_InboundDetourConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InboundDetourConfig&&(identical(other.protocol, protocol) || other.protocol == protocol)&&(identical(other.port, port) || other.port == port)&&(identical(other.listen, listen) || other.listen == listen)&&(identical(other.settings, settings) || other.settings == settings)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.streamSettings, streamSettings) || other.streamSettings == streamSettings)&&(identical(other.sniffing, sniffing) || other.sniffing == sniffing));
}


@override
int get hashCode => Object.hash(runtimeType,protocol,port,listen,settings,tag,streamSettings,sniffing);

@override
String toString() {
  return 'InboundDetourConfig(protocol: $protocol, port: $port, listen: $listen, settings: $settings, tag: $tag, streamSettings: $streamSettings, sniffing: $sniffing)';
}


}

/// @nodoc
abstract mixin class _$InboundDetourConfigCopyWith<$Res> implements $InboundDetourConfigCopyWith<$Res> {
  factory _$InboundDetourConfigCopyWith(_InboundDetourConfig value, $Res Function(_InboundDetourConfig) _then) = __$InboundDetourConfigCopyWithImpl;
@override @useResult
$Res call({
 String protocol, XrayPortList? port, XrayAddress? listen, XrayInboundSettings? settings, String? tag, StreamConfig? streamSettings, SniffingConfig? sniffing
});


@override $StreamConfigCopyWith<$Res>? get streamSettings;@override $SniffingConfigCopyWith<$Res>? get sniffing;

}
/// @nodoc
class __$InboundDetourConfigCopyWithImpl<$Res>
    implements _$InboundDetourConfigCopyWith<$Res> {
  __$InboundDetourConfigCopyWithImpl(this._self, this._then);

  final _InboundDetourConfig _self;
  final $Res Function(_InboundDetourConfig) _then;

/// Create a copy of InboundDetourConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? protocol = null,Object? port = freezed,Object? listen = freezed,Object? settings = freezed,Object? tag = freezed,Object? streamSettings = freezed,Object? sniffing = freezed,}) {
  return _then(_InboundDetourConfig(
protocol: null == protocol ? _self.protocol : protocol // ignore: cast_nullable_to_non_nullable
as String,port: freezed == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as XrayPortList?,listen: freezed == listen ? _self.listen : listen // ignore: cast_nullable_to_non_nullable
as XrayAddress?,settings: freezed == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as XrayInboundSettings?,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String?,streamSettings: freezed == streamSettings ? _self.streamSettings : streamSettings // ignore: cast_nullable_to_non_nullable
as StreamConfig?,sniffing: freezed == sniffing ? _self.sniffing : sniffing // ignore: cast_nullable_to_non_nullable
as SniffingConfig?,
  ));
}

/// Create a copy of InboundDetourConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreamConfigCopyWith<$Res>? get streamSettings {
    if (_self.streamSettings == null) {
    return null;
  }

  return $StreamConfigCopyWith<$Res>(_self.streamSettings!, (value) {
    return _then(_self.copyWith(streamSettings: value));
  });
}/// Create a copy of InboundDetourConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SniffingConfigCopyWith<$Res>? get sniffing {
    if (_self.sniffing == null) {
    return null;
  }

  return $SniffingConfigCopyWith<$Res>(_self.sniffing!, (value) {
    return _then(_self.copyWith(sniffing: value));
  });
}
}

/// @nodoc
mixin _$LogConfig {

 String? get access; String? get error; LogLevel? get loglevel; bool? get dnsLog; String? get maskAddress;
/// Create a copy of LogConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LogConfigCopyWith<LogConfig> get copyWith => _$LogConfigCopyWithImpl<LogConfig>(this as LogConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LogConfig&&(identical(other.access, access) || other.access == access)&&(identical(other.error, error) || other.error == error)&&(identical(other.loglevel, loglevel) || other.loglevel == loglevel)&&(identical(other.dnsLog, dnsLog) || other.dnsLog == dnsLog)&&(identical(other.maskAddress, maskAddress) || other.maskAddress == maskAddress));
}


@override
int get hashCode => Object.hash(runtimeType,access,error,loglevel,dnsLog,maskAddress);

@override
String toString() {
  return 'LogConfig(access: $access, error: $error, loglevel: $loglevel, dnsLog: $dnsLog, maskAddress: $maskAddress)';
}


}

/// @nodoc
abstract mixin class $LogConfigCopyWith<$Res>  {
  factory $LogConfigCopyWith(LogConfig value, $Res Function(LogConfig) _then) = _$LogConfigCopyWithImpl;
@useResult
$Res call({
 String? access, String? error, LogLevel? loglevel, bool? dnsLog, String? maskAddress
});




}
/// @nodoc
class _$LogConfigCopyWithImpl<$Res>
    implements $LogConfigCopyWith<$Res> {
  _$LogConfigCopyWithImpl(this._self, this._then);

  final LogConfig _self;
  final $Res Function(LogConfig) _then;

/// Create a copy of LogConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? access = freezed,Object? error = freezed,Object? loglevel = freezed,Object? dnsLog = freezed,Object? maskAddress = freezed,}) {
  return _then(_self.copyWith(
access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,loglevel: freezed == loglevel ? _self.loglevel : loglevel // ignore: cast_nullable_to_non_nullable
as LogLevel?,dnsLog: freezed == dnsLog ? _self.dnsLog : dnsLog // ignore: cast_nullable_to_non_nullable
as bool?,maskAddress: freezed == maskAddress ? _self.maskAddress : maskAddress // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LogConfig].
extension LogConfigPatterns on LogConfig {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LogConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LogConfig() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LogConfig value)  $default,){
final _that = this;
switch (_that) {
case _LogConfig():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LogConfig value)?  $default,){
final _that = this;
switch (_that) {
case _LogConfig() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? access,  String? error,  LogLevel? loglevel,  bool? dnsLog,  String? maskAddress)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LogConfig() when $default != null:
return $default(_that.access,_that.error,_that.loglevel,_that.dnsLog,_that.maskAddress);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? access,  String? error,  LogLevel? loglevel,  bool? dnsLog,  String? maskAddress)  $default,) {final _that = this;
switch (_that) {
case _LogConfig():
return $default(_that.access,_that.error,_that.loglevel,_that.dnsLog,_that.maskAddress);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? access,  String? error,  LogLevel? loglevel,  bool? dnsLog,  String? maskAddress)?  $default,) {final _that = this;
switch (_that) {
case _LogConfig() when $default != null:
return $default(_that.access,_that.error,_that.loglevel,_that.dnsLog,_that.maskAddress);case _:
  return null;

}
}

}

/// @nodoc


class _LogConfig extends LogConfig {
  const _LogConfig({this.access, this.error, this.loglevel, this.dnsLog, this.maskAddress}): super._();
  

@override final  String? access;
@override final  String? error;
@override final  LogLevel? loglevel;
@override final  bool? dnsLog;
@override final  String? maskAddress;

/// Create a copy of LogConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LogConfigCopyWith<_LogConfig> get copyWith => __$LogConfigCopyWithImpl<_LogConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LogConfig&&(identical(other.access, access) || other.access == access)&&(identical(other.error, error) || other.error == error)&&(identical(other.loglevel, loglevel) || other.loglevel == loglevel)&&(identical(other.dnsLog, dnsLog) || other.dnsLog == dnsLog)&&(identical(other.maskAddress, maskAddress) || other.maskAddress == maskAddress));
}


@override
int get hashCode => Object.hash(runtimeType,access,error,loglevel,dnsLog,maskAddress);

@override
String toString() {
  return 'LogConfig(access: $access, error: $error, loglevel: $loglevel, dnsLog: $dnsLog, maskAddress: $maskAddress)';
}


}

/// @nodoc
abstract mixin class _$LogConfigCopyWith<$Res> implements $LogConfigCopyWith<$Res> {
  factory _$LogConfigCopyWith(_LogConfig value, $Res Function(_LogConfig) _then) = __$LogConfigCopyWithImpl;
@override @useResult
$Res call({
 String? access, String? error, LogLevel? loglevel, bool? dnsLog, String? maskAddress
});




}
/// @nodoc
class __$LogConfigCopyWithImpl<$Res>
    implements _$LogConfigCopyWith<$Res> {
  __$LogConfigCopyWithImpl(this._self, this._then);

  final _LogConfig _self;
  final $Res Function(_LogConfig) _then;

/// Create a copy of LogConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? access = freezed,Object? error = freezed,Object? loglevel = freezed,Object? dnsLog = freezed,Object? maskAddress = freezed,}) {
  return _then(_LogConfig(
access: freezed == access ? _self.access : access // ignore: cast_nullable_to_non_nullable
as String?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,loglevel: freezed == loglevel ? _self.loglevel : loglevel // ignore: cast_nullable_to_non_nullable
as LogLevel?,dnsLog: freezed == dnsLog ? _self.dnsLog : dnsLog // ignore: cast_nullable_to_non_nullable
as bool?,maskAddress: freezed == maskAddress ? _self.maskAddress : maskAddress // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$MuxConfig {

 bool? get enabled; int? get concurrency; int? get xudpConcurrency; String? get xudpProxyUDP443;
/// Create a copy of MuxConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MuxConfigCopyWith<MuxConfig> get copyWith => _$MuxConfigCopyWithImpl<MuxConfig>(this as MuxConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MuxConfig&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.concurrency, concurrency) || other.concurrency == concurrency)&&(identical(other.xudpConcurrency, xudpConcurrency) || other.xudpConcurrency == xudpConcurrency)&&(identical(other.xudpProxyUDP443, xudpProxyUDP443) || other.xudpProxyUDP443 == xudpProxyUDP443));
}


@override
int get hashCode => Object.hash(runtimeType,enabled,concurrency,xudpConcurrency,xudpProxyUDP443);

@override
String toString() {
  return 'MuxConfig(enabled: $enabled, concurrency: $concurrency, xudpConcurrency: $xudpConcurrency, xudpProxyUDP443: $xudpProxyUDP443)';
}


}

/// @nodoc
abstract mixin class $MuxConfigCopyWith<$Res>  {
  factory $MuxConfigCopyWith(MuxConfig value, $Res Function(MuxConfig) _then) = _$MuxConfigCopyWithImpl;
@useResult
$Res call({
 bool? enabled, int? concurrency, int? xudpConcurrency, String? xudpProxyUDP443
});




}
/// @nodoc
class _$MuxConfigCopyWithImpl<$Res>
    implements $MuxConfigCopyWith<$Res> {
  _$MuxConfigCopyWithImpl(this._self, this._then);

  final MuxConfig _self;
  final $Res Function(MuxConfig) _then;

/// Create a copy of MuxConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? enabled = freezed,Object? concurrency = freezed,Object? xudpConcurrency = freezed,Object? xudpProxyUDP443 = freezed,}) {
  return _then(_self.copyWith(
enabled: freezed == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool?,concurrency: freezed == concurrency ? _self.concurrency : concurrency // ignore: cast_nullable_to_non_nullable
as int?,xudpConcurrency: freezed == xudpConcurrency ? _self.xudpConcurrency : xudpConcurrency // ignore: cast_nullable_to_non_nullable
as int?,xudpProxyUDP443: freezed == xudpProxyUDP443 ? _self.xudpProxyUDP443 : xudpProxyUDP443 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MuxConfig].
extension MuxConfigPatterns on MuxConfig {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MuxConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MuxConfig() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MuxConfig value)  $default,){
final _that = this;
switch (_that) {
case _MuxConfig():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MuxConfig value)?  $default,){
final _that = this;
switch (_that) {
case _MuxConfig() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? enabled,  int? concurrency,  int? xudpConcurrency,  String? xudpProxyUDP443)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MuxConfig() when $default != null:
return $default(_that.enabled,_that.concurrency,_that.xudpConcurrency,_that.xudpProxyUDP443);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? enabled,  int? concurrency,  int? xudpConcurrency,  String? xudpProxyUDP443)  $default,) {final _that = this;
switch (_that) {
case _MuxConfig():
return $default(_that.enabled,_that.concurrency,_that.xudpConcurrency,_that.xudpProxyUDP443);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? enabled,  int? concurrency,  int? xudpConcurrency,  String? xudpProxyUDP443)?  $default,) {final _that = this;
switch (_that) {
case _MuxConfig() when $default != null:
return $default(_that.enabled,_that.concurrency,_that.xudpConcurrency,_that.xudpProxyUDP443);case _:
  return null;

}
}

}

/// @nodoc


class _MuxConfig extends MuxConfig {
  const _MuxConfig({this.enabled, this.concurrency, this.xudpConcurrency, this.xudpProxyUDP443}): super._();
  

@override final  bool? enabled;
@override final  int? concurrency;
@override final  int? xudpConcurrency;
@override final  String? xudpProxyUDP443;

/// Create a copy of MuxConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MuxConfigCopyWith<_MuxConfig> get copyWith => __$MuxConfigCopyWithImpl<_MuxConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MuxConfig&&(identical(other.enabled, enabled) || other.enabled == enabled)&&(identical(other.concurrency, concurrency) || other.concurrency == concurrency)&&(identical(other.xudpConcurrency, xudpConcurrency) || other.xudpConcurrency == xudpConcurrency)&&(identical(other.xudpProxyUDP443, xudpProxyUDP443) || other.xudpProxyUDP443 == xudpProxyUDP443));
}


@override
int get hashCode => Object.hash(runtimeType,enabled,concurrency,xudpConcurrency,xudpProxyUDP443);

@override
String toString() {
  return 'MuxConfig(enabled: $enabled, concurrency: $concurrency, xudpConcurrency: $xudpConcurrency, xudpProxyUDP443: $xudpProxyUDP443)';
}


}

/// @nodoc
abstract mixin class _$MuxConfigCopyWith<$Res> implements $MuxConfigCopyWith<$Res> {
  factory _$MuxConfigCopyWith(_MuxConfig value, $Res Function(_MuxConfig) _then) = __$MuxConfigCopyWithImpl;
@override @useResult
$Res call({
 bool? enabled, int? concurrency, int? xudpConcurrency, String? xudpProxyUDP443
});




}
/// @nodoc
class __$MuxConfigCopyWithImpl<$Res>
    implements _$MuxConfigCopyWith<$Res> {
  __$MuxConfigCopyWithImpl(this._self, this._then);

  final _MuxConfig _self;
  final $Res Function(_MuxConfig) _then;

/// Create a copy of MuxConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? enabled = freezed,Object? concurrency = freezed,Object? xudpConcurrency = freezed,Object? xudpProxyUDP443 = freezed,}) {
  return _then(_MuxConfig(
enabled: freezed == enabled ? _self.enabled : enabled // ignore: cast_nullable_to_non_nullable
as bool?,concurrency: freezed == concurrency ? _self.concurrency : concurrency // ignore: cast_nullable_to_non_nullable
as int?,xudpConcurrency: freezed == xudpConcurrency ? _self.xudpConcurrency : xudpConcurrency // ignore: cast_nullable_to_non_nullable
as int?,xudpProxyUDP443: freezed == xudpProxyUDP443 ? _self.xudpProxyUDP443 : xudpProxyUDP443 // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$OutboundDetourConfig {

 String get protocol; String? get sendThrough; String? get tag; XrayOutboundSettings? get settings; StreamConfig? get streamSettings; ProxyConfig? get proxySettings; MuxConfig? get mux; XrayTargetStrategy? get targetStrategy;
/// Create a copy of OutboundDetourConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OutboundDetourConfigCopyWith<OutboundDetourConfig> get copyWith => _$OutboundDetourConfigCopyWithImpl<OutboundDetourConfig>(this as OutboundDetourConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OutboundDetourConfig&&(identical(other.protocol, protocol) || other.protocol == protocol)&&(identical(other.sendThrough, sendThrough) || other.sendThrough == sendThrough)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.settings, settings) || other.settings == settings)&&(identical(other.streamSettings, streamSettings) || other.streamSettings == streamSettings)&&(identical(other.proxySettings, proxySettings) || other.proxySettings == proxySettings)&&(identical(other.mux, mux) || other.mux == mux)&&(identical(other.targetStrategy, targetStrategy) || other.targetStrategy == targetStrategy));
}


@override
int get hashCode => Object.hash(runtimeType,protocol,sendThrough,tag,settings,streamSettings,proxySettings,mux,targetStrategy);

@override
String toString() {
  return 'OutboundDetourConfig(protocol: $protocol, sendThrough: $sendThrough, tag: $tag, settings: $settings, streamSettings: $streamSettings, proxySettings: $proxySettings, mux: $mux, targetStrategy: $targetStrategy)';
}


}

/// @nodoc
abstract mixin class $OutboundDetourConfigCopyWith<$Res>  {
  factory $OutboundDetourConfigCopyWith(OutboundDetourConfig value, $Res Function(OutboundDetourConfig) _then) = _$OutboundDetourConfigCopyWithImpl;
@useResult
$Res call({
 String protocol, String? sendThrough, String? tag, XrayOutboundSettings? settings, StreamConfig? streamSettings, ProxyConfig? proxySettings, MuxConfig? mux, XrayTargetStrategy? targetStrategy
});


$StreamConfigCopyWith<$Res>? get streamSettings;$ProxyConfigCopyWith<$Res>? get proxySettings;$MuxConfigCopyWith<$Res>? get mux;

}
/// @nodoc
class _$OutboundDetourConfigCopyWithImpl<$Res>
    implements $OutboundDetourConfigCopyWith<$Res> {
  _$OutboundDetourConfigCopyWithImpl(this._self, this._then);

  final OutboundDetourConfig _self;
  final $Res Function(OutboundDetourConfig) _then;

/// Create a copy of OutboundDetourConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? protocol = null,Object? sendThrough = freezed,Object? tag = freezed,Object? settings = freezed,Object? streamSettings = freezed,Object? proxySettings = freezed,Object? mux = freezed,Object? targetStrategy = freezed,}) {
  return _then(_self.copyWith(
protocol: null == protocol ? _self.protocol : protocol // ignore: cast_nullable_to_non_nullable
as String,sendThrough: freezed == sendThrough ? _self.sendThrough : sendThrough // ignore: cast_nullable_to_non_nullable
as String?,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String?,settings: freezed == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as XrayOutboundSettings?,streamSettings: freezed == streamSettings ? _self.streamSettings : streamSettings // ignore: cast_nullable_to_non_nullable
as StreamConfig?,proxySettings: freezed == proxySettings ? _self.proxySettings : proxySettings // ignore: cast_nullable_to_non_nullable
as ProxyConfig?,mux: freezed == mux ? _self.mux : mux // ignore: cast_nullable_to_non_nullable
as MuxConfig?,targetStrategy: freezed == targetStrategy ? _self.targetStrategy : targetStrategy // ignore: cast_nullable_to_non_nullable
as XrayTargetStrategy?,
  ));
}
/// Create a copy of OutboundDetourConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreamConfigCopyWith<$Res>? get streamSettings {
    if (_self.streamSettings == null) {
    return null;
  }

  return $StreamConfigCopyWith<$Res>(_self.streamSettings!, (value) {
    return _then(_self.copyWith(streamSettings: value));
  });
}/// Create a copy of OutboundDetourConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProxyConfigCopyWith<$Res>? get proxySettings {
    if (_self.proxySettings == null) {
    return null;
  }

  return $ProxyConfigCopyWith<$Res>(_self.proxySettings!, (value) {
    return _then(_self.copyWith(proxySettings: value));
  });
}/// Create a copy of OutboundDetourConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MuxConfigCopyWith<$Res>? get mux {
    if (_self.mux == null) {
    return null;
  }

  return $MuxConfigCopyWith<$Res>(_self.mux!, (value) {
    return _then(_self.copyWith(mux: value));
  });
}
}


/// Adds pattern-matching-related methods to [OutboundDetourConfig].
extension OutboundDetourConfigPatterns on OutboundDetourConfig {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OutboundDetourConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OutboundDetourConfig() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OutboundDetourConfig value)  $default,){
final _that = this;
switch (_that) {
case _OutboundDetourConfig():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OutboundDetourConfig value)?  $default,){
final _that = this;
switch (_that) {
case _OutboundDetourConfig() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String protocol,  String? sendThrough,  String? tag,  XrayOutboundSettings? settings,  StreamConfig? streamSettings,  ProxyConfig? proxySettings,  MuxConfig? mux,  XrayTargetStrategy? targetStrategy)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OutboundDetourConfig() when $default != null:
return $default(_that.protocol,_that.sendThrough,_that.tag,_that.settings,_that.streamSettings,_that.proxySettings,_that.mux,_that.targetStrategy);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String protocol,  String? sendThrough,  String? tag,  XrayOutboundSettings? settings,  StreamConfig? streamSettings,  ProxyConfig? proxySettings,  MuxConfig? mux,  XrayTargetStrategy? targetStrategy)  $default,) {final _that = this;
switch (_that) {
case _OutboundDetourConfig():
return $default(_that.protocol,_that.sendThrough,_that.tag,_that.settings,_that.streamSettings,_that.proxySettings,_that.mux,_that.targetStrategy);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String protocol,  String? sendThrough,  String? tag,  XrayOutboundSettings? settings,  StreamConfig? streamSettings,  ProxyConfig? proxySettings,  MuxConfig? mux,  XrayTargetStrategy? targetStrategy)?  $default,) {final _that = this;
switch (_that) {
case _OutboundDetourConfig() when $default != null:
return $default(_that.protocol,_that.sendThrough,_that.tag,_that.settings,_that.streamSettings,_that.proxySettings,_that.mux,_that.targetStrategy);case _:
  return null;

}
}

}

/// @nodoc


class _OutboundDetourConfig extends OutboundDetourConfig {
  const _OutboundDetourConfig({required this.protocol, this.sendThrough, this.tag, this.settings, this.streamSettings, this.proxySettings, this.mux, this.targetStrategy}): super._();
  

@override final  String protocol;
@override final  String? sendThrough;
@override final  String? tag;
@override final  XrayOutboundSettings? settings;
@override final  StreamConfig? streamSettings;
@override final  ProxyConfig? proxySettings;
@override final  MuxConfig? mux;
@override final  XrayTargetStrategy? targetStrategy;

/// Create a copy of OutboundDetourConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OutboundDetourConfigCopyWith<_OutboundDetourConfig> get copyWith => __$OutboundDetourConfigCopyWithImpl<_OutboundDetourConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OutboundDetourConfig&&(identical(other.protocol, protocol) || other.protocol == protocol)&&(identical(other.sendThrough, sendThrough) || other.sendThrough == sendThrough)&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.settings, settings) || other.settings == settings)&&(identical(other.streamSettings, streamSettings) || other.streamSettings == streamSettings)&&(identical(other.proxySettings, proxySettings) || other.proxySettings == proxySettings)&&(identical(other.mux, mux) || other.mux == mux)&&(identical(other.targetStrategy, targetStrategy) || other.targetStrategy == targetStrategy));
}


@override
int get hashCode => Object.hash(runtimeType,protocol,sendThrough,tag,settings,streamSettings,proxySettings,mux,targetStrategy);

@override
String toString() {
  return 'OutboundDetourConfig(protocol: $protocol, sendThrough: $sendThrough, tag: $tag, settings: $settings, streamSettings: $streamSettings, proxySettings: $proxySettings, mux: $mux, targetStrategy: $targetStrategy)';
}


}

/// @nodoc
abstract mixin class _$OutboundDetourConfigCopyWith<$Res> implements $OutboundDetourConfigCopyWith<$Res> {
  factory _$OutboundDetourConfigCopyWith(_OutboundDetourConfig value, $Res Function(_OutboundDetourConfig) _then) = __$OutboundDetourConfigCopyWithImpl;
@override @useResult
$Res call({
 String protocol, String? sendThrough, String? tag, XrayOutboundSettings? settings, StreamConfig? streamSettings, ProxyConfig? proxySettings, MuxConfig? mux, XrayTargetStrategy? targetStrategy
});


@override $StreamConfigCopyWith<$Res>? get streamSettings;@override $ProxyConfigCopyWith<$Res>? get proxySettings;@override $MuxConfigCopyWith<$Res>? get mux;

}
/// @nodoc
class __$OutboundDetourConfigCopyWithImpl<$Res>
    implements _$OutboundDetourConfigCopyWith<$Res> {
  __$OutboundDetourConfigCopyWithImpl(this._self, this._then);

  final _OutboundDetourConfig _self;
  final $Res Function(_OutboundDetourConfig) _then;

/// Create a copy of OutboundDetourConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? protocol = null,Object? sendThrough = freezed,Object? tag = freezed,Object? settings = freezed,Object? streamSettings = freezed,Object? proxySettings = freezed,Object? mux = freezed,Object? targetStrategy = freezed,}) {
  return _then(_OutboundDetourConfig(
protocol: null == protocol ? _self.protocol : protocol // ignore: cast_nullable_to_non_nullable
as String,sendThrough: freezed == sendThrough ? _self.sendThrough : sendThrough // ignore: cast_nullable_to_non_nullable
as String?,tag: freezed == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String?,settings: freezed == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as XrayOutboundSettings?,streamSettings: freezed == streamSettings ? _self.streamSettings : streamSettings // ignore: cast_nullable_to_non_nullable
as StreamConfig?,proxySettings: freezed == proxySettings ? _self.proxySettings : proxySettings // ignore: cast_nullable_to_non_nullable
as ProxyConfig?,mux: freezed == mux ? _self.mux : mux // ignore: cast_nullable_to_non_nullable
as MuxConfig?,targetStrategy: freezed == targetStrategy ? _self.targetStrategy : targetStrategy // ignore: cast_nullable_to_non_nullable
as XrayTargetStrategy?,
  ));
}

/// Create a copy of OutboundDetourConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreamConfigCopyWith<$Res>? get streamSettings {
    if (_self.streamSettings == null) {
    return null;
  }

  return $StreamConfigCopyWith<$Res>(_self.streamSettings!, (value) {
    return _then(_self.copyWith(streamSettings: value));
  });
}/// Create a copy of OutboundDetourConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProxyConfigCopyWith<$Res>? get proxySettings {
    if (_self.proxySettings == null) {
    return null;
  }

  return $ProxyConfigCopyWith<$Res>(_self.proxySettings!, (value) {
    return _then(_self.copyWith(proxySettings: value));
  });
}/// Create a copy of OutboundDetourConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MuxConfigCopyWith<$Res>? get mux {
    if (_self.mux == null) {
    return null;
  }

  return $MuxConfigCopyWith<$Res>(_self.mux!, (value) {
    return _then(_self.copyWith(mux: value));
  });
}
}

/// @nodoc
mixin _$ProxyConfig {

 String get tag; bool? get transportLayer;
/// Create a copy of ProxyConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProxyConfigCopyWith<ProxyConfig> get copyWith => _$ProxyConfigCopyWithImpl<ProxyConfig>(this as ProxyConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProxyConfig&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.transportLayer, transportLayer) || other.transportLayer == transportLayer));
}


@override
int get hashCode => Object.hash(runtimeType,tag,transportLayer);

@override
String toString() {
  return 'ProxyConfig(tag: $tag, transportLayer: $transportLayer)';
}


}

/// @nodoc
abstract mixin class $ProxyConfigCopyWith<$Res>  {
  factory $ProxyConfigCopyWith(ProxyConfig value, $Res Function(ProxyConfig) _then) = _$ProxyConfigCopyWithImpl;
@useResult
$Res call({
 String tag, bool? transportLayer
});




}
/// @nodoc
class _$ProxyConfigCopyWithImpl<$Res>
    implements $ProxyConfigCopyWith<$Res> {
  _$ProxyConfigCopyWithImpl(this._self, this._then);

  final ProxyConfig _self;
  final $Res Function(ProxyConfig) _then;

/// Create a copy of ProxyConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tag = null,Object? transportLayer = freezed,}) {
  return _then(_self.copyWith(
tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,transportLayer: freezed == transportLayer ? _self.transportLayer : transportLayer // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProxyConfig].
extension ProxyConfigPatterns on ProxyConfig {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProxyConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProxyConfig() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProxyConfig value)  $default,){
final _that = this;
switch (_that) {
case _ProxyConfig():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProxyConfig value)?  $default,){
final _that = this;
switch (_that) {
case _ProxyConfig() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String tag,  bool? transportLayer)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProxyConfig() when $default != null:
return $default(_that.tag,_that.transportLayer);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String tag,  bool? transportLayer)  $default,) {final _that = this;
switch (_that) {
case _ProxyConfig():
return $default(_that.tag,_that.transportLayer);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String tag,  bool? transportLayer)?  $default,) {final _that = this;
switch (_that) {
case _ProxyConfig() when $default != null:
return $default(_that.tag,_that.transportLayer);case _:
  return null;

}
}

}

/// @nodoc


class _ProxyConfig extends ProxyConfig {
  const _ProxyConfig({required this.tag, this.transportLayer}): super._();
  

@override final  String tag;
@override final  bool? transportLayer;

/// Create a copy of ProxyConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProxyConfigCopyWith<_ProxyConfig> get copyWith => __$ProxyConfigCopyWithImpl<_ProxyConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProxyConfig&&(identical(other.tag, tag) || other.tag == tag)&&(identical(other.transportLayer, transportLayer) || other.transportLayer == transportLayer));
}


@override
int get hashCode => Object.hash(runtimeType,tag,transportLayer);

@override
String toString() {
  return 'ProxyConfig(tag: $tag, transportLayer: $transportLayer)';
}


}

/// @nodoc
abstract mixin class _$ProxyConfigCopyWith<$Res> implements $ProxyConfigCopyWith<$Res> {
  factory _$ProxyConfigCopyWith(_ProxyConfig value, $Res Function(_ProxyConfig) _then) = __$ProxyConfigCopyWithImpl;
@override @useResult
$Res call({
 String tag, bool? transportLayer
});




}
/// @nodoc
class __$ProxyConfigCopyWithImpl<$Res>
    implements _$ProxyConfigCopyWith<$Res> {
  __$ProxyConfigCopyWithImpl(this._self, this._then);

  final _ProxyConfig _self;
  final $Res Function(_ProxyConfig) _then;

/// Create a copy of ProxyConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tag = null,Object? transportLayer = freezed,}) {
  return _then(_ProxyConfig(
tag: null == tag ? _self.tag : tag // ignore: cast_nullable_to_non_nullable
as String,transportLayer: freezed == transportLayer ? _self.transportLayer : transportLayer // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc
mixin _$XrayConfig {

 Map<String, dynamic>? get transport; LogConfig? get log; RouterConfig? get routing; DNSConfig? get dns; List<InboundDetourConfig>? get inbounds; List<OutboundDetourConfig>? get outbounds; PolicyConfig? get policy; APIConfig? get api; MetricsConfig? get metrics; StatsConfig? get stats; ReverseConfig? get reverse;@JsonKey(name: 'fakeDns') FakeDNSConfig? get fakeDns; ObservatoryConfig? get observatory; BurstObservatoryConfig? get burstObservatory; VersionConfig? get version; GeodataConfig? get geodata;
/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$XrayConfigCopyWith<XrayConfig> get copyWith => _$XrayConfigCopyWithImpl<XrayConfig>(this as XrayConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is XrayConfig&&const DeepCollectionEquality().equals(other.transport, transport)&&(identical(other.log, log) || other.log == log)&&(identical(other.routing, routing) || other.routing == routing)&&(identical(other.dns, dns) || other.dns == dns)&&const DeepCollectionEquality().equals(other.inbounds, inbounds)&&const DeepCollectionEquality().equals(other.outbounds, outbounds)&&(identical(other.policy, policy) || other.policy == policy)&&(identical(other.api, api) || other.api == api)&&(identical(other.metrics, metrics) || other.metrics == metrics)&&(identical(other.stats, stats) || other.stats == stats)&&(identical(other.reverse, reverse) || other.reverse == reverse)&&(identical(other.fakeDns, fakeDns) || other.fakeDns == fakeDns)&&(identical(other.observatory, observatory) || other.observatory == observatory)&&(identical(other.burstObservatory, burstObservatory) || other.burstObservatory == burstObservatory)&&(identical(other.version, version) || other.version == version)&&(identical(other.geodata, geodata) || other.geodata == geodata));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(transport),log,routing,dns,const DeepCollectionEquality().hash(inbounds),const DeepCollectionEquality().hash(outbounds),policy,api,metrics,stats,reverse,fakeDns,observatory,burstObservatory,version,geodata);

@override
String toString() {
  return 'XrayConfig(transport: $transport, log: $log, routing: $routing, dns: $dns, inbounds: $inbounds, outbounds: $outbounds, policy: $policy, api: $api, metrics: $metrics, stats: $stats, reverse: $reverse, fakeDns: $fakeDns, observatory: $observatory, burstObservatory: $burstObservatory, version: $version, geodata: $geodata)';
}


}

/// @nodoc
abstract mixin class $XrayConfigCopyWith<$Res>  {
  factory $XrayConfigCopyWith(XrayConfig value, $Res Function(XrayConfig) _then) = _$XrayConfigCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic>? transport, LogConfig? log, RouterConfig? routing, DNSConfig? dns, List<InboundDetourConfig>? inbounds, List<OutboundDetourConfig>? outbounds, PolicyConfig? policy, APIConfig? api, MetricsConfig? metrics, StatsConfig? stats, ReverseConfig? reverse,@JsonKey(name: 'fakeDns') FakeDNSConfig? fakeDns, ObservatoryConfig? observatory, BurstObservatoryConfig? burstObservatory, VersionConfig? version, GeodataConfig? geodata
});


$LogConfigCopyWith<$Res>? get log;$RouterConfigCopyWith<$Res>? get routing;$DNSConfigCopyWith<$Res>? get dns;$PolicyConfigCopyWith<$Res>? get policy;$APIConfigCopyWith<$Res>? get api;$MetricsConfigCopyWith<$Res>? get metrics;$StatsConfigCopyWith<$Res>? get stats;$ReverseConfigCopyWith<$Res>? get reverse;$ObservatoryConfigCopyWith<$Res>? get observatory;$BurstObservatoryConfigCopyWith<$Res>? get burstObservatory;$VersionConfigCopyWith<$Res>? get version;$GeodataConfigCopyWith<$Res>? get geodata;

}
/// @nodoc
class _$XrayConfigCopyWithImpl<$Res>
    implements $XrayConfigCopyWith<$Res> {
  _$XrayConfigCopyWithImpl(this._self, this._then);

  final XrayConfig _self;
  final $Res Function(XrayConfig) _then;

/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? transport = freezed,Object? log = freezed,Object? routing = freezed,Object? dns = freezed,Object? inbounds = freezed,Object? outbounds = freezed,Object? policy = freezed,Object? api = freezed,Object? metrics = freezed,Object? stats = freezed,Object? reverse = freezed,Object? fakeDns = freezed,Object? observatory = freezed,Object? burstObservatory = freezed,Object? version = freezed,Object? geodata = freezed,}) {
  return _then(_self.copyWith(
transport: freezed == transport ? _self.transport : transport // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,log: freezed == log ? _self.log : log // ignore: cast_nullable_to_non_nullable
as LogConfig?,routing: freezed == routing ? _self.routing : routing // ignore: cast_nullable_to_non_nullable
as RouterConfig?,dns: freezed == dns ? _self.dns : dns // ignore: cast_nullable_to_non_nullable
as DNSConfig?,inbounds: freezed == inbounds ? _self.inbounds : inbounds // ignore: cast_nullable_to_non_nullable
as List<InboundDetourConfig>?,outbounds: freezed == outbounds ? _self.outbounds : outbounds // ignore: cast_nullable_to_non_nullable
as List<OutboundDetourConfig>?,policy: freezed == policy ? _self.policy : policy // ignore: cast_nullable_to_non_nullable
as PolicyConfig?,api: freezed == api ? _self.api : api // ignore: cast_nullable_to_non_nullable
as APIConfig?,metrics: freezed == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as MetricsConfig?,stats: freezed == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as StatsConfig?,reverse: freezed == reverse ? _self.reverse : reverse // ignore: cast_nullable_to_non_nullable
as ReverseConfig?,fakeDns: freezed == fakeDns ? _self.fakeDns : fakeDns // ignore: cast_nullable_to_non_nullable
as FakeDNSConfig?,observatory: freezed == observatory ? _self.observatory : observatory // ignore: cast_nullable_to_non_nullable
as ObservatoryConfig?,burstObservatory: freezed == burstObservatory ? _self.burstObservatory : burstObservatory // ignore: cast_nullable_to_non_nullable
as BurstObservatoryConfig?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as VersionConfig?,geodata: freezed == geodata ? _self.geodata : geodata // ignore: cast_nullable_to_non_nullable
as GeodataConfig?,
  ));
}
/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LogConfigCopyWith<$Res>? get log {
    if (_self.log == null) {
    return null;
  }

  return $LogConfigCopyWith<$Res>(_self.log!, (value) {
    return _then(_self.copyWith(log: value));
  });
}/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RouterConfigCopyWith<$Res>? get routing {
    if (_self.routing == null) {
    return null;
  }

  return $RouterConfigCopyWith<$Res>(_self.routing!, (value) {
    return _then(_self.copyWith(routing: value));
  });
}/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DNSConfigCopyWith<$Res>? get dns {
    if (_self.dns == null) {
    return null;
  }

  return $DNSConfigCopyWith<$Res>(_self.dns!, (value) {
    return _then(_self.copyWith(dns: value));
  });
}/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PolicyConfigCopyWith<$Res>? get policy {
    if (_self.policy == null) {
    return null;
  }

  return $PolicyConfigCopyWith<$Res>(_self.policy!, (value) {
    return _then(_self.copyWith(policy: value));
  });
}/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$APIConfigCopyWith<$Res>? get api {
    if (_self.api == null) {
    return null;
  }

  return $APIConfigCopyWith<$Res>(_self.api!, (value) {
    return _then(_self.copyWith(api: value));
  });
}/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetricsConfigCopyWith<$Res>? get metrics {
    if (_self.metrics == null) {
    return null;
  }

  return $MetricsConfigCopyWith<$Res>(_self.metrics!, (value) {
    return _then(_self.copyWith(metrics: value));
  });
}/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatsConfigCopyWith<$Res>? get stats {
    if (_self.stats == null) {
    return null;
  }

  return $StatsConfigCopyWith<$Res>(_self.stats!, (value) {
    return _then(_self.copyWith(stats: value));
  });
}/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReverseConfigCopyWith<$Res>? get reverse {
    if (_self.reverse == null) {
    return null;
  }

  return $ReverseConfigCopyWith<$Res>(_self.reverse!, (value) {
    return _then(_self.copyWith(reverse: value));
  });
}/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ObservatoryConfigCopyWith<$Res>? get observatory {
    if (_self.observatory == null) {
    return null;
  }

  return $ObservatoryConfigCopyWith<$Res>(_self.observatory!, (value) {
    return _then(_self.copyWith(observatory: value));
  });
}/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BurstObservatoryConfigCopyWith<$Res>? get burstObservatory {
    if (_self.burstObservatory == null) {
    return null;
  }

  return $BurstObservatoryConfigCopyWith<$Res>(_self.burstObservatory!, (value) {
    return _then(_self.copyWith(burstObservatory: value));
  });
}/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VersionConfigCopyWith<$Res>? get version {
    if (_self.version == null) {
    return null;
  }

  return $VersionConfigCopyWith<$Res>(_self.version!, (value) {
    return _then(_self.copyWith(version: value));
  });
}/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeodataConfigCopyWith<$Res>? get geodata {
    if (_self.geodata == null) {
    return null;
  }

  return $GeodataConfigCopyWith<$Res>(_self.geodata!, (value) {
    return _then(_self.copyWith(geodata: value));
  });
}
}


/// Adds pattern-matching-related methods to [XrayConfig].
extension XrayConfigPatterns on XrayConfig {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _XrayConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _XrayConfig() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _XrayConfig value)  $default,){
final _that = this;
switch (_that) {
case _XrayConfig():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _XrayConfig value)?  $default,){
final _that = this;
switch (_that) {
case _XrayConfig() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<String, dynamic>? transport,  LogConfig? log,  RouterConfig? routing,  DNSConfig? dns,  List<InboundDetourConfig>? inbounds,  List<OutboundDetourConfig>? outbounds,  PolicyConfig? policy,  APIConfig? api,  MetricsConfig? metrics,  StatsConfig? stats,  ReverseConfig? reverse, @JsonKey(name: 'fakeDns')  FakeDNSConfig? fakeDns,  ObservatoryConfig? observatory,  BurstObservatoryConfig? burstObservatory,  VersionConfig? version,  GeodataConfig? geodata)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _XrayConfig() when $default != null:
return $default(_that.transport,_that.log,_that.routing,_that.dns,_that.inbounds,_that.outbounds,_that.policy,_that.api,_that.metrics,_that.stats,_that.reverse,_that.fakeDns,_that.observatory,_that.burstObservatory,_that.version,_that.geodata);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<String, dynamic>? transport,  LogConfig? log,  RouterConfig? routing,  DNSConfig? dns,  List<InboundDetourConfig>? inbounds,  List<OutboundDetourConfig>? outbounds,  PolicyConfig? policy,  APIConfig? api,  MetricsConfig? metrics,  StatsConfig? stats,  ReverseConfig? reverse, @JsonKey(name: 'fakeDns')  FakeDNSConfig? fakeDns,  ObservatoryConfig? observatory,  BurstObservatoryConfig? burstObservatory,  VersionConfig? version,  GeodataConfig? geodata)  $default,) {final _that = this;
switch (_that) {
case _XrayConfig():
return $default(_that.transport,_that.log,_that.routing,_that.dns,_that.inbounds,_that.outbounds,_that.policy,_that.api,_that.metrics,_that.stats,_that.reverse,_that.fakeDns,_that.observatory,_that.burstObservatory,_that.version,_that.geodata);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<String, dynamic>? transport,  LogConfig? log,  RouterConfig? routing,  DNSConfig? dns,  List<InboundDetourConfig>? inbounds,  List<OutboundDetourConfig>? outbounds,  PolicyConfig? policy,  APIConfig? api,  MetricsConfig? metrics,  StatsConfig? stats,  ReverseConfig? reverse, @JsonKey(name: 'fakeDns')  FakeDNSConfig? fakeDns,  ObservatoryConfig? observatory,  BurstObservatoryConfig? burstObservatory,  VersionConfig? version,  GeodataConfig? geodata)?  $default,) {final _that = this;
switch (_that) {
case _XrayConfig() when $default != null:
return $default(_that.transport,_that.log,_that.routing,_that.dns,_that.inbounds,_that.outbounds,_that.policy,_that.api,_that.metrics,_that.stats,_that.reverse,_that.fakeDns,_that.observatory,_that.burstObservatory,_that.version,_that.geodata);case _:
  return null;

}
}

}

/// @nodoc


class _XrayConfig extends XrayConfig {
  const _XrayConfig({final  Map<String, dynamic>? transport, this.log, this.routing, this.dns, final  List<InboundDetourConfig>? inbounds, final  List<OutboundDetourConfig>? outbounds, this.policy, this.api, this.metrics, this.stats, this.reverse, @JsonKey(name: 'fakeDns') this.fakeDns, this.observatory, this.burstObservatory, this.version, this.geodata}): _transport = transport,_inbounds = inbounds,_outbounds = outbounds,super._();
  

 final  Map<String, dynamic>? _transport;
@override Map<String, dynamic>? get transport {
  final value = _transport;
  if (value == null) return null;
  if (_transport is EqualUnmodifiableMapView) return _transport;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  LogConfig? log;
@override final  RouterConfig? routing;
@override final  DNSConfig? dns;
 final  List<InboundDetourConfig>? _inbounds;
@override List<InboundDetourConfig>? get inbounds {
  final value = _inbounds;
  if (value == null) return null;
  if (_inbounds is EqualUnmodifiableListView) return _inbounds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<OutboundDetourConfig>? _outbounds;
@override List<OutboundDetourConfig>? get outbounds {
  final value = _outbounds;
  if (value == null) return null;
  if (_outbounds is EqualUnmodifiableListView) return _outbounds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  PolicyConfig? policy;
@override final  APIConfig? api;
@override final  MetricsConfig? metrics;
@override final  StatsConfig? stats;
@override final  ReverseConfig? reverse;
@override@JsonKey(name: 'fakeDns') final  FakeDNSConfig? fakeDns;
@override final  ObservatoryConfig? observatory;
@override final  BurstObservatoryConfig? burstObservatory;
@override final  VersionConfig? version;
@override final  GeodataConfig? geodata;

/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$XrayConfigCopyWith<_XrayConfig> get copyWith => __$XrayConfigCopyWithImpl<_XrayConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _XrayConfig&&const DeepCollectionEquality().equals(other._transport, _transport)&&(identical(other.log, log) || other.log == log)&&(identical(other.routing, routing) || other.routing == routing)&&(identical(other.dns, dns) || other.dns == dns)&&const DeepCollectionEquality().equals(other._inbounds, _inbounds)&&const DeepCollectionEquality().equals(other._outbounds, _outbounds)&&(identical(other.policy, policy) || other.policy == policy)&&(identical(other.api, api) || other.api == api)&&(identical(other.metrics, metrics) || other.metrics == metrics)&&(identical(other.stats, stats) || other.stats == stats)&&(identical(other.reverse, reverse) || other.reverse == reverse)&&(identical(other.fakeDns, fakeDns) || other.fakeDns == fakeDns)&&(identical(other.observatory, observatory) || other.observatory == observatory)&&(identical(other.burstObservatory, burstObservatory) || other.burstObservatory == burstObservatory)&&(identical(other.version, version) || other.version == version)&&(identical(other.geodata, geodata) || other.geodata == geodata));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_transport),log,routing,dns,const DeepCollectionEquality().hash(_inbounds),const DeepCollectionEquality().hash(_outbounds),policy,api,metrics,stats,reverse,fakeDns,observatory,burstObservatory,version,geodata);

@override
String toString() {
  return 'XrayConfig(transport: $transport, log: $log, routing: $routing, dns: $dns, inbounds: $inbounds, outbounds: $outbounds, policy: $policy, api: $api, metrics: $metrics, stats: $stats, reverse: $reverse, fakeDns: $fakeDns, observatory: $observatory, burstObservatory: $burstObservatory, version: $version, geodata: $geodata)';
}


}

/// @nodoc
abstract mixin class _$XrayConfigCopyWith<$Res> implements $XrayConfigCopyWith<$Res> {
  factory _$XrayConfigCopyWith(_XrayConfig value, $Res Function(_XrayConfig) _then) = __$XrayConfigCopyWithImpl;
@override @useResult
$Res call({
 Map<String, dynamic>? transport, LogConfig? log, RouterConfig? routing, DNSConfig? dns, List<InboundDetourConfig>? inbounds, List<OutboundDetourConfig>? outbounds, PolicyConfig? policy, APIConfig? api, MetricsConfig? metrics, StatsConfig? stats, ReverseConfig? reverse,@JsonKey(name: 'fakeDns') FakeDNSConfig? fakeDns, ObservatoryConfig? observatory, BurstObservatoryConfig? burstObservatory, VersionConfig? version, GeodataConfig? geodata
});


@override $LogConfigCopyWith<$Res>? get log;@override $RouterConfigCopyWith<$Res>? get routing;@override $DNSConfigCopyWith<$Res>? get dns;@override $PolicyConfigCopyWith<$Res>? get policy;@override $APIConfigCopyWith<$Res>? get api;@override $MetricsConfigCopyWith<$Res>? get metrics;@override $StatsConfigCopyWith<$Res>? get stats;@override $ReverseConfigCopyWith<$Res>? get reverse;@override $ObservatoryConfigCopyWith<$Res>? get observatory;@override $BurstObservatoryConfigCopyWith<$Res>? get burstObservatory;@override $VersionConfigCopyWith<$Res>? get version;@override $GeodataConfigCopyWith<$Res>? get geodata;

}
/// @nodoc
class __$XrayConfigCopyWithImpl<$Res>
    implements _$XrayConfigCopyWith<$Res> {
  __$XrayConfigCopyWithImpl(this._self, this._then);

  final _XrayConfig _self;
  final $Res Function(_XrayConfig) _then;

/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? transport = freezed,Object? log = freezed,Object? routing = freezed,Object? dns = freezed,Object? inbounds = freezed,Object? outbounds = freezed,Object? policy = freezed,Object? api = freezed,Object? metrics = freezed,Object? stats = freezed,Object? reverse = freezed,Object? fakeDns = freezed,Object? observatory = freezed,Object? burstObservatory = freezed,Object? version = freezed,Object? geodata = freezed,}) {
  return _then(_XrayConfig(
transport: freezed == transport ? _self._transport : transport // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,log: freezed == log ? _self.log : log // ignore: cast_nullable_to_non_nullable
as LogConfig?,routing: freezed == routing ? _self.routing : routing // ignore: cast_nullable_to_non_nullable
as RouterConfig?,dns: freezed == dns ? _self.dns : dns // ignore: cast_nullable_to_non_nullable
as DNSConfig?,inbounds: freezed == inbounds ? _self._inbounds : inbounds // ignore: cast_nullable_to_non_nullable
as List<InboundDetourConfig>?,outbounds: freezed == outbounds ? _self._outbounds : outbounds // ignore: cast_nullable_to_non_nullable
as List<OutboundDetourConfig>?,policy: freezed == policy ? _self.policy : policy // ignore: cast_nullable_to_non_nullable
as PolicyConfig?,api: freezed == api ? _self.api : api // ignore: cast_nullable_to_non_nullable
as APIConfig?,metrics: freezed == metrics ? _self.metrics : metrics // ignore: cast_nullable_to_non_nullable
as MetricsConfig?,stats: freezed == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as StatsConfig?,reverse: freezed == reverse ? _self.reverse : reverse // ignore: cast_nullable_to_non_nullable
as ReverseConfig?,fakeDns: freezed == fakeDns ? _self.fakeDns : fakeDns // ignore: cast_nullable_to_non_nullable
as FakeDNSConfig?,observatory: freezed == observatory ? _self.observatory : observatory // ignore: cast_nullable_to_non_nullable
as ObservatoryConfig?,burstObservatory: freezed == burstObservatory ? _self.burstObservatory : burstObservatory // ignore: cast_nullable_to_non_nullable
as BurstObservatoryConfig?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as VersionConfig?,geodata: freezed == geodata ? _self.geodata : geodata // ignore: cast_nullable_to_non_nullable
as GeodataConfig?,
  ));
}

/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LogConfigCopyWith<$Res>? get log {
    if (_self.log == null) {
    return null;
  }

  return $LogConfigCopyWith<$Res>(_self.log!, (value) {
    return _then(_self.copyWith(log: value));
  });
}/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RouterConfigCopyWith<$Res>? get routing {
    if (_self.routing == null) {
    return null;
  }

  return $RouterConfigCopyWith<$Res>(_self.routing!, (value) {
    return _then(_self.copyWith(routing: value));
  });
}/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DNSConfigCopyWith<$Res>? get dns {
    if (_self.dns == null) {
    return null;
  }

  return $DNSConfigCopyWith<$Res>(_self.dns!, (value) {
    return _then(_self.copyWith(dns: value));
  });
}/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PolicyConfigCopyWith<$Res>? get policy {
    if (_self.policy == null) {
    return null;
  }

  return $PolicyConfigCopyWith<$Res>(_self.policy!, (value) {
    return _then(_self.copyWith(policy: value));
  });
}/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$APIConfigCopyWith<$Res>? get api {
    if (_self.api == null) {
    return null;
  }

  return $APIConfigCopyWith<$Res>(_self.api!, (value) {
    return _then(_self.copyWith(api: value));
  });
}/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetricsConfigCopyWith<$Res>? get metrics {
    if (_self.metrics == null) {
    return null;
  }

  return $MetricsConfigCopyWith<$Res>(_self.metrics!, (value) {
    return _then(_self.copyWith(metrics: value));
  });
}/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatsConfigCopyWith<$Res>? get stats {
    if (_self.stats == null) {
    return null;
  }

  return $StatsConfigCopyWith<$Res>(_self.stats!, (value) {
    return _then(_self.copyWith(stats: value));
  });
}/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReverseConfigCopyWith<$Res>? get reverse {
    if (_self.reverse == null) {
    return null;
  }

  return $ReverseConfigCopyWith<$Res>(_self.reverse!, (value) {
    return _then(_self.copyWith(reverse: value));
  });
}/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ObservatoryConfigCopyWith<$Res>? get observatory {
    if (_self.observatory == null) {
    return null;
  }

  return $ObservatoryConfigCopyWith<$Res>(_self.observatory!, (value) {
    return _then(_self.copyWith(observatory: value));
  });
}/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BurstObservatoryConfigCopyWith<$Res>? get burstObservatory {
    if (_self.burstObservatory == null) {
    return null;
  }

  return $BurstObservatoryConfigCopyWith<$Res>(_self.burstObservatory!, (value) {
    return _then(_self.copyWith(burstObservatory: value));
  });
}/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VersionConfigCopyWith<$Res>? get version {
    if (_self.version == null) {
    return null;
  }

  return $VersionConfigCopyWith<$Res>(_self.version!, (value) {
    return _then(_self.copyWith(version: value));
  });
}/// Create a copy of XrayConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeodataConfigCopyWith<$Res>? get geodata {
    if (_self.geodata == null) {
    return null;
  }

  return $GeodataConfigCopyWith<$Res>(_self.geodata!, (value) {
    return _then(_self.copyWith(geodata: value));
  });
}
}

// dart format on

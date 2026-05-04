// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transport.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Aes128Gcm {

 String? get password;
/// Create a copy of Aes128Gcm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$Aes128GcmCopyWith<Aes128Gcm> get copyWith => _$Aes128GcmCopyWithImpl<Aes128Gcm>(this as Aes128Gcm, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Aes128Gcm&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'Aes128Gcm(password: $password)';
}


}

/// @nodoc
abstract mixin class $Aes128GcmCopyWith<$Res>  {
  factory $Aes128GcmCopyWith(Aes128Gcm value, $Res Function(Aes128Gcm) _then) = _$Aes128GcmCopyWithImpl;
@useResult
$Res call({
 String? password
});




}
/// @nodoc
class _$Aes128GcmCopyWithImpl<$Res>
    implements $Aes128GcmCopyWith<$Res> {
  _$Aes128GcmCopyWithImpl(this._self, this._then);

  final Aes128Gcm _self;
  final $Res Function(Aes128Gcm) _then;

/// Create a copy of Aes128Gcm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? password = freezed,}) {
  return _then(_self.copyWith(
password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Aes128Gcm].
extension Aes128GcmPatterns on Aes128Gcm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Aes128Gcm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Aes128Gcm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Aes128Gcm value)  $default,){
final _that = this;
switch (_that) {
case _Aes128Gcm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Aes128Gcm value)?  $default,){
final _that = this;
switch (_that) {
case _Aes128Gcm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Aes128Gcm() when $default != null:
return $default(_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? password)  $default,) {final _that = this;
switch (_that) {
case _Aes128Gcm():
return $default(_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? password)?  $default,) {final _that = this;
switch (_that) {
case _Aes128Gcm() when $default != null:
return $default(_that.password);case _:
  return null;

}
}

}

/// @nodoc


class _Aes128Gcm extends Aes128Gcm {
  const _Aes128Gcm({this.password}): super._();
  

@override final  String? password;

/// Create a copy of Aes128Gcm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$Aes128GcmCopyWith<_Aes128Gcm> get copyWith => __$Aes128GcmCopyWithImpl<_Aes128Gcm>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Aes128Gcm&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'Aes128Gcm(password: $password)';
}


}

/// @nodoc
abstract mixin class _$Aes128GcmCopyWith<$Res> implements $Aes128GcmCopyWith<$Res> {
  factory _$Aes128GcmCopyWith(_Aes128Gcm value, $Res Function(_Aes128Gcm) _then) = __$Aes128GcmCopyWithImpl;
@override @useResult
$Res call({
 String? password
});




}
/// @nodoc
class __$Aes128GcmCopyWithImpl<$Res>
    implements _$Aes128GcmCopyWith<$Res> {
  __$Aes128GcmCopyWithImpl(this._self, this._then);

  final _Aes128Gcm _self;
  final $Res Function(_Aes128Gcm) _then;

/// Create a copy of Aes128Gcm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? password = freezed,}) {
  return _then(_Aes128Gcm(
password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$AuthenticatorRequest {

 String? get version; String? get method; XrayStringList? get path; Map<String, XrayStringList>? get headers;
/// Create a copy of AuthenticatorRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthenticatorRequestCopyWith<AuthenticatorRequest> get copyWith => _$AuthenticatorRequestCopyWithImpl<AuthenticatorRequest>(this as AuthenticatorRequest, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthenticatorRequest&&(identical(other.version, version) || other.version == version)&&(identical(other.method, method) || other.method == method)&&(identical(other.path, path) || other.path == path)&&const DeepCollectionEquality().equals(other.headers, headers));
}


@override
int get hashCode => Object.hash(runtimeType,version,method,path,const DeepCollectionEquality().hash(headers));

@override
String toString() {
  return 'AuthenticatorRequest(version: $version, method: $method, path: $path, headers: $headers)';
}


}

/// @nodoc
abstract mixin class $AuthenticatorRequestCopyWith<$Res>  {
  factory $AuthenticatorRequestCopyWith(AuthenticatorRequest value, $Res Function(AuthenticatorRequest) _then) = _$AuthenticatorRequestCopyWithImpl;
@useResult
$Res call({
 String? version, String? method, XrayStringList? path, Map<String, XrayStringList>? headers
});




}
/// @nodoc
class _$AuthenticatorRequestCopyWithImpl<$Res>
    implements $AuthenticatorRequestCopyWith<$Res> {
  _$AuthenticatorRequestCopyWithImpl(this._self, this._then);

  final AuthenticatorRequest _self;
  final $Res Function(AuthenticatorRequest) _then;

/// Create a copy of AuthenticatorRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = freezed,Object? method = freezed,Object? path = freezed,Object? headers = freezed,}) {
  return _then(_self.copyWith(
version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as XrayStringList?,headers: freezed == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, XrayStringList>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthenticatorRequest].
extension AuthenticatorRequestPatterns on AuthenticatorRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthenticatorRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthenticatorRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthenticatorRequest value)  $default,){
final _that = this;
switch (_that) {
case _AuthenticatorRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthenticatorRequest value)?  $default,){
final _that = this;
switch (_that) {
case _AuthenticatorRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? version,  String? method,  XrayStringList? path,  Map<String, XrayStringList>? headers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthenticatorRequest() when $default != null:
return $default(_that.version,_that.method,_that.path,_that.headers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? version,  String? method,  XrayStringList? path,  Map<String, XrayStringList>? headers)  $default,) {final _that = this;
switch (_that) {
case _AuthenticatorRequest():
return $default(_that.version,_that.method,_that.path,_that.headers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? version,  String? method,  XrayStringList? path,  Map<String, XrayStringList>? headers)?  $default,) {final _that = this;
switch (_that) {
case _AuthenticatorRequest() when $default != null:
return $default(_that.version,_that.method,_that.path,_that.headers);case _:
  return null;

}
}

}

/// @nodoc


class _AuthenticatorRequest extends AuthenticatorRequest {
  const _AuthenticatorRequest({this.version, this.method, this.path, final  Map<String, XrayStringList>? headers}): _headers = headers,super._();
  

@override final  String? version;
@override final  String? method;
@override final  XrayStringList? path;
 final  Map<String, XrayStringList>? _headers;
@override Map<String, XrayStringList>? get headers {
  final value = _headers;
  if (value == null) return null;
  if (_headers is EqualUnmodifiableMapView) return _headers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of AuthenticatorRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthenticatorRequestCopyWith<_AuthenticatorRequest> get copyWith => __$AuthenticatorRequestCopyWithImpl<_AuthenticatorRequest>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticatorRequest&&(identical(other.version, version) || other.version == version)&&(identical(other.method, method) || other.method == method)&&(identical(other.path, path) || other.path == path)&&const DeepCollectionEquality().equals(other._headers, _headers));
}


@override
int get hashCode => Object.hash(runtimeType,version,method,path,const DeepCollectionEquality().hash(_headers));

@override
String toString() {
  return 'AuthenticatorRequest(version: $version, method: $method, path: $path, headers: $headers)';
}


}

/// @nodoc
abstract mixin class _$AuthenticatorRequestCopyWith<$Res> implements $AuthenticatorRequestCopyWith<$Res> {
  factory _$AuthenticatorRequestCopyWith(_AuthenticatorRequest value, $Res Function(_AuthenticatorRequest) _then) = __$AuthenticatorRequestCopyWithImpl;
@override @useResult
$Res call({
 String? version, String? method, XrayStringList? path, Map<String, XrayStringList>? headers
});




}
/// @nodoc
class __$AuthenticatorRequestCopyWithImpl<$Res>
    implements _$AuthenticatorRequestCopyWith<$Res> {
  __$AuthenticatorRequestCopyWithImpl(this._self, this._then);

  final _AuthenticatorRequest _self;
  final $Res Function(_AuthenticatorRequest) _then;

/// Create a copy of AuthenticatorRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = freezed,Object? method = freezed,Object? path = freezed,Object? headers = freezed,}) {
  return _then(_AuthenticatorRequest(
version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,method: freezed == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as String?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as XrayStringList?,headers: freezed == headers ? _self._headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, XrayStringList>?,
  ));
}


}

/// @nodoc
mixin _$AuthenticatorResponse {

 String? get version; String? get status; String? get reason; Map<String, XrayStringList>? get headers;
/// Create a copy of AuthenticatorResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthenticatorResponseCopyWith<AuthenticatorResponse> get copyWith => _$AuthenticatorResponseCopyWithImpl<AuthenticatorResponse>(this as AuthenticatorResponse, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthenticatorResponse&&(identical(other.version, version) || other.version == version)&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason)&&const DeepCollectionEquality().equals(other.headers, headers));
}


@override
int get hashCode => Object.hash(runtimeType,version,status,reason,const DeepCollectionEquality().hash(headers));

@override
String toString() {
  return 'AuthenticatorResponse(version: $version, status: $status, reason: $reason, headers: $headers)';
}


}

/// @nodoc
abstract mixin class $AuthenticatorResponseCopyWith<$Res>  {
  factory $AuthenticatorResponseCopyWith(AuthenticatorResponse value, $Res Function(AuthenticatorResponse) _then) = _$AuthenticatorResponseCopyWithImpl;
@useResult
$Res call({
 String? version, String? status, String? reason, Map<String, XrayStringList>? headers
});




}
/// @nodoc
class _$AuthenticatorResponseCopyWithImpl<$Res>
    implements $AuthenticatorResponseCopyWith<$Res> {
  _$AuthenticatorResponseCopyWithImpl(this._self, this._then);

  final AuthenticatorResponse _self;
  final $Res Function(AuthenticatorResponse) _then;

/// Create a copy of AuthenticatorResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = freezed,Object? status = freezed,Object? reason = freezed,Object? headers = freezed,}) {
  return _then(_self.copyWith(
version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,headers: freezed == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, XrayStringList>?,
  ));
}

}


/// Adds pattern-matching-related methods to [AuthenticatorResponse].
extension AuthenticatorResponsePatterns on AuthenticatorResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthenticatorResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthenticatorResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthenticatorResponse value)  $default,){
final _that = this;
switch (_that) {
case _AuthenticatorResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthenticatorResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AuthenticatorResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? version,  String? status,  String? reason,  Map<String, XrayStringList>? headers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthenticatorResponse() when $default != null:
return $default(_that.version,_that.status,_that.reason,_that.headers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? version,  String? status,  String? reason,  Map<String, XrayStringList>? headers)  $default,) {final _that = this;
switch (_that) {
case _AuthenticatorResponse():
return $default(_that.version,_that.status,_that.reason,_that.headers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? version,  String? status,  String? reason,  Map<String, XrayStringList>? headers)?  $default,) {final _that = this;
switch (_that) {
case _AuthenticatorResponse() when $default != null:
return $default(_that.version,_that.status,_that.reason,_that.headers);case _:
  return null;

}
}

}

/// @nodoc


class _AuthenticatorResponse extends AuthenticatorResponse {
  const _AuthenticatorResponse({this.version, this.status, this.reason, final  Map<String, XrayStringList>? headers}): _headers = headers,super._();
  

@override final  String? version;
@override final  String? status;
@override final  String? reason;
 final  Map<String, XrayStringList>? _headers;
@override Map<String, XrayStringList>? get headers {
  final value = _headers;
  if (value == null) return null;
  if (_headers is EqualUnmodifiableMapView) return _headers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of AuthenticatorResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthenticatorResponseCopyWith<_AuthenticatorResponse> get copyWith => __$AuthenticatorResponseCopyWithImpl<_AuthenticatorResponse>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthenticatorResponse&&(identical(other.version, version) || other.version == version)&&(identical(other.status, status) || other.status == status)&&(identical(other.reason, reason) || other.reason == reason)&&const DeepCollectionEquality().equals(other._headers, _headers));
}


@override
int get hashCode => Object.hash(runtimeType,version,status,reason,const DeepCollectionEquality().hash(_headers));

@override
String toString() {
  return 'AuthenticatorResponse(version: $version, status: $status, reason: $reason, headers: $headers)';
}


}

/// @nodoc
abstract mixin class _$AuthenticatorResponseCopyWith<$Res> implements $AuthenticatorResponseCopyWith<$Res> {
  factory _$AuthenticatorResponseCopyWith(_AuthenticatorResponse value, $Res Function(_AuthenticatorResponse) _then) = __$AuthenticatorResponseCopyWithImpl;
@override @useResult
$Res call({
 String? version, String? status, String? reason, Map<String, XrayStringList>? headers
});




}
/// @nodoc
class __$AuthenticatorResponseCopyWithImpl<$Res>
    implements _$AuthenticatorResponseCopyWith<$Res> {
  __$AuthenticatorResponseCopyWithImpl(this._self, this._then);

  final _AuthenticatorResponse _self;
  final $Res Function(_AuthenticatorResponse) _then;

/// Create a copy of AuthenticatorResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = freezed,Object? status = freezed,Object? reason = freezed,Object? headers = freezed,}) {
  return _then(_AuthenticatorResponse(
version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,reason: freezed == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as String?,headers: freezed == headers ? _self._headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, XrayStringList>?,
  ));
}


}

/// @nodoc
mixin _$CustomSockoptConfig {

@JsonKey(name: 'system') String? get system; String? get network; String? get level; String? get opt; String? get value; String? get type;
/// Create a copy of CustomSockoptConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomSockoptConfigCopyWith<CustomSockoptConfig> get copyWith => _$CustomSockoptConfigCopyWithImpl<CustomSockoptConfig>(this as CustomSockoptConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomSockoptConfig&&(identical(other.system, system) || other.system == system)&&(identical(other.network, network) || other.network == network)&&(identical(other.level, level) || other.level == level)&&(identical(other.opt, opt) || other.opt == opt)&&(identical(other.value, value) || other.value == value)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,system,network,level,opt,value,type);

@override
String toString() {
  return 'CustomSockoptConfig(system: $system, network: $network, level: $level, opt: $opt, value: $value, type: $type)';
}


}

/// @nodoc
abstract mixin class $CustomSockoptConfigCopyWith<$Res>  {
  factory $CustomSockoptConfigCopyWith(CustomSockoptConfig value, $Res Function(CustomSockoptConfig) _then) = _$CustomSockoptConfigCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'system') String? system, String? network, String? level, String? opt, String? value, String? type
});




}
/// @nodoc
class _$CustomSockoptConfigCopyWithImpl<$Res>
    implements $CustomSockoptConfigCopyWith<$Res> {
  _$CustomSockoptConfigCopyWithImpl(this._self, this._then);

  final CustomSockoptConfig _self;
  final $Res Function(CustomSockoptConfig) _then;

/// Create a copy of CustomSockoptConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? system = freezed,Object? network = freezed,Object? level = freezed,Object? opt = freezed,Object? value = freezed,Object? type = freezed,}) {
  return _then(_self.copyWith(
system: freezed == system ? _self.system : system // ignore: cast_nullable_to_non_nullable
as String?,network: freezed == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String?,opt: freezed == opt ? _self.opt : opt // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomSockoptConfig].
extension CustomSockoptConfigPatterns on CustomSockoptConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomSockoptConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomSockoptConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomSockoptConfig value)  $default,){
final _that = this;
switch (_that) {
case _CustomSockoptConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomSockoptConfig value)?  $default,){
final _that = this;
switch (_that) {
case _CustomSockoptConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'system')  String? system,  String? network,  String? level,  String? opt,  String? value,  String? type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomSockoptConfig() when $default != null:
return $default(_that.system,_that.network,_that.level,_that.opt,_that.value,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'system')  String? system,  String? network,  String? level,  String? opt,  String? value,  String? type)  $default,) {final _that = this;
switch (_that) {
case _CustomSockoptConfig():
return $default(_that.system,_that.network,_that.level,_that.opt,_that.value,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'system')  String? system,  String? network,  String? level,  String? opt,  String? value,  String? type)?  $default,) {final _that = this;
switch (_that) {
case _CustomSockoptConfig() when $default != null:
return $default(_that.system,_that.network,_that.level,_that.opt,_that.value,_that.type);case _:
  return null;

}
}

}

/// @nodoc


class _CustomSockoptConfig extends CustomSockoptConfig {
  const _CustomSockoptConfig({@JsonKey(name: 'system') this.system, this.network, this.level, this.opt, this.value, this.type}): super._();
  

@override@JsonKey(name: 'system') final  String? system;
@override final  String? network;
@override final  String? level;
@override final  String? opt;
@override final  String? value;
@override final  String? type;

/// Create a copy of CustomSockoptConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomSockoptConfigCopyWith<_CustomSockoptConfig> get copyWith => __$CustomSockoptConfigCopyWithImpl<_CustomSockoptConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomSockoptConfig&&(identical(other.system, system) || other.system == system)&&(identical(other.network, network) || other.network == network)&&(identical(other.level, level) || other.level == level)&&(identical(other.opt, opt) || other.opt == opt)&&(identical(other.value, value) || other.value == value)&&(identical(other.type, type) || other.type == type));
}


@override
int get hashCode => Object.hash(runtimeType,system,network,level,opt,value,type);

@override
String toString() {
  return 'CustomSockoptConfig(system: $system, network: $network, level: $level, opt: $opt, value: $value, type: $type)';
}


}

/// @nodoc
abstract mixin class _$CustomSockoptConfigCopyWith<$Res> implements $CustomSockoptConfigCopyWith<$Res> {
  factory _$CustomSockoptConfigCopyWith(_CustomSockoptConfig value, $Res Function(_CustomSockoptConfig) _then) = __$CustomSockoptConfigCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'system') String? system, String? network, String? level, String? opt, String? value, String? type
});




}
/// @nodoc
class __$CustomSockoptConfigCopyWithImpl<$Res>
    implements _$CustomSockoptConfigCopyWith<$Res> {
  __$CustomSockoptConfigCopyWithImpl(this._self, this._then);

  final _CustomSockoptConfig _self;
  final $Res Function(_CustomSockoptConfig) _then;

/// Create a copy of CustomSockoptConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? system = freezed,Object? network = freezed,Object? level = freezed,Object? opt = freezed,Object? value = freezed,Object? type = freezed,}) {
  return _then(_CustomSockoptConfig(
system: freezed == system ? _self.system : system // ignore: cast_nullable_to_non_nullable
as String?,network: freezed == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String?,opt: freezed == opt ? _self.opt : opt // ignore: cast_nullable_to_non_nullable
as String?,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$CustomTransform {

 String get op; List<CustomTransformArg> get args;
/// Create a copy of CustomTransform
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomTransformCopyWith<CustomTransform> get copyWith => _$CustomTransformCopyWithImpl<CustomTransform>(this as CustomTransform, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomTransform&&(identical(other.op, op) || other.op == op)&&const DeepCollectionEquality().equals(other.args, args));
}


@override
int get hashCode => Object.hash(runtimeType,op,const DeepCollectionEquality().hash(args));

@override
String toString() {
  return 'CustomTransform(op: $op, args: $args)';
}


}

/// @nodoc
abstract mixin class $CustomTransformCopyWith<$Res>  {
  factory $CustomTransformCopyWith(CustomTransform value, $Res Function(CustomTransform) _then) = _$CustomTransformCopyWithImpl;
@useResult
$Res call({
 String op, List<CustomTransformArg> args
});




}
/// @nodoc
class _$CustomTransformCopyWithImpl<$Res>
    implements $CustomTransformCopyWith<$Res> {
  _$CustomTransformCopyWithImpl(this._self, this._then);

  final CustomTransform _self;
  final $Res Function(CustomTransform) _then;

/// Create a copy of CustomTransform
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? op = null,Object? args = null,}) {
  return _then(_self.copyWith(
op: null == op ? _self.op : op // ignore: cast_nullable_to_non_nullable
as String,args: null == args ? _self.args : args // ignore: cast_nullable_to_non_nullable
as List<CustomTransformArg>,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomTransform].
extension CustomTransformPatterns on CustomTransform {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomTransform value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomTransform() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomTransform value)  $default,){
final _that = this;
switch (_that) {
case _CustomTransform():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomTransform value)?  $default,){
final _that = this;
switch (_that) {
case _CustomTransform() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String op,  List<CustomTransformArg> args)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomTransform() when $default != null:
return $default(_that.op,_that.args);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String op,  List<CustomTransformArg> args)  $default,) {final _that = this;
switch (_that) {
case _CustomTransform():
return $default(_that.op,_that.args);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String op,  List<CustomTransformArg> args)?  $default,) {final _that = this;
switch (_that) {
case _CustomTransform() when $default != null:
return $default(_that.op,_that.args);case _:
  return null;

}
}

}

/// @nodoc


class _CustomTransform extends CustomTransform {
  const _CustomTransform({required this.op, required final  List<CustomTransformArg> args}): _args = args,super._();
  

@override final  String op;
 final  List<CustomTransformArg> _args;
@override List<CustomTransformArg> get args {
  if (_args is EqualUnmodifiableListView) return _args;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_args);
}


/// Create a copy of CustomTransform
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomTransformCopyWith<_CustomTransform> get copyWith => __$CustomTransformCopyWithImpl<_CustomTransform>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomTransform&&(identical(other.op, op) || other.op == op)&&const DeepCollectionEquality().equals(other._args, _args));
}


@override
int get hashCode => Object.hash(runtimeType,op,const DeepCollectionEquality().hash(_args));

@override
String toString() {
  return 'CustomTransform(op: $op, args: $args)';
}


}

/// @nodoc
abstract mixin class _$CustomTransformCopyWith<$Res> implements $CustomTransformCopyWith<$Res> {
  factory _$CustomTransformCopyWith(_CustomTransform value, $Res Function(_CustomTransform) _then) = __$CustomTransformCopyWithImpl;
@override @useResult
$Res call({
 String op, List<CustomTransformArg> args
});




}
/// @nodoc
class __$CustomTransformCopyWithImpl<$Res>
    implements _$CustomTransformCopyWith<$Res> {
  __$CustomTransformCopyWithImpl(this._self, this._then);

  final _CustomTransform _self;
  final $Res Function(_CustomTransform) _then;

/// Create a copy of CustomTransform
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? op = null,Object? args = null,}) {
  return _then(_CustomTransform(
op: null == op ? _self.op : op // ignore: cast_nullable_to_non_nullable
as String,args: null == args ? _self._args : args // ignore: cast_nullable_to_non_nullable
as List<CustomTransformArg>,
  ));
}


}

/// @nodoc
mixin _$CustomTransformArg {

 String? get type; Object? get bytes; int? get u64; String? get reuse; String? get metadata; CustomTransform? get transform;
/// Create a copy of CustomTransformArg
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomTransformArgCopyWith<CustomTransformArg> get copyWith => _$CustomTransformArgCopyWithImpl<CustomTransformArg>(this as CustomTransformArg, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomTransformArg&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.bytes, bytes)&&(identical(other.u64, u64) || other.u64 == u64)&&(identical(other.reuse, reuse) || other.reuse == reuse)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.transform, transform) || other.transform == transform));
}


@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(bytes),u64,reuse,metadata,transform);

@override
String toString() {
  return 'CustomTransformArg(type: $type, bytes: $bytes, u64: $u64, reuse: $reuse, metadata: $metadata, transform: $transform)';
}


}

/// @nodoc
abstract mixin class $CustomTransformArgCopyWith<$Res>  {
  factory $CustomTransformArgCopyWith(CustomTransformArg value, $Res Function(CustomTransformArg) _then) = _$CustomTransformArgCopyWithImpl;
@useResult
$Res call({
 String? type, Object? bytes, int? u64, String? reuse, String? metadata, CustomTransform? transform
});


$CustomTransformCopyWith<$Res>? get transform;

}
/// @nodoc
class _$CustomTransformArgCopyWithImpl<$Res>
    implements $CustomTransformArgCopyWith<$Res> {
  _$CustomTransformArgCopyWithImpl(this._self, this._then);

  final CustomTransformArg _self;
  final $Res Function(CustomTransformArg) _then;

/// Create a copy of CustomTransformArg
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? bytes = freezed,Object? u64 = freezed,Object? reuse = freezed,Object? metadata = freezed,Object? transform = freezed,}) {
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,bytes: freezed == bytes ? _self.bytes : bytes ,u64: freezed == u64 ? _self.u64 : u64 // ignore: cast_nullable_to_non_nullable
as int?,reuse: freezed == reuse ? _self.reuse : reuse // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as String?,transform: freezed == transform ? _self.transform : transform // ignore: cast_nullable_to_non_nullable
as CustomTransform?,
  ));
}
/// Create a copy of CustomTransformArg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomTransformCopyWith<$Res>? get transform {
    if (_self.transform == null) {
    return null;
  }

  return $CustomTransformCopyWith<$Res>(_self.transform!, (value) {
    return _then(_self.copyWith(transform: value));
  });
}
}


/// Adds pattern-matching-related methods to [CustomTransformArg].
extension CustomTransformArgPatterns on CustomTransformArg {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomTransformArg value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomTransformArg() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomTransformArg value)  $default,){
final _that = this;
switch (_that) {
case _CustomTransformArg():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomTransformArg value)?  $default,){
final _that = this;
switch (_that) {
case _CustomTransformArg() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? type,  Object? bytes,  int? u64,  String? reuse,  String? metadata,  CustomTransform? transform)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomTransformArg() when $default != null:
return $default(_that.type,_that.bytes,_that.u64,_that.reuse,_that.metadata,_that.transform);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? type,  Object? bytes,  int? u64,  String? reuse,  String? metadata,  CustomTransform? transform)  $default,) {final _that = this;
switch (_that) {
case _CustomTransformArg():
return $default(_that.type,_that.bytes,_that.u64,_that.reuse,_that.metadata,_that.transform);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? type,  Object? bytes,  int? u64,  String? reuse,  String? metadata,  CustomTransform? transform)?  $default,) {final _that = this;
switch (_that) {
case _CustomTransformArg() when $default != null:
return $default(_that.type,_that.bytes,_that.u64,_that.reuse,_that.metadata,_that.transform);case _:
  return null;

}
}

}

/// @nodoc


class _CustomTransformArg extends CustomTransformArg {
  const _CustomTransformArg({this.type, this.bytes, this.u64, this.reuse, this.metadata, this.transform}): super._();
  

@override final  String? type;
@override final  Object? bytes;
@override final  int? u64;
@override final  String? reuse;
@override final  String? metadata;
@override final  CustomTransform? transform;

/// Create a copy of CustomTransformArg
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomTransformArgCopyWith<_CustomTransformArg> get copyWith => __$CustomTransformArgCopyWithImpl<_CustomTransformArg>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomTransformArg&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.bytes, bytes)&&(identical(other.u64, u64) || other.u64 == u64)&&(identical(other.reuse, reuse) || other.reuse == reuse)&&(identical(other.metadata, metadata) || other.metadata == metadata)&&(identical(other.transform, transform) || other.transform == transform));
}


@override
int get hashCode => Object.hash(runtimeType,type,const DeepCollectionEquality().hash(bytes),u64,reuse,metadata,transform);

@override
String toString() {
  return 'CustomTransformArg(type: $type, bytes: $bytes, u64: $u64, reuse: $reuse, metadata: $metadata, transform: $transform)';
}


}

/// @nodoc
abstract mixin class _$CustomTransformArgCopyWith<$Res> implements $CustomTransformArgCopyWith<$Res> {
  factory _$CustomTransformArgCopyWith(_CustomTransformArg value, $Res Function(_CustomTransformArg) _then) = __$CustomTransformArgCopyWithImpl;
@override @useResult
$Res call({
 String? type, Object? bytes, int? u64, String? reuse, String? metadata, CustomTransform? transform
});


@override $CustomTransformCopyWith<$Res>? get transform;

}
/// @nodoc
class __$CustomTransformArgCopyWithImpl<$Res>
    implements _$CustomTransformArgCopyWith<$Res> {
  __$CustomTransformArgCopyWithImpl(this._self, this._then);

  final _CustomTransformArg _self;
  final $Res Function(_CustomTransformArg) _then;

/// Create a copy of CustomTransformArg
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? bytes = freezed,Object? u64 = freezed,Object? reuse = freezed,Object? metadata = freezed,Object? transform = freezed,}) {
  return _then(_CustomTransformArg(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,bytes: freezed == bytes ? _self.bytes : bytes ,u64: freezed == u64 ? _self.u64 : u64 // ignore: cast_nullable_to_non_nullable
as int?,reuse: freezed == reuse ? _self.reuse : reuse // ignore: cast_nullable_to_non_nullable
as String?,metadata: freezed == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as String?,transform: freezed == transform ? _self.transform : transform // ignore: cast_nullable_to_non_nullable
as CustomTransform?,
  ));
}

/// Create a copy of CustomTransformArg
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomTransformCopyWith<$Res>? get transform {
    if (_self.transform == null) {
    return null;
  }

  return $CustomTransformCopyWith<$Res>(_self.transform!, (value) {
    return _then(_self.copyWith(transform: value));
  });
}
}

/// @nodoc
mixin _$Dns {

 String? get domain;
/// Create a copy of Dns
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DnsCopyWith<Dns> get copyWith => _$DnsCopyWithImpl<Dns>(this as Dns, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Dns&&(identical(other.domain, domain) || other.domain == domain));
}


@override
int get hashCode => Object.hash(runtimeType,domain);

@override
String toString() {
  return 'Dns(domain: $domain)';
}


}

/// @nodoc
abstract mixin class $DnsCopyWith<$Res>  {
  factory $DnsCopyWith(Dns value, $Res Function(Dns) _then) = _$DnsCopyWithImpl;
@useResult
$Res call({
 String? domain
});




}
/// @nodoc
class _$DnsCopyWithImpl<$Res>
    implements $DnsCopyWith<$Res> {
  _$DnsCopyWithImpl(this._self, this._then);

  final Dns _self;
  final $Res Function(Dns) _then;

/// Create a copy of Dns
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? domain = freezed,}) {
  return _then(_self.copyWith(
domain: freezed == domain ? _self.domain : domain // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Dns].
extension DnsPatterns on Dns {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Dns value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Dns() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Dns value)  $default,){
final _that = this;
switch (_that) {
case _Dns():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Dns value)?  $default,){
final _that = this;
switch (_that) {
case _Dns() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? domain)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Dns() when $default != null:
return $default(_that.domain);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? domain)  $default,) {final _that = this;
switch (_that) {
case _Dns():
return $default(_that.domain);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? domain)?  $default,) {final _that = this;
switch (_that) {
case _Dns() when $default != null:
return $default(_that.domain);case _:
  return null;

}
}

}

/// @nodoc


class _Dns extends Dns {
  const _Dns({this.domain}): super._();
  

@override final  String? domain;

/// Create a copy of Dns
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DnsCopyWith<_Dns> get copyWith => __$DnsCopyWithImpl<_Dns>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Dns&&(identical(other.domain, domain) || other.domain == domain));
}


@override
int get hashCode => Object.hash(runtimeType,domain);

@override
String toString() {
  return 'Dns(domain: $domain)';
}


}

/// @nodoc
abstract mixin class _$DnsCopyWith<$Res> implements $DnsCopyWith<$Res> {
  factory _$DnsCopyWith(_Dns value, $Res Function(_Dns) _then) = __$DnsCopyWithImpl;
@override @useResult
$Res call({
 String? domain
});




}
/// @nodoc
class __$DnsCopyWithImpl<$Res>
    implements _$DnsCopyWith<$Res> {
  __$DnsCopyWithImpl(this._self, this._then);

  final _Dns _self;
  final $Res Function(_Dns) _then;

/// Create a copy of Dns
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? domain = freezed,}) {
  return _then(_Dns(
domain: freezed == domain ? _self.domain : domain // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$FinalMask {

 List<Mask>? get tcp; List<Mask>? get udp; QuicParamsConfig? get quicParams;
/// Create a copy of FinalMask
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FinalMaskCopyWith<FinalMask> get copyWith => _$FinalMaskCopyWithImpl<FinalMask>(this as FinalMask, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FinalMask&&const DeepCollectionEquality().equals(other.tcp, tcp)&&const DeepCollectionEquality().equals(other.udp, udp)&&(identical(other.quicParams, quicParams) || other.quicParams == quicParams));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(tcp),const DeepCollectionEquality().hash(udp),quicParams);

@override
String toString() {
  return 'FinalMask(tcp: $tcp, udp: $udp, quicParams: $quicParams)';
}


}

/// @nodoc
abstract mixin class $FinalMaskCopyWith<$Res>  {
  factory $FinalMaskCopyWith(FinalMask value, $Res Function(FinalMask) _then) = _$FinalMaskCopyWithImpl;
@useResult
$Res call({
 List<Mask>? tcp, List<Mask>? udp, QuicParamsConfig? quicParams
});


$QuicParamsConfigCopyWith<$Res>? get quicParams;

}
/// @nodoc
class _$FinalMaskCopyWithImpl<$Res>
    implements $FinalMaskCopyWith<$Res> {
  _$FinalMaskCopyWithImpl(this._self, this._then);

  final FinalMask _self;
  final $Res Function(FinalMask) _then;

/// Create a copy of FinalMask
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? tcp = freezed,Object? udp = freezed,Object? quicParams = freezed,}) {
  return _then(_self.copyWith(
tcp: freezed == tcp ? _self.tcp : tcp // ignore: cast_nullable_to_non_nullable
as List<Mask>?,udp: freezed == udp ? _self.udp : udp // ignore: cast_nullable_to_non_nullable
as List<Mask>?,quicParams: freezed == quicParams ? _self.quicParams : quicParams // ignore: cast_nullable_to_non_nullable
as QuicParamsConfig?,
  ));
}
/// Create a copy of FinalMask
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuicParamsConfigCopyWith<$Res>? get quicParams {
    if (_self.quicParams == null) {
    return null;
  }

  return $QuicParamsConfigCopyWith<$Res>(_self.quicParams!, (value) {
    return _then(_self.copyWith(quicParams: value));
  });
}
}


/// Adds pattern-matching-related methods to [FinalMask].
extension FinalMaskPatterns on FinalMask {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FinalMask value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FinalMask() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FinalMask value)  $default,){
final _that = this;
switch (_that) {
case _FinalMask():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FinalMask value)?  $default,){
final _that = this;
switch (_that) {
case _FinalMask() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Mask>? tcp,  List<Mask>? udp,  QuicParamsConfig? quicParams)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FinalMask() when $default != null:
return $default(_that.tcp,_that.udp,_that.quicParams);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Mask>? tcp,  List<Mask>? udp,  QuicParamsConfig? quicParams)  $default,) {final _that = this;
switch (_that) {
case _FinalMask():
return $default(_that.tcp,_that.udp,_that.quicParams);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Mask>? tcp,  List<Mask>? udp,  QuicParamsConfig? quicParams)?  $default,) {final _that = this;
switch (_that) {
case _FinalMask() when $default != null:
return $default(_that.tcp,_that.udp,_that.quicParams);case _:
  return null;

}
}

}

/// @nodoc


class _FinalMask extends FinalMask {
  const _FinalMask({final  List<Mask>? tcp, final  List<Mask>? udp, this.quicParams}): _tcp = tcp,_udp = udp,super._();
  

 final  List<Mask>? _tcp;
@override List<Mask>? get tcp {
  final value = _tcp;
  if (value == null) return null;
  if (_tcp is EqualUnmodifiableListView) return _tcp;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Mask>? _udp;
@override List<Mask>? get udp {
  final value = _udp;
  if (value == null) return null;
  if (_udp is EqualUnmodifiableListView) return _udp;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  QuicParamsConfig? quicParams;

/// Create a copy of FinalMask
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FinalMaskCopyWith<_FinalMask> get copyWith => __$FinalMaskCopyWithImpl<_FinalMask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FinalMask&&const DeepCollectionEquality().equals(other._tcp, _tcp)&&const DeepCollectionEquality().equals(other._udp, _udp)&&(identical(other.quicParams, quicParams) || other.quicParams == quicParams));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_tcp),const DeepCollectionEquality().hash(_udp),quicParams);

@override
String toString() {
  return 'FinalMask(tcp: $tcp, udp: $udp, quicParams: $quicParams)';
}


}

/// @nodoc
abstract mixin class _$FinalMaskCopyWith<$Res> implements $FinalMaskCopyWith<$Res> {
  factory _$FinalMaskCopyWith(_FinalMask value, $Res Function(_FinalMask) _then) = __$FinalMaskCopyWithImpl;
@override @useResult
$Res call({
 List<Mask>? tcp, List<Mask>? udp, QuicParamsConfig? quicParams
});


@override $QuicParamsConfigCopyWith<$Res>? get quicParams;

}
/// @nodoc
class __$FinalMaskCopyWithImpl<$Res>
    implements _$FinalMaskCopyWith<$Res> {
  __$FinalMaskCopyWithImpl(this._self, this._then);

  final _FinalMask _self;
  final $Res Function(_FinalMask) _then;

/// Create a copy of FinalMask
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? tcp = freezed,Object? udp = freezed,Object? quicParams = freezed,}) {
  return _then(_FinalMask(
tcp: freezed == tcp ? _self._tcp : tcp // ignore: cast_nullable_to_non_nullable
as List<Mask>?,udp: freezed == udp ? _self._udp : udp // ignore: cast_nullable_to_non_nullable
as List<Mask>?,quicParams: freezed == quicParams ? _self.quicParams : quicParams // ignore: cast_nullable_to_non_nullable
as QuicParamsConfig?,
  ));
}

/// Create a copy of FinalMask
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$QuicParamsConfigCopyWith<$Res>? get quicParams {
    if (_self.quicParams == null) {
    return null;
  }

  return $QuicParamsConfigCopyWith<$Res>(_self.quicParams!, (value) {
    return _then(_self.copyWith(quicParams: value));
  });
}
}

/// @nodoc
mixin _$FragmentMask {

 String? get packets; XrayInt32Range? get length; XrayInt32Range? get delay; XrayInt32Range? get maxSplit;
/// Create a copy of FragmentMask
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FragmentMaskCopyWith<FragmentMask> get copyWith => _$FragmentMaskCopyWithImpl<FragmentMask>(this as FragmentMask, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FragmentMask&&(identical(other.packets, packets) || other.packets == packets)&&(identical(other.length, length) || other.length == length)&&(identical(other.delay, delay) || other.delay == delay)&&(identical(other.maxSplit, maxSplit) || other.maxSplit == maxSplit));
}


@override
int get hashCode => Object.hash(runtimeType,packets,length,delay,maxSplit);

@override
String toString() {
  return 'FragmentMask(packets: $packets, length: $length, delay: $delay, maxSplit: $maxSplit)';
}


}

/// @nodoc
abstract mixin class $FragmentMaskCopyWith<$Res>  {
  factory $FragmentMaskCopyWith(FragmentMask value, $Res Function(FragmentMask) _then) = _$FragmentMaskCopyWithImpl;
@useResult
$Res call({
 String? packets, XrayInt32Range? length, XrayInt32Range? delay, XrayInt32Range? maxSplit
});


$XrayInt32RangeCopyWith<$Res>? get length;$XrayInt32RangeCopyWith<$Res>? get delay;$XrayInt32RangeCopyWith<$Res>? get maxSplit;

}
/// @nodoc
class _$FragmentMaskCopyWithImpl<$Res>
    implements $FragmentMaskCopyWith<$Res> {
  _$FragmentMaskCopyWithImpl(this._self, this._then);

  final FragmentMask _self;
  final $Res Function(FragmentMask) _then;

/// Create a copy of FragmentMask
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? packets = freezed,Object? length = freezed,Object? delay = freezed,Object? maxSplit = freezed,}) {
  return _then(_self.copyWith(
packets: freezed == packets ? _self.packets : packets // ignore: cast_nullable_to_non_nullable
as String?,length: freezed == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,delay: freezed == delay ? _self.delay : delay // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,maxSplit: freezed == maxSplit ? _self.maxSplit : maxSplit // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,
  ));
}
/// Create a copy of FragmentMask
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get length {
    if (_self.length == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.length!, (value) {
    return _then(_self.copyWith(length: value));
  });
}/// Create a copy of FragmentMask
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get delay {
    if (_self.delay == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.delay!, (value) {
    return _then(_self.copyWith(delay: value));
  });
}/// Create a copy of FragmentMask
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get maxSplit {
    if (_self.maxSplit == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.maxSplit!, (value) {
    return _then(_self.copyWith(maxSplit: value));
  });
}
}


/// Adds pattern-matching-related methods to [FragmentMask].
extension FragmentMaskPatterns on FragmentMask {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FragmentMask value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FragmentMask() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FragmentMask value)  $default,){
final _that = this;
switch (_that) {
case _FragmentMask():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FragmentMask value)?  $default,){
final _that = this;
switch (_that) {
case _FragmentMask() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? packets,  XrayInt32Range? length,  XrayInt32Range? delay,  XrayInt32Range? maxSplit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FragmentMask() when $default != null:
return $default(_that.packets,_that.length,_that.delay,_that.maxSplit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? packets,  XrayInt32Range? length,  XrayInt32Range? delay,  XrayInt32Range? maxSplit)  $default,) {final _that = this;
switch (_that) {
case _FragmentMask():
return $default(_that.packets,_that.length,_that.delay,_that.maxSplit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? packets,  XrayInt32Range? length,  XrayInt32Range? delay,  XrayInt32Range? maxSplit)?  $default,) {final _that = this;
switch (_that) {
case _FragmentMask() when $default != null:
return $default(_that.packets,_that.length,_that.delay,_that.maxSplit);case _:
  return null;

}
}

}

/// @nodoc


class _FragmentMask extends FragmentMask {
  const _FragmentMask({this.packets, this.length, this.delay, this.maxSplit}): super._();
  

@override final  String? packets;
@override final  XrayInt32Range? length;
@override final  XrayInt32Range? delay;
@override final  XrayInt32Range? maxSplit;

/// Create a copy of FragmentMask
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FragmentMaskCopyWith<_FragmentMask> get copyWith => __$FragmentMaskCopyWithImpl<_FragmentMask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FragmentMask&&(identical(other.packets, packets) || other.packets == packets)&&(identical(other.length, length) || other.length == length)&&(identical(other.delay, delay) || other.delay == delay)&&(identical(other.maxSplit, maxSplit) || other.maxSplit == maxSplit));
}


@override
int get hashCode => Object.hash(runtimeType,packets,length,delay,maxSplit);

@override
String toString() {
  return 'FragmentMask(packets: $packets, length: $length, delay: $delay, maxSplit: $maxSplit)';
}


}

/// @nodoc
abstract mixin class _$FragmentMaskCopyWith<$Res> implements $FragmentMaskCopyWith<$Res> {
  factory _$FragmentMaskCopyWith(_FragmentMask value, $Res Function(_FragmentMask) _then) = __$FragmentMaskCopyWithImpl;
@override @useResult
$Res call({
 String? packets, XrayInt32Range? length, XrayInt32Range? delay, XrayInt32Range? maxSplit
});


@override $XrayInt32RangeCopyWith<$Res>? get length;@override $XrayInt32RangeCopyWith<$Res>? get delay;@override $XrayInt32RangeCopyWith<$Res>? get maxSplit;

}
/// @nodoc
class __$FragmentMaskCopyWithImpl<$Res>
    implements _$FragmentMaskCopyWith<$Res> {
  __$FragmentMaskCopyWithImpl(this._self, this._then);

  final _FragmentMask _self;
  final $Res Function(_FragmentMask) _then;

/// Create a copy of FragmentMask
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? packets = freezed,Object? length = freezed,Object? delay = freezed,Object? maxSplit = freezed,}) {
  return _then(_FragmentMask(
packets: freezed == packets ? _self.packets : packets // ignore: cast_nullable_to_non_nullable
as String?,length: freezed == length ? _self.length : length // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,delay: freezed == delay ? _self.delay : delay // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,maxSplit: freezed == maxSplit ? _self.maxSplit : maxSplit // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,
  ));
}

/// Create a copy of FragmentMask
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get length {
    if (_self.length == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.length!, (value) {
    return _then(_self.copyWith(length: value));
  });
}/// Create a copy of FragmentMask
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get delay {
    if (_self.delay == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.delay!, (value) {
    return _then(_self.copyWith(delay: value));
  });
}/// Create a copy of FragmentMask
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get maxSplit {
    if (_self.maxSplit == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.maxSplit!, (value) {
    return _then(_self.copyWith(maxSplit: value));
  });
}
}

/// @nodoc
mixin _$GRPCConfig {

 String? get authority; String? get serviceName; bool? get multiMode;@JsonKey(name: 'idle_timeout') int? get idleTimeout;@JsonKey(name: 'health_check_timeout') int? get healthCheckTimeout;@JsonKey(name: 'permit_without_stream') bool? get permitWithoutStream;@JsonKey(name: 'initial_windows_size') int? get initialWindowsSize;@JsonKey(name: 'user_agent') String? get userAgent;
/// Create a copy of GRPCConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GRPCConfigCopyWith<GRPCConfig> get copyWith => _$GRPCConfigCopyWithImpl<GRPCConfig>(this as GRPCConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GRPCConfig&&(identical(other.authority, authority) || other.authority == authority)&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.multiMode, multiMode) || other.multiMode == multiMode)&&(identical(other.idleTimeout, idleTimeout) || other.idleTimeout == idleTimeout)&&(identical(other.healthCheckTimeout, healthCheckTimeout) || other.healthCheckTimeout == healthCheckTimeout)&&(identical(other.permitWithoutStream, permitWithoutStream) || other.permitWithoutStream == permitWithoutStream)&&(identical(other.initialWindowsSize, initialWindowsSize) || other.initialWindowsSize == initialWindowsSize)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent));
}


@override
int get hashCode => Object.hash(runtimeType,authority,serviceName,multiMode,idleTimeout,healthCheckTimeout,permitWithoutStream,initialWindowsSize,userAgent);

@override
String toString() {
  return 'GRPCConfig(authority: $authority, serviceName: $serviceName, multiMode: $multiMode, idleTimeout: $idleTimeout, healthCheckTimeout: $healthCheckTimeout, permitWithoutStream: $permitWithoutStream, initialWindowsSize: $initialWindowsSize, userAgent: $userAgent)';
}


}

/// @nodoc
abstract mixin class $GRPCConfigCopyWith<$Res>  {
  factory $GRPCConfigCopyWith(GRPCConfig value, $Res Function(GRPCConfig) _then) = _$GRPCConfigCopyWithImpl;
@useResult
$Res call({
 String? authority, String? serviceName, bool? multiMode,@JsonKey(name: 'idle_timeout') int? idleTimeout,@JsonKey(name: 'health_check_timeout') int? healthCheckTimeout,@JsonKey(name: 'permit_without_stream') bool? permitWithoutStream,@JsonKey(name: 'initial_windows_size') int? initialWindowsSize,@JsonKey(name: 'user_agent') String? userAgent
});




}
/// @nodoc
class _$GRPCConfigCopyWithImpl<$Res>
    implements $GRPCConfigCopyWith<$Res> {
  _$GRPCConfigCopyWithImpl(this._self, this._then);

  final GRPCConfig _self;
  final $Res Function(GRPCConfig) _then;

/// Create a copy of GRPCConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? authority = freezed,Object? serviceName = freezed,Object? multiMode = freezed,Object? idleTimeout = freezed,Object? healthCheckTimeout = freezed,Object? permitWithoutStream = freezed,Object? initialWindowsSize = freezed,Object? userAgent = freezed,}) {
  return _then(_self.copyWith(
authority: freezed == authority ? _self.authority : authority // ignore: cast_nullable_to_non_nullable
as String?,serviceName: freezed == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String?,multiMode: freezed == multiMode ? _self.multiMode : multiMode // ignore: cast_nullable_to_non_nullable
as bool?,idleTimeout: freezed == idleTimeout ? _self.idleTimeout : idleTimeout // ignore: cast_nullable_to_non_nullable
as int?,healthCheckTimeout: freezed == healthCheckTimeout ? _self.healthCheckTimeout : healthCheckTimeout // ignore: cast_nullable_to_non_nullable
as int?,permitWithoutStream: freezed == permitWithoutStream ? _self.permitWithoutStream : permitWithoutStream // ignore: cast_nullable_to_non_nullable
as bool?,initialWindowsSize: freezed == initialWindowsSize ? _self.initialWindowsSize : initialWindowsSize // ignore: cast_nullable_to_non_nullable
as int?,userAgent: freezed == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [GRPCConfig].
extension GRPCConfigPatterns on GRPCConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GRPCConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GRPCConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GRPCConfig value)  $default,){
final _that = this;
switch (_that) {
case _GRPCConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GRPCConfig value)?  $default,){
final _that = this;
switch (_that) {
case _GRPCConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? authority,  String? serviceName,  bool? multiMode, @JsonKey(name: 'idle_timeout')  int? idleTimeout, @JsonKey(name: 'health_check_timeout')  int? healthCheckTimeout, @JsonKey(name: 'permit_without_stream')  bool? permitWithoutStream, @JsonKey(name: 'initial_windows_size')  int? initialWindowsSize, @JsonKey(name: 'user_agent')  String? userAgent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GRPCConfig() when $default != null:
return $default(_that.authority,_that.serviceName,_that.multiMode,_that.idleTimeout,_that.healthCheckTimeout,_that.permitWithoutStream,_that.initialWindowsSize,_that.userAgent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? authority,  String? serviceName,  bool? multiMode, @JsonKey(name: 'idle_timeout')  int? idleTimeout, @JsonKey(name: 'health_check_timeout')  int? healthCheckTimeout, @JsonKey(name: 'permit_without_stream')  bool? permitWithoutStream, @JsonKey(name: 'initial_windows_size')  int? initialWindowsSize, @JsonKey(name: 'user_agent')  String? userAgent)  $default,) {final _that = this;
switch (_that) {
case _GRPCConfig():
return $default(_that.authority,_that.serviceName,_that.multiMode,_that.idleTimeout,_that.healthCheckTimeout,_that.permitWithoutStream,_that.initialWindowsSize,_that.userAgent);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? authority,  String? serviceName,  bool? multiMode, @JsonKey(name: 'idle_timeout')  int? idleTimeout, @JsonKey(name: 'health_check_timeout')  int? healthCheckTimeout, @JsonKey(name: 'permit_without_stream')  bool? permitWithoutStream, @JsonKey(name: 'initial_windows_size')  int? initialWindowsSize, @JsonKey(name: 'user_agent')  String? userAgent)?  $default,) {final _that = this;
switch (_that) {
case _GRPCConfig() when $default != null:
return $default(_that.authority,_that.serviceName,_that.multiMode,_that.idleTimeout,_that.healthCheckTimeout,_that.permitWithoutStream,_that.initialWindowsSize,_that.userAgent);case _:
  return null;

}
}

}

/// @nodoc


class _GRPCConfig extends GRPCConfig {
  const _GRPCConfig({this.authority, this.serviceName, this.multiMode, @JsonKey(name: 'idle_timeout') this.idleTimeout, @JsonKey(name: 'health_check_timeout') this.healthCheckTimeout, @JsonKey(name: 'permit_without_stream') this.permitWithoutStream, @JsonKey(name: 'initial_windows_size') this.initialWindowsSize, @JsonKey(name: 'user_agent') this.userAgent}): super._();
  

@override final  String? authority;
@override final  String? serviceName;
@override final  bool? multiMode;
@override@JsonKey(name: 'idle_timeout') final  int? idleTimeout;
@override@JsonKey(name: 'health_check_timeout') final  int? healthCheckTimeout;
@override@JsonKey(name: 'permit_without_stream') final  bool? permitWithoutStream;
@override@JsonKey(name: 'initial_windows_size') final  int? initialWindowsSize;
@override@JsonKey(name: 'user_agent') final  String? userAgent;

/// Create a copy of GRPCConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GRPCConfigCopyWith<_GRPCConfig> get copyWith => __$GRPCConfigCopyWithImpl<_GRPCConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GRPCConfig&&(identical(other.authority, authority) || other.authority == authority)&&(identical(other.serviceName, serviceName) || other.serviceName == serviceName)&&(identical(other.multiMode, multiMode) || other.multiMode == multiMode)&&(identical(other.idleTimeout, idleTimeout) || other.idleTimeout == idleTimeout)&&(identical(other.healthCheckTimeout, healthCheckTimeout) || other.healthCheckTimeout == healthCheckTimeout)&&(identical(other.permitWithoutStream, permitWithoutStream) || other.permitWithoutStream == permitWithoutStream)&&(identical(other.initialWindowsSize, initialWindowsSize) || other.initialWindowsSize == initialWindowsSize)&&(identical(other.userAgent, userAgent) || other.userAgent == userAgent));
}


@override
int get hashCode => Object.hash(runtimeType,authority,serviceName,multiMode,idleTimeout,healthCheckTimeout,permitWithoutStream,initialWindowsSize,userAgent);

@override
String toString() {
  return 'GRPCConfig(authority: $authority, serviceName: $serviceName, multiMode: $multiMode, idleTimeout: $idleTimeout, healthCheckTimeout: $healthCheckTimeout, permitWithoutStream: $permitWithoutStream, initialWindowsSize: $initialWindowsSize, userAgent: $userAgent)';
}


}

/// @nodoc
abstract mixin class _$GRPCConfigCopyWith<$Res> implements $GRPCConfigCopyWith<$Res> {
  factory _$GRPCConfigCopyWith(_GRPCConfig value, $Res Function(_GRPCConfig) _then) = __$GRPCConfigCopyWithImpl;
@override @useResult
$Res call({
 String? authority, String? serviceName, bool? multiMode,@JsonKey(name: 'idle_timeout') int? idleTimeout,@JsonKey(name: 'health_check_timeout') int? healthCheckTimeout,@JsonKey(name: 'permit_without_stream') bool? permitWithoutStream,@JsonKey(name: 'initial_windows_size') int? initialWindowsSize,@JsonKey(name: 'user_agent') String? userAgent
});




}
/// @nodoc
class __$GRPCConfigCopyWithImpl<$Res>
    implements _$GRPCConfigCopyWith<$Res> {
  __$GRPCConfigCopyWithImpl(this._self, this._then);

  final _GRPCConfig _self;
  final $Res Function(_GRPCConfig) _then;

/// Create a copy of GRPCConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? authority = freezed,Object? serviceName = freezed,Object? multiMode = freezed,Object? idleTimeout = freezed,Object? healthCheckTimeout = freezed,Object? permitWithoutStream = freezed,Object? initialWindowsSize = freezed,Object? userAgent = freezed,}) {
  return _then(_GRPCConfig(
authority: freezed == authority ? _self.authority : authority // ignore: cast_nullable_to_non_nullable
as String?,serviceName: freezed == serviceName ? _self.serviceName : serviceName // ignore: cast_nullable_to_non_nullable
as String?,multiMode: freezed == multiMode ? _self.multiMode : multiMode // ignore: cast_nullable_to_non_nullable
as bool?,idleTimeout: freezed == idleTimeout ? _self.idleTimeout : idleTimeout // ignore: cast_nullable_to_non_nullable
as int?,healthCheckTimeout: freezed == healthCheckTimeout ? _self.healthCheckTimeout : healthCheckTimeout // ignore: cast_nullable_to_non_nullable
as int?,permitWithoutStream: freezed == permitWithoutStream ? _self.permitWithoutStream : permitWithoutStream // ignore: cast_nullable_to_non_nullable
as bool?,initialWindowsSize: freezed == initialWindowsSize ? _self.initialWindowsSize : initialWindowsSize // ignore: cast_nullable_to_non_nullable
as int?,userAgent: freezed == userAgent ? _self.userAgent : userAgent // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$HappyEyeballsConfig {

 bool? get prioritizeIPv6; int? get tryDelayMs; int? get interleave; int? get maxConcurrentTry;
/// Create a copy of HappyEyeballsConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HappyEyeballsConfigCopyWith<HappyEyeballsConfig> get copyWith => _$HappyEyeballsConfigCopyWithImpl<HappyEyeballsConfig>(this as HappyEyeballsConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HappyEyeballsConfig&&(identical(other.prioritizeIPv6, prioritizeIPv6) || other.prioritizeIPv6 == prioritizeIPv6)&&(identical(other.tryDelayMs, tryDelayMs) || other.tryDelayMs == tryDelayMs)&&(identical(other.interleave, interleave) || other.interleave == interleave)&&(identical(other.maxConcurrentTry, maxConcurrentTry) || other.maxConcurrentTry == maxConcurrentTry));
}


@override
int get hashCode => Object.hash(runtimeType,prioritizeIPv6,tryDelayMs,interleave,maxConcurrentTry);

@override
String toString() {
  return 'HappyEyeballsConfig(prioritizeIPv6: $prioritizeIPv6, tryDelayMs: $tryDelayMs, interleave: $interleave, maxConcurrentTry: $maxConcurrentTry)';
}


}

/// @nodoc
abstract mixin class $HappyEyeballsConfigCopyWith<$Res>  {
  factory $HappyEyeballsConfigCopyWith(HappyEyeballsConfig value, $Res Function(HappyEyeballsConfig) _then) = _$HappyEyeballsConfigCopyWithImpl;
@useResult
$Res call({
 bool? prioritizeIPv6, int? tryDelayMs, int? interleave, int? maxConcurrentTry
});




}
/// @nodoc
class _$HappyEyeballsConfigCopyWithImpl<$Res>
    implements $HappyEyeballsConfigCopyWith<$Res> {
  _$HappyEyeballsConfigCopyWithImpl(this._self, this._then);

  final HappyEyeballsConfig _self;
  final $Res Function(HappyEyeballsConfig) _then;

/// Create a copy of HappyEyeballsConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? prioritizeIPv6 = freezed,Object? tryDelayMs = freezed,Object? interleave = freezed,Object? maxConcurrentTry = freezed,}) {
  return _then(_self.copyWith(
prioritizeIPv6: freezed == prioritizeIPv6 ? _self.prioritizeIPv6 : prioritizeIPv6 // ignore: cast_nullable_to_non_nullable
as bool?,tryDelayMs: freezed == tryDelayMs ? _self.tryDelayMs : tryDelayMs // ignore: cast_nullable_to_non_nullable
as int?,interleave: freezed == interleave ? _self.interleave : interleave // ignore: cast_nullable_to_non_nullable
as int?,maxConcurrentTry: freezed == maxConcurrentTry ? _self.maxConcurrentTry : maxConcurrentTry // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [HappyEyeballsConfig].
extension HappyEyeballsConfigPatterns on HappyEyeballsConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HappyEyeballsConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HappyEyeballsConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HappyEyeballsConfig value)  $default,){
final _that = this;
switch (_that) {
case _HappyEyeballsConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HappyEyeballsConfig value)?  $default,){
final _that = this;
switch (_that) {
case _HappyEyeballsConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? prioritizeIPv6,  int? tryDelayMs,  int? interleave,  int? maxConcurrentTry)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HappyEyeballsConfig() when $default != null:
return $default(_that.prioritizeIPv6,_that.tryDelayMs,_that.interleave,_that.maxConcurrentTry);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? prioritizeIPv6,  int? tryDelayMs,  int? interleave,  int? maxConcurrentTry)  $default,) {final _that = this;
switch (_that) {
case _HappyEyeballsConfig():
return $default(_that.prioritizeIPv6,_that.tryDelayMs,_that.interleave,_that.maxConcurrentTry);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? prioritizeIPv6,  int? tryDelayMs,  int? interleave,  int? maxConcurrentTry)?  $default,) {final _that = this;
switch (_that) {
case _HappyEyeballsConfig() when $default != null:
return $default(_that.prioritizeIPv6,_that.tryDelayMs,_that.interleave,_that.maxConcurrentTry);case _:
  return null;

}
}

}

/// @nodoc


class _HappyEyeballsConfig extends HappyEyeballsConfig {
  const _HappyEyeballsConfig({this.prioritizeIPv6, this.tryDelayMs, this.interleave, this.maxConcurrentTry}): super._();
  

@override final  bool? prioritizeIPv6;
@override final  int? tryDelayMs;
@override final  int? interleave;
@override final  int? maxConcurrentTry;

/// Create a copy of HappyEyeballsConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HappyEyeballsConfigCopyWith<_HappyEyeballsConfig> get copyWith => __$HappyEyeballsConfigCopyWithImpl<_HappyEyeballsConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HappyEyeballsConfig&&(identical(other.prioritizeIPv6, prioritizeIPv6) || other.prioritizeIPv6 == prioritizeIPv6)&&(identical(other.tryDelayMs, tryDelayMs) || other.tryDelayMs == tryDelayMs)&&(identical(other.interleave, interleave) || other.interleave == interleave)&&(identical(other.maxConcurrentTry, maxConcurrentTry) || other.maxConcurrentTry == maxConcurrentTry));
}


@override
int get hashCode => Object.hash(runtimeType,prioritizeIPv6,tryDelayMs,interleave,maxConcurrentTry);

@override
String toString() {
  return 'HappyEyeballsConfig(prioritizeIPv6: $prioritizeIPv6, tryDelayMs: $tryDelayMs, interleave: $interleave, maxConcurrentTry: $maxConcurrentTry)';
}


}

/// @nodoc
abstract mixin class _$HappyEyeballsConfigCopyWith<$Res> implements $HappyEyeballsConfigCopyWith<$Res> {
  factory _$HappyEyeballsConfigCopyWith(_HappyEyeballsConfig value, $Res Function(_HappyEyeballsConfig) _then) = __$HappyEyeballsConfigCopyWithImpl;
@override @useResult
$Res call({
 bool? prioritizeIPv6, int? tryDelayMs, int? interleave, int? maxConcurrentTry
});




}
/// @nodoc
class __$HappyEyeballsConfigCopyWithImpl<$Res>
    implements _$HappyEyeballsConfigCopyWith<$Res> {
  __$HappyEyeballsConfigCopyWithImpl(this._self, this._then);

  final _HappyEyeballsConfig _self;
  final $Res Function(_HappyEyeballsConfig) _then;

/// Create a copy of HappyEyeballsConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? prioritizeIPv6 = freezed,Object? tryDelayMs = freezed,Object? interleave = freezed,Object? maxConcurrentTry = freezed,}) {
  return _then(_HappyEyeballsConfig(
prioritizeIPv6: freezed == prioritizeIPv6 ? _self.prioritizeIPv6 : prioritizeIPv6 // ignore: cast_nullable_to_non_nullable
as bool?,tryDelayMs: freezed == tryDelayMs ? _self.tryDelayMs : tryDelayMs // ignore: cast_nullable_to_non_nullable
as int?,interleave: freezed == interleave ? _self.interleave : interleave // ignore: cast_nullable_to_non_nullable
as int?,maxConcurrentTry: freezed == maxConcurrentTry ? _self.maxConcurrentTry : maxConcurrentTry // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$HeaderCustomTCP {

 List<List<TCPItem>>? get clients; List<List<TCPItem>>? get servers; List<List<TCPItem>>? get errors;
/// Create a copy of HeaderCustomTCP
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeaderCustomTCPCopyWith<HeaderCustomTCP> get copyWith => _$HeaderCustomTCPCopyWithImpl<HeaderCustomTCP>(this as HeaderCustomTCP, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeaderCustomTCP&&const DeepCollectionEquality().equals(other.clients, clients)&&const DeepCollectionEquality().equals(other.servers, servers)&&const DeepCollectionEquality().equals(other.errors, errors));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(clients),const DeepCollectionEquality().hash(servers),const DeepCollectionEquality().hash(errors));

@override
String toString() {
  return 'HeaderCustomTCP(clients: $clients, servers: $servers, errors: $errors)';
}


}

/// @nodoc
abstract mixin class $HeaderCustomTCPCopyWith<$Res>  {
  factory $HeaderCustomTCPCopyWith(HeaderCustomTCP value, $Res Function(HeaderCustomTCP) _then) = _$HeaderCustomTCPCopyWithImpl;
@useResult
$Res call({
 List<List<TCPItem>>? clients, List<List<TCPItem>>? servers, List<List<TCPItem>>? errors
});




}
/// @nodoc
class _$HeaderCustomTCPCopyWithImpl<$Res>
    implements $HeaderCustomTCPCopyWith<$Res> {
  _$HeaderCustomTCPCopyWithImpl(this._self, this._then);

  final HeaderCustomTCP _self;
  final $Res Function(HeaderCustomTCP) _then;

/// Create a copy of HeaderCustomTCP
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clients = freezed,Object? servers = freezed,Object? errors = freezed,}) {
  return _then(_self.copyWith(
clients: freezed == clients ? _self.clients : clients // ignore: cast_nullable_to_non_nullable
as List<List<TCPItem>>?,servers: freezed == servers ? _self.servers : servers // ignore: cast_nullable_to_non_nullable
as List<List<TCPItem>>?,errors: freezed == errors ? _self.errors : errors // ignore: cast_nullable_to_non_nullable
as List<List<TCPItem>>?,
  ));
}

}


/// Adds pattern-matching-related methods to [HeaderCustomTCP].
extension HeaderCustomTCPPatterns on HeaderCustomTCP {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HeaderCustomTCP value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HeaderCustomTCP() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HeaderCustomTCP value)  $default,){
final _that = this;
switch (_that) {
case _HeaderCustomTCP():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HeaderCustomTCP value)?  $default,){
final _that = this;
switch (_that) {
case _HeaderCustomTCP() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<List<TCPItem>>? clients,  List<List<TCPItem>>? servers,  List<List<TCPItem>>? errors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HeaderCustomTCP() when $default != null:
return $default(_that.clients,_that.servers,_that.errors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<List<TCPItem>>? clients,  List<List<TCPItem>>? servers,  List<List<TCPItem>>? errors)  $default,) {final _that = this;
switch (_that) {
case _HeaderCustomTCP():
return $default(_that.clients,_that.servers,_that.errors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<List<TCPItem>>? clients,  List<List<TCPItem>>? servers,  List<List<TCPItem>>? errors)?  $default,) {final _that = this;
switch (_that) {
case _HeaderCustomTCP() when $default != null:
return $default(_that.clients,_that.servers,_that.errors);case _:
  return null;

}
}

}

/// @nodoc


class _HeaderCustomTCP extends HeaderCustomTCP {
  const _HeaderCustomTCP({final  List<List<TCPItem>>? clients, final  List<List<TCPItem>>? servers, final  List<List<TCPItem>>? errors}): _clients = clients,_servers = servers,_errors = errors,super._();
  

 final  List<List<TCPItem>>? _clients;
@override List<List<TCPItem>>? get clients {
  final value = _clients;
  if (value == null) return null;
  if (_clients is EqualUnmodifiableListView) return _clients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<List<TCPItem>>? _servers;
@override List<List<TCPItem>>? get servers {
  final value = _servers;
  if (value == null) return null;
  if (_servers is EqualUnmodifiableListView) return _servers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<List<TCPItem>>? _errors;
@override List<List<TCPItem>>? get errors {
  final value = _errors;
  if (value == null) return null;
  if (_errors is EqualUnmodifiableListView) return _errors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HeaderCustomTCP
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeaderCustomTCPCopyWith<_HeaderCustomTCP> get copyWith => __$HeaderCustomTCPCopyWithImpl<_HeaderCustomTCP>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeaderCustomTCP&&const DeepCollectionEquality().equals(other._clients, _clients)&&const DeepCollectionEquality().equals(other._servers, _servers)&&const DeepCollectionEquality().equals(other._errors, _errors));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_clients),const DeepCollectionEquality().hash(_servers),const DeepCollectionEquality().hash(_errors));

@override
String toString() {
  return 'HeaderCustomTCP(clients: $clients, servers: $servers, errors: $errors)';
}


}

/// @nodoc
abstract mixin class _$HeaderCustomTCPCopyWith<$Res> implements $HeaderCustomTCPCopyWith<$Res> {
  factory _$HeaderCustomTCPCopyWith(_HeaderCustomTCP value, $Res Function(_HeaderCustomTCP) _then) = __$HeaderCustomTCPCopyWithImpl;
@override @useResult
$Res call({
 List<List<TCPItem>>? clients, List<List<TCPItem>>? servers, List<List<TCPItem>>? errors
});




}
/// @nodoc
class __$HeaderCustomTCPCopyWithImpl<$Res>
    implements _$HeaderCustomTCPCopyWith<$Res> {
  __$HeaderCustomTCPCopyWithImpl(this._self, this._then);

  final _HeaderCustomTCP _self;
  final $Res Function(_HeaderCustomTCP) _then;

/// Create a copy of HeaderCustomTCP
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clients = freezed,Object? servers = freezed,Object? errors = freezed,}) {
  return _then(_HeaderCustomTCP(
clients: freezed == clients ? _self._clients : clients // ignore: cast_nullable_to_non_nullable
as List<List<TCPItem>>?,servers: freezed == servers ? _self._servers : servers // ignore: cast_nullable_to_non_nullable
as List<List<TCPItem>>?,errors: freezed == errors ? _self._errors : errors // ignore: cast_nullable_to_non_nullable
as List<List<TCPItem>>?,
  ));
}


}

/// @nodoc
mixin _$HeaderCustomUDP {

 String? get mode;@JsonKey(name: 'client') List<UDPItem>? get client;@JsonKey(name: 'server') List<UDPItem>? get server;
/// Create a copy of HeaderCustomUDP
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HeaderCustomUDPCopyWith<HeaderCustomUDP> get copyWith => _$HeaderCustomUDPCopyWithImpl<HeaderCustomUDP>(this as HeaderCustomUDP, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HeaderCustomUDP&&(identical(other.mode, mode) || other.mode == mode)&&const DeepCollectionEquality().equals(other.client, client)&&const DeepCollectionEquality().equals(other.server, server));
}


@override
int get hashCode => Object.hash(runtimeType,mode,const DeepCollectionEquality().hash(client),const DeepCollectionEquality().hash(server));

@override
String toString() {
  return 'HeaderCustomUDP(mode: $mode, client: $client, server: $server)';
}


}

/// @nodoc
abstract mixin class $HeaderCustomUDPCopyWith<$Res>  {
  factory $HeaderCustomUDPCopyWith(HeaderCustomUDP value, $Res Function(HeaderCustomUDP) _then) = _$HeaderCustomUDPCopyWithImpl;
@useResult
$Res call({
 String? mode,@JsonKey(name: 'client') List<UDPItem>? client,@JsonKey(name: 'server') List<UDPItem>? server
});




}
/// @nodoc
class _$HeaderCustomUDPCopyWithImpl<$Res>
    implements $HeaderCustomUDPCopyWith<$Res> {
  _$HeaderCustomUDPCopyWithImpl(this._self, this._then);

  final HeaderCustomUDP _self;
  final $Res Function(HeaderCustomUDP) _then;

/// Create a copy of HeaderCustomUDP
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mode = freezed,Object? client = freezed,Object? server = freezed,}) {
  return _then(_self.copyWith(
mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as String?,client: freezed == client ? _self.client : client // ignore: cast_nullable_to_non_nullable
as List<UDPItem>?,server: freezed == server ? _self.server : server // ignore: cast_nullable_to_non_nullable
as List<UDPItem>?,
  ));
}

}


/// Adds pattern-matching-related methods to [HeaderCustomUDP].
extension HeaderCustomUDPPatterns on HeaderCustomUDP {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HeaderCustomUDP value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HeaderCustomUDP() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HeaderCustomUDP value)  $default,){
final _that = this;
switch (_that) {
case _HeaderCustomUDP():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HeaderCustomUDP value)?  $default,){
final _that = this;
switch (_that) {
case _HeaderCustomUDP() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? mode, @JsonKey(name: 'client')  List<UDPItem>? client, @JsonKey(name: 'server')  List<UDPItem>? server)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HeaderCustomUDP() when $default != null:
return $default(_that.mode,_that.client,_that.server);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? mode, @JsonKey(name: 'client')  List<UDPItem>? client, @JsonKey(name: 'server')  List<UDPItem>? server)  $default,) {final _that = this;
switch (_that) {
case _HeaderCustomUDP():
return $default(_that.mode,_that.client,_that.server);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? mode, @JsonKey(name: 'client')  List<UDPItem>? client, @JsonKey(name: 'server')  List<UDPItem>? server)?  $default,) {final _that = this;
switch (_that) {
case _HeaderCustomUDP() when $default != null:
return $default(_that.mode,_that.client,_that.server);case _:
  return null;

}
}

}

/// @nodoc


class _HeaderCustomUDP extends HeaderCustomUDP {
  const _HeaderCustomUDP({this.mode, @JsonKey(name: 'client') final  List<UDPItem>? client, @JsonKey(name: 'server') final  List<UDPItem>? server}): _client = client,_server = server,super._();
  

@override final  String? mode;
 final  List<UDPItem>? _client;
@override@JsonKey(name: 'client') List<UDPItem>? get client {
  final value = _client;
  if (value == null) return null;
  if (_client is EqualUnmodifiableListView) return _client;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<UDPItem>? _server;
@override@JsonKey(name: 'server') List<UDPItem>? get server {
  final value = _server;
  if (value == null) return null;
  if (_server is EqualUnmodifiableListView) return _server;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of HeaderCustomUDP
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HeaderCustomUDPCopyWith<_HeaderCustomUDP> get copyWith => __$HeaderCustomUDPCopyWithImpl<_HeaderCustomUDP>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HeaderCustomUDP&&(identical(other.mode, mode) || other.mode == mode)&&const DeepCollectionEquality().equals(other._client, _client)&&const DeepCollectionEquality().equals(other._server, _server));
}


@override
int get hashCode => Object.hash(runtimeType,mode,const DeepCollectionEquality().hash(_client),const DeepCollectionEquality().hash(_server));

@override
String toString() {
  return 'HeaderCustomUDP(mode: $mode, client: $client, server: $server)';
}


}

/// @nodoc
abstract mixin class _$HeaderCustomUDPCopyWith<$Res> implements $HeaderCustomUDPCopyWith<$Res> {
  factory _$HeaderCustomUDPCopyWith(_HeaderCustomUDP value, $Res Function(_HeaderCustomUDP) _then) = __$HeaderCustomUDPCopyWithImpl;
@override @useResult
$Res call({
 String? mode,@JsonKey(name: 'client') List<UDPItem>? client,@JsonKey(name: 'server') List<UDPItem>? server
});




}
/// @nodoc
class __$HeaderCustomUDPCopyWithImpl<$Res>
    implements _$HeaderCustomUDPCopyWith<$Res> {
  __$HeaderCustomUDPCopyWithImpl(this._self, this._then);

  final _HeaderCustomUDP _self;
  final $Res Function(_HeaderCustomUDP) _then;

/// Create a copy of HeaderCustomUDP
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mode = freezed,Object? client = freezed,Object? server = freezed,}) {
  return _then(_HeaderCustomUDP(
mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as String?,client: freezed == client ? _self._client : client // ignore: cast_nullable_to_non_nullable
as List<UDPItem>?,server: freezed == server ? _self._server : server // ignore: cast_nullable_to_non_nullable
as List<UDPItem>?,
  ));
}


}

/// @nodoc
mixin _$HttpUpgradeConfig {

 String? get host; String? get path; Map<String, String>? get headers; bool? get acceptProxyProtocol;
/// Create a copy of HttpUpgradeConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HttpUpgradeConfigCopyWith<HttpUpgradeConfig> get copyWith => _$HttpUpgradeConfigCopyWithImpl<HttpUpgradeConfig>(this as HttpUpgradeConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HttpUpgradeConfig&&(identical(other.host, host) || other.host == host)&&(identical(other.path, path) || other.path == path)&&const DeepCollectionEquality().equals(other.headers, headers)&&(identical(other.acceptProxyProtocol, acceptProxyProtocol) || other.acceptProxyProtocol == acceptProxyProtocol));
}


@override
int get hashCode => Object.hash(runtimeType,host,path,const DeepCollectionEquality().hash(headers),acceptProxyProtocol);

@override
String toString() {
  return 'HttpUpgradeConfig(host: $host, path: $path, headers: $headers, acceptProxyProtocol: $acceptProxyProtocol)';
}


}

/// @nodoc
abstract mixin class $HttpUpgradeConfigCopyWith<$Res>  {
  factory $HttpUpgradeConfigCopyWith(HttpUpgradeConfig value, $Res Function(HttpUpgradeConfig) _then) = _$HttpUpgradeConfigCopyWithImpl;
@useResult
$Res call({
 String? host, String? path, Map<String, String>? headers, bool? acceptProxyProtocol
});




}
/// @nodoc
class _$HttpUpgradeConfigCopyWithImpl<$Res>
    implements $HttpUpgradeConfigCopyWith<$Res> {
  _$HttpUpgradeConfigCopyWithImpl(this._self, this._then);

  final HttpUpgradeConfig _self;
  final $Res Function(HttpUpgradeConfig) _then;

/// Create a copy of HttpUpgradeConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? host = freezed,Object? path = freezed,Object? headers = freezed,Object? acceptProxyProtocol = freezed,}) {
  return _then(_self.copyWith(
host: freezed == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,headers: freezed == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,acceptProxyProtocol: freezed == acceptProxyProtocol ? _self.acceptProxyProtocol : acceptProxyProtocol // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [HttpUpgradeConfig].
extension HttpUpgradeConfigPatterns on HttpUpgradeConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HttpUpgradeConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HttpUpgradeConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HttpUpgradeConfig value)  $default,){
final _that = this;
switch (_that) {
case _HttpUpgradeConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HttpUpgradeConfig value)?  $default,){
final _that = this;
switch (_that) {
case _HttpUpgradeConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? host,  String? path,  Map<String, String>? headers,  bool? acceptProxyProtocol)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HttpUpgradeConfig() when $default != null:
return $default(_that.host,_that.path,_that.headers,_that.acceptProxyProtocol);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? host,  String? path,  Map<String, String>? headers,  bool? acceptProxyProtocol)  $default,) {final _that = this;
switch (_that) {
case _HttpUpgradeConfig():
return $default(_that.host,_that.path,_that.headers,_that.acceptProxyProtocol);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? host,  String? path,  Map<String, String>? headers,  bool? acceptProxyProtocol)?  $default,) {final _that = this;
switch (_that) {
case _HttpUpgradeConfig() when $default != null:
return $default(_that.host,_that.path,_that.headers,_that.acceptProxyProtocol);case _:
  return null;

}
}

}

/// @nodoc


class _HttpUpgradeConfig extends HttpUpgradeConfig {
  const _HttpUpgradeConfig({this.host, this.path, final  Map<String, String>? headers, this.acceptProxyProtocol}): _headers = headers,super._();
  

@override final  String? host;
@override final  String? path;
 final  Map<String, String>? _headers;
@override Map<String, String>? get headers {
  final value = _headers;
  if (value == null) return null;
  if (_headers is EqualUnmodifiableMapView) return _headers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  bool? acceptProxyProtocol;

/// Create a copy of HttpUpgradeConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HttpUpgradeConfigCopyWith<_HttpUpgradeConfig> get copyWith => __$HttpUpgradeConfigCopyWithImpl<_HttpUpgradeConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HttpUpgradeConfig&&(identical(other.host, host) || other.host == host)&&(identical(other.path, path) || other.path == path)&&const DeepCollectionEquality().equals(other._headers, _headers)&&(identical(other.acceptProxyProtocol, acceptProxyProtocol) || other.acceptProxyProtocol == acceptProxyProtocol));
}


@override
int get hashCode => Object.hash(runtimeType,host,path,const DeepCollectionEquality().hash(_headers),acceptProxyProtocol);

@override
String toString() {
  return 'HttpUpgradeConfig(host: $host, path: $path, headers: $headers, acceptProxyProtocol: $acceptProxyProtocol)';
}


}

/// @nodoc
abstract mixin class _$HttpUpgradeConfigCopyWith<$Res> implements $HttpUpgradeConfigCopyWith<$Res> {
  factory _$HttpUpgradeConfigCopyWith(_HttpUpgradeConfig value, $Res Function(_HttpUpgradeConfig) _then) = __$HttpUpgradeConfigCopyWithImpl;
@override @useResult
$Res call({
 String? host, String? path, Map<String, String>? headers, bool? acceptProxyProtocol
});




}
/// @nodoc
class __$HttpUpgradeConfigCopyWithImpl<$Res>
    implements _$HttpUpgradeConfigCopyWith<$Res> {
  __$HttpUpgradeConfigCopyWithImpl(this._self, this._then);

  final _HttpUpgradeConfig _self;
  final $Res Function(_HttpUpgradeConfig) _then;

/// Create a copy of HttpUpgradeConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? host = freezed,Object? path = freezed,Object? headers = freezed,Object? acceptProxyProtocol = freezed,}) {
  return _then(_HttpUpgradeConfig(
host: freezed == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,headers: freezed == headers ? _self._headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,acceptProxyProtocol: freezed == acceptProxyProtocol ? _self.acceptProxyProtocol : acceptProxyProtocol // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc
mixin _$HysteriaConfig {

 int get version; String? get auth; String? get congestion; Bandwidth? get up; Bandwidth? get down;@JsonKey(name: 'udphop') UdpHop? get udpHop; int? get udpIdleTimeout; Masquerade? get masquerade;
/// Create a copy of HysteriaConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HysteriaConfigCopyWith<HysteriaConfig> get copyWith => _$HysteriaConfigCopyWithImpl<HysteriaConfig>(this as HysteriaConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HysteriaConfig&&(identical(other.version, version) || other.version == version)&&(identical(other.auth, auth) || other.auth == auth)&&(identical(other.congestion, congestion) || other.congestion == congestion)&&(identical(other.up, up) || other.up == up)&&(identical(other.down, down) || other.down == down)&&(identical(other.udpHop, udpHop) || other.udpHop == udpHop)&&(identical(other.udpIdleTimeout, udpIdleTimeout) || other.udpIdleTimeout == udpIdleTimeout)&&(identical(other.masquerade, masquerade) || other.masquerade == masquerade));
}


@override
int get hashCode => Object.hash(runtimeType,version,auth,congestion,up,down,udpHop,udpIdleTimeout,masquerade);

@override
String toString() {
  return 'HysteriaConfig(version: $version, auth: $auth, congestion: $congestion, up: $up, down: $down, udpHop: $udpHop, udpIdleTimeout: $udpIdleTimeout, masquerade: $masquerade)';
}


}

/// @nodoc
abstract mixin class $HysteriaConfigCopyWith<$Res>  {
  factory $HysteriaConfigCopyWith(HysteriaConfig value, $Res Function(HysteriaConfig) _then) = _$HysteriaConfigCopyWithImpl;
@useResult
$Res call({
 int version, String? auth, String? congestion, Bandwidth? up, Bandwidth? down,@JsonKey(name: 'udphop') UdpHop? udpHop, int? udpIdleTimeout, Masquerade? masquerade
});


$UdpHopCopyWith<$Res>? get udpHop;$MasqueradeCopyWith<$Res>? get masquerade;

}
/// @nodoc
class _$HysteriaConfigCopyWithImpl<$Res>
    implements $HysteriaConfigCopyWith<$Res> {
  _$HysteriaConfigCopyWithImpl(this._self, this._then);

  final HysteriaConfig _self;
  final $Res Function(HysteriaConfig) _then;

/// Create a copy of HysteriaConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? version = null,Object? auth = freezed,Object? congestion = freezed,Object? up = freezed,Object? down = freezed,Object? udpHop = freezed,Object? udpIdleTimeout = freezed,Object? masquerade = freezed,}) {
  return _then(_self.copyWith(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,auth: freezed == auth ? _self.auth : auth // ignore: cast_nullable_to_non_nullable
as String?,congestion: freezed == congestion ? _self.congestion : congestion // ignore: cast_nullable_to_non_nullable
as String?,up: freezed == up ? _self.up : up // ignore: cast_nullable_to_non_nullable
as Bandwidth?,down: freezed == down ? _self.down : down // ignore: cast_nullable_to_non_nullable
as Bandwidth?,udpHop: freezed == udpHop ? _self.udpHop : udpHop // ignore: cast_nullable_to_non_nullable
as UdpHop?,udpIdleTimeout: freezed == udpIdleTimeout ? _self.udpIdleTimeout : udpIdleTimeout // ignore: cast_nullable_to_non_nullable
as int?,masquerade: freezed == masquerade ? _self.masquerade : masquerade // ignore: cast_nullable_to_non_nullable
as Masquerade?,
  ));
}
/// Create a copy of HysteriaConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UdpHopCopyWith<$Res>? get udpHop {
    if (_self.udpHop == null) {
    return null;
  }

  return $UdpHopCopyWith<$Res>(_self.udpHop!, (value) {
    return _then(_self.copyWith(udpHop: value));
  });
}/// Create a copy of HysteriaConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MasqueradeCopyWith<$Res>? get masquerade {
    if (_self.masquerade == null) {
    return null;
  }

  return $MasqueradeCopyWith<$Res>(_self.masquerade!, (value) {
    return _then(_self.copyWith(masquerade: value));
  });
}
}


/// Adds pattern-matching-related methods to [HysteriaConfig].
extension HysteriaConfigPatterns on HysteriaConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HysteriaConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HysteriaConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HysteriaConfig value)  $default,){
final _that = this;
switch (_that) {
case _HysteriaConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HysteriaConfig value)?  $default,){
final _that = this;
switch (_that) {
case _HysteriaConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int version,  String? auth,  String? congestion,  Bandwidth? up,  Bandwidth? down, @JsonKey(name: 'udphop')  UdpHop? udpHop,  int? udpIdleTimeout,  Masquerade? masquerade)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HysteriaConfig() when $default != null:
return $default(_that.version,_that.auth,_that.congestion,_that.up,_that.down,_that.udpHop,_that.udpIdleTimeout,_that.masquerade);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int version,  String? auth,  String? congestion,  Bandwidth? up,  Bandwidth? down, @JsonKey(name: 'udphop')  UdpHop? udpHop,  int? udpIdleTimeout,  Masquerade? masquerade)  $default,) {final _that = this;
switch (_that) {
case _HysteriaConfig():
return $default(_that.version,_that.auth,_that.congestion,_that.up,_that.down,_that.udpHop,_that.udpIdleTimeout,_that.masquerade);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int version,  String? auth,  String? congestion,  Bandwidth? up,  Bandwidth? down, @JsonKey(name: 'udphop')  UdpHop? udpHop,  int? udpIdleTimeout,  Masquerade? masquerade)?  $default,) {final _that = this;
switch (_that) {
case _HysteriaConfig() when $default != null:
return $default(_that.version,_that.auth,_that.congestion,_that.up,_that.down,_that.udpHop,_that.udpIdleTimeout,_that.masquerade);case _:
  return null;

}
}

}

/// @nodoc


class _HysteriaConfig extends HysteriaConfig {
  const _HysteriaConfig({required this.version, this.auth, this.congestion, this.up, this.down, @JsonKey(name: 'udphop') this.udpHop, this.udpIdleTimeout, this.masquerade}): super._();
  

@override final  int version;
@override final  String? auth;
@override final  String? congestion;
@override final  Bandwidth? up;
@override final  Bandwidth? down;
@override@JsonKey(name: 'udphop') final  UdpHop? udpHop;
@override final  int? udpIdleTimeout;
@override final  Masquerade? masquerade;

/// Create a copy of HysteriaConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HysteriaConfigCopyWith<_HysteriaConfig> get copyWith => __$HysteriaConfigCopyWithImpl<_HysteriaConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HysteriaConfig&&(identical(other.version, version) || other.version == version)&&(identical(other.auth, auth) || other.auth == auth)&&(identical(other.congestion, congestion) || other.congestion == congestion)&&(identical(other.up, up) || other.up == up)&&(identical(other.down, down) || other.down == down)&&(identical(other.udpHop, udpHop) || other.udpHop == udpHop)&&(identical(other.udpIdleTimeout, udpIdleTimeout) || other.udpIdleTimeout == udpIdleTimeout)&&(identical(other.masquerade, masquerade) || other.masquerade == masquerade));
}


@override
int get hashCode => Object.hash(runtimeType,version,auth,congestion,up,down,udpHop,udpIdleTimeout,masquerade);

@override
String toString() {
  return 'HysteriaConfig(version: $version, auth: $auth, congestion: $congestion, up: $up, down: $down, udpHop: $udpHop, udpIdleTimeout: $udpIdleTimeout, masquerade: $masquerade)';
}


}

/// @nodoc
abstract mixin class _$HysteriaConfigCopyWith<$Res> implements $HysteriaConfigCopyWith<$Res> {
  factory _$HysteriaConfigCopyWith(_HysteriaConfig value, $Res Function(_HysteriaConfig) _then) = __$HysteriaConfigCopyWithImpl;
@override @useResult
$Res call({
 int version, String? auth, String? congestion, Bandwidth? up, Bandwidth? down,@JsonKey(name: 'udphop') UdpHop? udpHop, int? udpIdleTimeout, Masquerade? masquerade
});


@override $UdpHopCopyWith<$Res>? get udpHop;@override $MasqueradeCopyWith<$Res>? get masquerade;

}
/// @nodoc
class __$HysteriaConfigCopyWithImpl<$Res>
    implements _$HysteriaConfigCopyWith<$Res> {
  __$HysteriaConfigCopyWithImpl(this._self, this._then);

  final _HysteriaConfig _self;
  final $Res Function(_HysteriaConfig) _then;

/// Create a copy of HysteriaConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? version = null,Object? auth = freezed,Object? congestion = freezed,Object? up = freezed,Object? down = freezed,Object? udpHop = freezed,Object? udpIdleTimeout = freezed,Object? masquerade = freezed,}) {
  return _then(_HysteriaConfig(
version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as int,auth: freezed == auth ? _self.auth : auth // ignore: cast_nullable_to_non_nullable
as String?,congestion: freezed == congestion ? _self.congestion : congestion // ignore: cast_nullable_to_non_nullable
as String?,up: freezed == up ? _self.up : up // ignore: cast_nullable_to_non_nullable
as Bandwidth?,down: freezed == down ? _self.down : down // ignore: cast_nullable_to_non_nullable
as Bandwidth?,udpHop: freezed == udpHop ? _self.udpHop : udpHop // ignore: cast_nullable_to_non_nullable
as UdpHop?,udpIdleTimeout: freezed == udpIdleTimeout ? _self.udpIdleTimeout : udpIdleTimeout // ignore: cast_nullable_to_non_nullable
as int?,masquerade: freezed == masquerade ? _self.masquerade : masquerade // ignore: cast_nullable_to_non_nullable
as Masquerade?,
  ));
}

/// Create a copy of HysteriaConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UdpHopCopyWith<$Res>? get udpHop {
    if (_self.udpHop == null) {
    return null;
  }

  return $UdpHopCopyWith<$Res>(_self.udpHop!, (value) {
    return _then(_self.copyWith(udpHop: value));
  });
}/// Create a copy of HysteriaConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MasqueradeCopyWith<$Res>? get masquerade {
    if (_self.masquerade == null) {
    return null;
  }

  return $MasqueradeCopyWith<$Res>(_self.masquerade!, (value) {
    return _then(_self.copyWith(masquerade: value));
  });
}
}

/// @nodoc
mixin _$KCPConfig {

 int? get mtu; int? get tti;@JsonKey(name: 'uplinkCapacity') int? get upCap;@JsonKey(name: 'downlinkCapacity') int? get downCap; int? get cwndMultiplier; int? get maxSendingWindow; Map<String, dynamic>? get header; String? get seed;
/// Create a copy of KCPConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KCPConfigCopyWith<KCPConfig> get copyWith => _$KCPConfigCopyWithImpl<KCPConfig>(this as KCPConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KCPConfig&&(identical(other.mtu, mtu) || other.mtu == mtu)&&(identical(other.tti, tti) || other.tti == tti)&&(identical(other.upCap, upCap) || other.upCap == upCap)&&(identical(other.downCap, downCap) || other.downCap == downCap)&&(identical(other.cwndMultiplier, cwndMultiplier) || other.cwndMultiplier == cwndMultiplier)&&(identical(other.maxSendingWindow, maxSendingWindow) || other.maxSendingWindow == maxSendingWindow)&&const DeepCollectionEquality().equals(other.header, header)&&(identical(other.seed, seed) || other.seed == seed));
}


@override
int get hashCode => Object.hash(runtimeType,mtu,tti,upCap,downCap,cwndMultiplier,maxSendingWindow,const DeepCollectionEquality().hash(header),seed);

@override
String toString() {
  return 'KCPConfig(mtu: $mtu, tti: $tti, upCap: $upCap, downCap: $downCap, cwndMultiplier: $cwndMultiplier, maxSendingWindow: $maxSendingWindow, header: $header, seed: $seed)';
}


}

/// @nodoc
abstract mixin class $KCPConfigCopyWith<$Res>  {
  factory $KCPConfigCopyWith(KCPConfig value, $Res Function(KCPConfig) _then) = _$KCPConfigCopyWithImpl;
@useResult
$Res call({
 int? mtu, int? tti,@JsonKey(name: 'uplinkCapacity') int? upCap,@JsonKey(name: 'downlinkCapacity') int? downCap, int? cwndMultiplier, int? maxSendingWindow, Map<String, dynamic>? header, String? seed
});




}
/// @nodoc
class _$KCPConfigCopyWithImpl<$Res>
    implements $KCPConfigCopyWith<$Res> {
  _$KCPConfigCopyWithImpl(this._self, this._then);

  final KCPConfig _self;
  final $Res Function(KCPConfig) _then;

/// Create a copy of KCPConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mtu = freezed,Object? tti = freezed,Object? upCap = freezed,Object? downCap = freezed,Object? cwndMultiplier = freezed,Object? maxSendingWindow = freezed,Object? header = freezed,Object? seed = freezed,}) {
  return _then(_self.copyWith(
mtu: freezed == mtu ? _self.mtu : mtu // ignore: cast_nullable_to_non_nullable
as int?,tti: freezed == tti ? _self.tti : tti // ignore: cast_nullable_to_non_nullable
as int?,upCap: freezed == upCap ? _self.upCap : upCap // ignore: cast_nullable_to_non_nullable
as int?,downCap: freezed == downCap ? _self.downCap : downCap // ignore: cast_nullable_to_non_nullable
as int?,cwndMultiplier: freezed == cwndMultiplier ? _self.cwndMultiplier : cwndMultiplier // ignore: cast_nullable_to_non_nullable
as int?,maxSendingWindow: freezed == maxSendingWindow ? _self.maxSendingWindow : maxSendingWindow // ignore: cast_nullable_to_non_nullable
as int?,header: freezed == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,seed: freezed == seed ? _self.seed : seed // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [KCPConfig].
extension KCPConfigPatterns on KCPConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KCPConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KCPConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KCPConfig value)  $default,){
final _that = this;
switch (_that) {
case _KCPConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KCPConfig value)?  $default,){
final _that = this;
switch (_that) {
case _KCPConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? mtu,  int? tti, @JsonKey(name: 'uplinkCapacity')  int? upCap, @JsonKey(name: 'downlinkCapacity')  int? downCap,  int? cwndMultiplier,  int? maxSendingWindow,  Map<String, dynamic>? header,  String? seed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KCPConfig() when $default != null:
return $default(_that.mtu,_that.tti,_that.upCap,_that.downCap,_that.cwndMultiplier,_that.maxSendingWindow,_that.header,_that.seed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? mtu,  int? tti, @JsonKey(name: 'uplinkCapacity')  int? upCap, @JsonKey(name: 'downlinkCapacity')  int? downCap,  int? cwndMultiplier,  int? maxSendingWindow,  Map<String, dynamic>? header,  String? seed)  $default,) {final _that = this;
switch (_that) {
case _KCPConfig():
return $default(_that.mtu,_that.tti,_that.upCap,_that.downCap,_that.cwndMultiplier,_that.maxSendingWindow,_that.header,_that.seed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? mtu,  int? tti, @JsonKey(name: 'uplinkCapacity')  int? upCap, @JsonKey(name: 'downlinkCapacity')  int? downCap,  int? cwndMultiplier,  int? maxSendingWindow,  Map<String, dynamic>? header,  String? seed)?  $default,) {final _that = this;
switch (_that) {
case _KCPConfig() when $default != null:
return $default(_that.mtu,_that.tti,_that.upCap,_that.downCap,_that.cwndMultiplier,_that.maxSendingWindow,_that.header,_that.seed);case _:
  return null;

}
}

}

/// @nodoc


class _KCPConfig extends KCPConfig {
  const _KCPConfig({this.mtu, this.tti, @JsonKey(name: 'uplinkCapacity') this.upCap, @JsonKey(name: 'downlinkCapacity') this.downCap, this.cwndMultiplier, this.maxSendingWindow, final  Map<String, dynamic>? header, this.seed}): _header = header,super._();
  

@override final  int? mtu;
@override final  int? tti;
@override@JsonKey(name: 'uplinkCapacity') final  int? upCap;
@override@JsonKey(name: 'downlinkCapacity') final  int? downCap;
@override final  int? cwndMultiplier;
@override final  int? maxSendingWindow;
 final  Map<String, dynamic>? _header;
@override Map<String, dynamic>? get header {
  final value = _header;
  if (value == null) return null;
  if (_header is EqualUnmodifiableMapView) return _header;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  String? seed;

/// Create a copy of KCPConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KCPConfigCopyWith<_KCPConfig> get copyWith => __$KCPConfigCopyWithImpl<_KCPConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KCPConfig&&(identical(other.mtu, mtu) || other.mtu == mtu)&&(identical(other.tti, tti) || other.tti == tti)&&(identical(other.upCap, upCap) || other.upCap == upCap)&&(identical(other.downCap, downCap) || other.downCap == downCap)&&(identical(other.cwndMultiplier, cwndMultiplier) || other.cwndMultiplier == cwndMultiplier)&&(identical(other.maxSendingWindow, maxSendingWindow) || other.maxSendingWindow == maxSendingWindow)&&const DeepCollectionEquality().equals(other._header, _header)&&(identical(other.seed, seed) || other.seed == seed));
}


@override
int get hashCode => Object.hash(runtimeType,mtu,tti,upCap,downCap,cwndMultiplier,maxSendingWindow,const DeepCollectionEquality().hash(_header),seed);

@override
String toString() {
  return 'KCPConfig(mtu: $mtu, tti: $tti, upCap: $upCap, downCap: $downCap, cwndMultiplier: $cwndMultiplier, maxSendingWindow: $maxSendingWindow, header: $header, seed: $seed)';
}


}

/// @nodoc
abstract mixin class _$KCPConfigCopyWith<$Res> implements $KCPConfigCopyWith<$Res> {
  factory _$KCPConfigCopyWith(_KCPConfig value, $Res Function(_KCPConfig) _then) = __$KCPConfigCopyWithImpl;
@override @useResult
$Res call({
 int? mtu, int? tti,@JsonKey(name: 'uplinkCapacity') int? upCap,@JsonKey(name: 'downlinkCapacity') int? downCap, int? cwndMultiplier, int? maxSendingWindow, Map<String, dynamic>? header, String? seed
});




}
/// @nodoc
class __$KCPConfigCopyWithImpl<$Res>
    implements _$KCPConfigCopyWith<$Res> {
  __$KCPConfigCopyWithImpl(this._self, this._then);

  final _KCPConfig _self;
  final $Res Function(_KCPConfig) _then;

/// Create a copy of KCPConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mtu = freezed,Object? tti = freezed,Object? upCap = freezed,Object? downCap = freezed,Object? cwndMultiplier = freezed,Object? maxSendingWindow = freezed,Object? header = freezed,Object? seed = freezed,}) {
  return _then(_KCPConfig(
mtu: freezed == mtu ? _self.mtu : mtu // ignore: cast_nullable_to_non_nullable
as int?,tti: freezed == tti ? _self.tti : tti // ignore: cast_nullable_to_non_nullable
as int?,upCap: freezed == upCap ? _self.upCap : upCap // ignore: cast_nullable_to_non_nullable
as int?,downCap: freezed == downCap ? _self.downCap : downCap // ignore: cast_nullable_to_non_nullable
as int?,cwndMultiplier: freezed == cwndMultiplier ? _self.cwndMultiplier : cwndMultiplier // ignore: cast_nullable_to_non_nullable
as int?,maxSendingWindow: freezed == maxSendingWindow ? _self.maxSendingWindow : maxSendingWindow // ignore: cast_nullable_to_non_nullable
as int?,header: freezed == header ? _self._header : header // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,seed: freezed == seed ? _self.seed : seed // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$LimitFallback {

 int? get afterBytes; int? get bytesPerSec; int? get burstBytesPerSec;
/// Create a copy of LimitFallback
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LimitFallbackCopyWith<LimitFallback> get copyWith => _$LimitFallbackCopyWithImpl<LimitFallback>(this as LimitFallback, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LimitFallback&&(identical(other.afterBytes, afterBytes) || other.afterBytes == afterBytes)&&(identical(other.bytesPerSec, bytesPerSec) || other.bytesPerSec == bytesPerSec)&&(identical(other.burstBytesPerSec, burstBytesPerSec) || other.burstBytesPerSec == burstBytesPerSec));
}


@override
int get hashCode => Object.hash(runtimeType,afterBytes,bytesPerSec,burstBytesPerSec);

@override
String toString() {
  return 'LimitFallback(afterBytes: $afterBytes, bytesPerSec: $bytesPerSec, burstBytesPerSec: $burstBytesPerSec)';
}


}

/// @nodoc
abstract mixin class $LimitFallbackCopyWith<$Res>  {
  factory $LimitFallbackCopyWith(LimitFallback value, $Res Function(LimitFallback) _then) = _$LimitFallbackCopyWithImpl;
@useResult
$Res call({
 int? afterBytes, int? bytesPerSec, int? burstBytesPerSec
});




}
/// @nodoc
class _$LimitFallbackCopyWithImpl<$Res>
    implements $LimitFallbackCopyWith<$Res> {
  _$LimitFallbackCopyWithImpl(this._self, this._then);

  final LimitFallback _self;
  final $Res Function(LimitFallback) _then;

/// Create a copy of LimitFallback
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? afterBytes = freezed,Object? bytesPerSec = freezed,Object? burstBytesPerSec = freezed,}) {
  return _then(_self.copyWith(
afterBytes: freezed == afterBytes ? _self.afterBytes : afterBytes // ignore: cast_nullable_to_non_nullable
as int?,bytesPerSec: freezed == bytesPerSec ? _self.bytesPerSec : bytesPerSec // ignore: cast_nullable_to_non_nullable
as int?,burstBytesPerSec: freezed == burstBytesPerSec ? _self.burstBytesPerSec : burstBytesPerSec // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [LimitFallback].
extension LimitFallbackPatterns on LimitFallback {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LimitFallback value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LimitFallback() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LimitFallback value)  $default,){
final _that = this;
switch (_that) {
case _LimitFallback():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LimitFallback value)?  $default,){
final _that = this;
switch (_that) {
case _LimitFallback() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? afterBytes,  int? bytesPerSec,  int? burstBytesPerSec)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LimitFallback() when $default != null:
return $default(_that.afterBytes,_that.bytesPerSec,_that.burstBytesPerSec);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? afterBytes,  int? bytesPerSec,  int? burstBytesPerSec)  $default,) {final _that = this;
switch (_that) {
case _LimitFallback():
return $default(_that.afterBytes,_that.bytesPerSec,_that.burstBytesPerSec);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? afterBytes,  int? bytesPerSec,  int? burstBytesPerSec)?  $default,) {final _that = this;
switch (_that) {
case _LimitFallback() when $default != null:
return $default(_that.afterBytes,_that.bytesPerSec,_that.burstBytesPerSec);case _:
  return null;

}
}

}

/// @nodoc


class _LimitFallback extends LimitFallback {
  const _LimitFallback({this.afterBytes, this.bytesPerSec, this.burstBytesPerSec}): super._();
  

@override final  int? afterBytes;
@override final  int? bytesPerSec;
@override final  int? burstBytesPerSec;

/// Create a copy of LimitFallback
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LimitFallbackCopyWith<_LimitFallback> get copyWith => __$LimitFallbackCopyWithImpl<_LimitFallback>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LimitFallback&&(identical(other.afterBytes, afterBytes) || other.afterBytes == afterBytes)&&(identical(other.bytesPerSec, bytesPerSec) || other.bytesPerSec == bytesPerSec)&&(identical(other.burstBytesPerSec, burstBytesPerSec) || other.burstBytesPerSec == burstBytesPerSec));
}


@override
int get hashCode => Object.hash(runtimeType,afterBytes,bytesPerSec,burstBytesPerSec);

@override
String toString() {
  return 'LimitFallback(afterBytes: $afterBytes, bytesPerSec: $bytesPerSec, burstBytesPerSec: $burstBytesPerSec)';
}


}

/// @nodoc
abstract mixin class _$LimitFallbackCopyWith<$Res> implements $LimitFallbackCopyWith<$Res> {
  factory _$LimitFallbackCopyWith(_LimitFallback value, $Res Function(_LimitFallback) _then) = __$LimitFallbackCopyWithImpl;
@override @useResult
$Res call({
 int? afterBytes, int? bytesPerSec, int? burstBytesPerSec
});




}
/// @nodoc
class __$LimitFallbackCopyWithImpl<$Res>
    implements _$LimitFallbackCopyWith<$Res> {
  __$LimitFallbackCopyWithImpl(this._self, this._then);

  final _LimitFallback _self;
  final $Res Function(_LimitFallback) _then;

/// Create a copy of LimitFallback
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? afterBytes = freezed,Object? bytesPerSec = freezed,Object? burstBytesPerSec = freezed,}) {
  return _then(_LimitFallback(
afterBytes: freezed == afterBytes ? _self.afterBytes : afterBytes // ignore: cast_nullable_to_non_nullable
as int?,bytesPerSec: freezed == bytesPerSec ? _self.bytesPerSec : bytesPerSec // ignore: cast_nullable_to_non_nullable
as int?,burstBytesPerSec: freezed == burstBytesPerSec ? _self.burstBytesPerSec : burstBytesPerSec // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$Mask {

 String get type; FinalMaskSettings? get settings;
/// Create a copy of Mask
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaskCopyWith<Mask> get copyWith => _$MaskCopyWithImpl<Mask>(this as Mask, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Mask&&(identical(other.type, type) || other.type == type)&&(identical(other.settings, settings) || other.settings == settings));
}


@override
int get hashCode => Object.hash(runtimeType,type,settings);

@override
String toString() {
  return 'Mask(type: $type, settings: $settings)';
}


}

/// @nodoc
abstract mixin class $MaskCopyWith<$Res>  {
  factory $MaskCopyWith(Mask value, $Res Function(Mask) _then) = _$MaskCopyWithImpl;
@useResult
$Res call({
 String type, FinalMaskSettings? settings
});




}
/// @nodoc
class _$MaskCopyWithImpl<$Res>
    implements $MaskCopyWith<$Res> {
  _$MaskCopyWithImpl(this._self, this._then);

  final Mask _self;
  final $Res Function(Mask) _then;

/// Create a copy of Mask
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = null,Object? settings = freezed,}) {
  return _then(_self.copyWith(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,settings: freezed == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as FinalMaskSettings?,
  ));
}

}


/// Adds pattern-matching-related methods to [Mask].
extension MaskPatterns on Mask {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Mask value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Mask() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Mask value)  $default,){
final _that = this;
switch (_that) {
case _Mask():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Mask value)?  $default,){
final _that = this;
switch (_that) {
case _Mask() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String type,  FinalMaskSettings? settings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Mask() when $default != null:
return $default(_that.type,_that.settings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String type,  FinalMaskSettings? settings)  $default,) {final _that = this;
switch (_that) {
case _Mask():
return $default(_that.type,_that.settings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String type,  FinalMaskSettings? settings)?  $default,) {final _that = this;
switch (_that) {
case _Mask() when $default != null:
return $default(_that.type,_that.settings);case _:
  return null;

}
}

}

/// @nodoc


class _Mask extends Mask {
  const _Mask({required this.type, this.settings}): super._();
  

@override final  String type;
@override final  FinalMaskSettings? settings;

/// Create a copy of Mask
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaskCopyWith<_Mask> get copyWith => __$MaskCopyWithImpl<_Mask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Mask&&(identical(other.type, type) || other.type == type)&&(identical(other.settings, settings) || other.settings == settings));
}


@override
int get hashCode => Object.hash(runtimeType,type,settings);

@override
String toString() {
  return 'Mask(type: $type, settings: $settings)';
}


}

/// @nodoc
abstract mixin class _$MaskCopyWith<$Res> implements $MaskCopyWith<$Res> {
  factory _$MaskCopyWith(_Mask value, $Res Function(_Mask) _then) = __$MaskCopyWithImpl;
@override @useResult
$Res call({
 String type, FinalMaskSettings? settings
});




}
/// @nodoc
class __$MaskCopyWithImpl<$Res>
    implements _$MaskCopyWith<$Res> {
  __$MaskCopyWithImpl(this._self, this._then);

  final _Mask _self;
  final $Res Function(_Mask) _then;

/// Create a copy of Mask
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = null,Object? settings = freezed,}) {
  return _then(_Mask(
type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,settings: freezed == settings ? _self.settings : settings // ignore: cast_nullable_to_non_nullable
as FinalMaskSettings?,
  ));
}


}

/// @nodoc
mixin _$Masquerade {

 String? get type; String? get dir; String? get url; bool? get rewriteHost; bool? get insecure; String? get content; Map<String, String>? get headers; int? get statusCode;
/// Create a copy of Masquerade
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MasqueradeCopyWith<Masquerade> get copyWith => _$MasqueradeCopyWithImpl<Masquerade>(this as Masquerade, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Masquerade&&(identical(other.type, type) || other.type == type)&&(identical(other.dir, dir) || other.dir == dir)&&(identical(other.url, url) || other.url == url)&&(identical(other.rewriteHost, rewriteHost) || other.rewriteHost == rewriteHost)&&(identical(other.insecure, insecure) || other.insecure == insecure)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other.headers, headers)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}


@override
int get hashCode => Object.hash(runtimeType,type,dir,url,rewriteHost,insecure,content,const DeepCollectionEquality().hash(headers),statusCode);

@override
String toString() {
  return 'Masquerade(type: $type, dir: $dir, url: $url, rewriteHost: $rewriteHost, insecure: $insecure, content: $content, headers: $headers, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class $MasqueradeCopyWith<$Res>  {
  factory $MasqueradeCopyWith(Masquerade value, $Res Function(Masquerade) _then) = _$MasqueradeCopyWithImpl;
@useResult
$Res call({
 String? type, String? dir, String? url, bool? rewriteHost, bool? insecure, String? content, Map<String, String>? headers, int? statusCode
});




}
/// @nodoc
class _$MasqueradeCopyWithImpl<$Res>
    implements $MasqueradeCopyWith<$Res> {
  _$MasqueradeCopyWithImpl(this._self, this._then);

  final Masquerade _self;
  final $Res Function(Masquerade) _then;

/// Create a copy of Masquerade
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? type = freezed,Object? dir = freezed,Object? url = freezed,Object? rewriteHost = freezed,Object? insecure = freezed,Object? content = freezed,Object? headers = freezed,Object? statusCode = freezed,}) {
  return _then(_self.copyWith(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,dir: freezed == dir ? _self.dir : dir // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,rewriteHost: freezed == rewriteHost ? _self.rewriteHost : rewriteHost // ignore: cast_nullable_to_non_nullable
as bool?,insecure: freezed == insecure ? _self.insecure : insecure // ignore: cast_nullable_to_non_nullable
as bool?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,headers: freezed == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Masquerade].
extension MasqueradePatterns on Masquerade {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Masquerade value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Masquerade() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Masquerade value)  $default,){
final _that = this;
switch (_that) {
case _Masquerade():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Masquerade value)?  $default,){
final _that = this;
switch (_that) {
case _Masquerade() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? type,  String? dir,  String? url,  bool? rewriteHost,  bool? insecure,  String? content,  Map<String, String>? headers,  int? statusCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Masquerade() when $default != null:
return $default(_that.type,_that.dir,_that.url,_that.rewriteHost,_that.insecure,_that.content,_that.headers,_that.statusCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? type,  String? dir,  String? url,  bool? rewriteHost,  bool? insecure,  String? content,  Map<String, String>? headers,  int? statusCode)  $default,) {final _that = this;
switch (_that) {
case _Masquerade():
return $default(_that.type,_that.dir,_that.url,_that.rewriteHost,_that.insecure,_that.content,_that.headers,_that.statusCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? type,  String? dir,  String? url,  bool? rewriteHost,  bool? insecure,  String? content,  Map<String, String>? headers,  int? statusCode)?  $default,) {final _that = this;
switch (_that) {
case _Masquerade() when $default != null:
return $default(_that.type,_that.dir,_that.url,_that.rewriteHost,_that.insecure,_that.content,_that.headers,_that.statusCode);case _:
  return null;

}
}

}

/// @nodoc


class _Masquerade extends Masquerade {
  const _Masquerade({this.type, this.dir, this.url, this.rewriteHost, this.insecure, this.content, final  Map<String, String>? headers, this.statusCode}): _headers = headers,super._();
  

@override final  String? type;
@override final  String? dir;
@override final  String? url;
@override final  bool? rewriteHost;
@override final  bool? insecure;
@override final  String? content;
 final  Map<String, String>? _headers;
@override Map<String, String>? get headers {
  final value = _headers;
  if (value == null) return null;
  if (_headers is EqualUnmodifiableMapView) return _headers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  int? statusCode;

/// Create a copy of Masquerade
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MasqueradeCopyWith<_Masquerade> get copyWith => __$MasqueradeCopyWithImpl<_Masquerade>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Masquerade&&(identical(other.type, type) || other.type == type)&&(identical(other.dir, dir) || other.dir == dir)&&(identical(other.url, url) || other.url == url)&&(identical(other.rewriteHost, rewriteHost) || other.rewriteHost == rewriteHost)&&(identical(other.insecure, insecure) || other.insecure == insecure)&&(identical(other.content, content) || other.content == content)&&const DeepCollectionEquality().equals(other._headers, _headers)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode));
}


@override
int get hashCode => Object.hash(runtimeType,type,dir,url,rewriteHost,insecure,content,const DeepCollectionEquality().hash(_headers),statusCode);

@override
String toString() {
  return 'Masquerade(type: $type, dir: $dir, url: $url, rewriteHost: $rewriteHost, insecure: $insecure, content: $content, headers: $headers, statusCode: $statusCode)';
}


}

/// @nodoc
abstract mixin class _$MasqueradeCopyWith<$Res> implements $MasqueradeCopyWith<$Res> {
  factory _$MasqueradeCopyWith(_Masquerade value, $Res Function(_Masquerade) _then) = __$MasqueradeCopyWithImpl;
@override @useResult
$Res call({
 String? type, String? dir, String? url, bool? rewriteHost, bool? insecure, String? content, Map<String, String>? headers, int? statusCode
});




}
/// @nodoc
class __$MasqueradeCopyWithImpl<$Res>
    implements _$MasqueradeCopyWith<$Res> {
  __$MasqueradeCopyWithImpl(this._self, this._then);

  final _Masquerade _self;
  final $Res Function(_Masquerade) _then;

/// Create a copy of Masquerade
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? type = freezed,Object? dir = freezed,Object? url = freezed,Object? rewriteHost = freezed,Object? insecure = freezed,Object? content = freezed,Object? headers = freezed,Object? statusCode = freezed,}) {
  return _then(_Masquerade(
type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,dir: freezed == dir ? _self.dir : dir // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,rewriteHost: freezed == rewriteHost ? _self.rewriteHost : rewriteHost // ignore: cast_nullable_to_non_nullable
as bool?,insecure: freezed == insecure ? _self.insecure : insecure // ignore: cast_nullable_to_non_nullable
as bool?,content: freezed == content ? _self.content : content // ignore: cast_nullable_to_non_nullable
as String?,headers: freezed == headers ? _self._headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$NoiseItem {

 XrayInt32Range? get rand; XrayInt32Range? get randRange; String? get type; Object? get packet; XrayInt32Range? get delay;
/// Create a copy of NoiseItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoiseItemCopyWith<NoiseItem> get copyWith => _$NoiseItemCopyWithImpl<NoiseItem>(this as NoiseItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoiseItem&&(identical(other.rand, rand) || other.rand == rand)&&(identical(other.randRange, randRange) || other.randRange == randRange)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.packet, packet)&&(identical(other.delay, delay) || other.delay == delay));
}


@override
int get hashCode => Object.hash(runtimeType,rand,randRange,type,const DeepCollectionEquality().hash(packet),delay);

@override
String toString() {
  return 'NoiseItem(rand: $rand, randRange: $randRange, type: $type, packet: $packet, delay: $delay)';
}


}

/// @nodoc
abstract mixin class $NoiseItemCopyWith<$Res>  {
  factory $NoiseItemCopyWith(NoiseItem value, $Res Function(NoiseItem) _then) = _$NoiseItemCopyWithImpl;
@useResult
$Res call({
 XrayInt32Range? rand, XrayInt32Range? randRange, String? type, Object? packet, XrayInt32Range? delay
});


$XrayInt32RangeCopyWith<$Res>? get rand;$XrayInt32RangeCopyWith<$Res>? get randRange;$XrayInt32RangeCopyWith<$Res>? get delay;

}
/// @nodoc
class _$NoiseItemCopyWithImpl<$Res>
    implements $NoiseItemCopyWith<$Res> {
  _$NoiseItemCopyWithImpl(this._self, this._then);

  final NoiseItem _self;
  final $Res Function(NoiseItem) _then;

/// Create a copy of NoiseItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rand = freezed,Object? randRange = freezed,Object? type = freezed,Object? packet = freezed,Object? delay = freezed,}) {
  return _then(_self.copyWith(
rand: freezed == rand ? _self.rand : rand // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,randRange: freezed == randRange ? _self.randRange : randRange // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,packet: freezed == packet ? _self.packet : packet ,delay: freezed == delay ? _self.delay : delay // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,
  ));
}
/// Create a copy of NoiseItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get rand {
    if (_self.rand == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.rand!, (value) {
    return _then(_self.copyWith(rand: value));
  });
}/// Create a copy of NoiseItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get randRange {
    if (_self.randRange == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.randRange!, (value) {
    return _then(_self.copyWith(randRange: value));
  });
}/// Create a copy of NoiseItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get delay {
    if (_self.delay == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.delay!, (value) {
    return _then(_self.copyWith(delay: value));
  });
}
}


/// Adds pattern-matching-related methods to [NoiseItem].
extension NoiseItemPatterns on NoiseItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NoiseItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NoiseItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NoiseItem value)  $default,){
final _that = this;
switch (_that) {
case _NoiseItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NoiseItem value)?  $default,){
final _that = this;
switch (_that) {
case _NoiseItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( XrayInt32Range? rand,  XrayInt32Range? randRange,  String? type,  Object? packet,  XrayInt32Range? delay)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NoiseItem() when $default != null:
return $default(_that.rand,_that.randRange,_that.type,_that.packet,_that.delay);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( XrayInt32Range? rand,  XrayInt32Range? randRange,  String? type,  Object? packet,  XrayInt32Range? delay)  $default,) {final _that = this;
switch (_that) {
case _NoiseItem():
return $default(_that.rand,_that.randRange,_that.type,_that.packet,_that.delay);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( XrayInt32Range? rand,  XrayInt32Range? randRange,  String? type,  Object? packet,  XrayInt32Range? delay)?  $default,) {final _that = this;
switch (_that) {
case _NoiseItem() when $default != null:
return $default(_that.rand,_that.randRange,_that.type,_that.packet,_that.delay);case _:
  return null;

}
}

}

/// @nodoc


class _NoiseItem extends NoiseItem {
  const _NoiseItem({this.rand, this.randRange, this.type, this.packet, this.delay}): super._();
  

@override final  XrayInt32Range? rand;
@override final  XrayInt32Range? randRange;
@override final  String? type;
@override final  Object? packet;
@override final  XrayInt32Range? delay;

/// Create a copy of NoiseItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoiseItemCopyWith<_NoiseItem> get copyWith => __$NoiseItemCopyWithImpl<_NoiseItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoiseItem&&(identical(other.rand, rand) || other.rand == rand)&&(identical(other.randRange, randRange) || other.randRange == randRange)&&(identical(other.type, type) || other.type == type)&&const DeepCollectionEquality().equals(other.packet, packet)&&(identical(other.delay, delay) || other.delay == delay));
}


@override
int get hashCode => Object.hash(runtimeType,rand,randRange,type,const DeepCollectionEquality().hash(packet),delay);

@override
String toString() {
  return 'NoiseItem(rand: $rand, randRange: $randRange, type: $type, packet: $packet, delay: $delay)';
}


}

/// @nodoc
abstract mixin class _$NoiseItemCopyWith<$Res> implements $NoiseItemCopyWith<$Res> {
  factory _$NoiseItemCopyWith(_NoiseItem value, $Res Function(_NoiseItem) _then) = __$NoiseItemCopyWithImpl;
@override @useResult
$Res call({
 XrayInt32Range? rand, XrayInt32Range? randRange, String? type, Object? packet, XrayInt32Range? delay
});


@override $XrayInt32RangeCopyWith<$Res>? get rand;@override $XrayInt32RangeCopyWith<$Res>? get randRange;@override $XrayInt32RangeCopyWith<$Res>? get delay;

}
/// @nodoc
class __$NoiseItemCopyWithImpl<$Res>
    implements _$NoiseItemCopyWith<$Res> {
  __$NoiseItemCopyWithImpl(this._self, this._then);

  final _NoiseItem _self;
  final $Res Function(_NoiseItem) _then;

/// Create a copy of NoiseItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rand = freezed,Object? randRange = freezed,Object? type = freezed,Object? packet = freezed,Object? delay = freezed,}) {
  return _then(_NoiseItem(
rand: freezed == rand ? _self.rand : rand // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,randRange: freezed == randRange ? _self.randRange : randRange // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,packet: freezed == packet ? _self.packet : packet ,delay: freezed == delay ? _self.delay : delay // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,
  ));
}

/// Create a copy of NoiseItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get rand {
    if (_self.rand == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.rand!, (value) {
    return _then(_self.copyWith(rand: value));
  });
}/// Create a copy of NoiseItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get randRange {
    if (_self.randRange == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.randRange!, (value) {
    return _then(_self.copyWith(randRange: value));
  });
}/// Create a copy of NoiseItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get delay {
    if (_self.delay == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.delay!, (value) {
    return _then(_self.copyWith(delay: value));
  });
}
}

/// @nodoc
mixin _$NoiseMask {

 XrayInt32Range? get reset;@JsonKey(name: 'noise') List<NoiseItem>? get noiseItems;
/// Create a copy of NoiseMask
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoiseMaskCopyWith<NoiseMask> get copyWith => _$NoiseMaskCopyWithImpl<NoiseMask>(this as NoiseMask, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoiseMask&&(identical(other.reset, reset) || other.reset == reset)&&const DeepCollectionEquality().equals(other.noiseItems, noiseItems));
}


@override
int get hashCode => Object.hash(runtimeType,reset,const DeepCollectionEquality().hash(noiseItems));

@override
String toString() {
  return 'NoiseMask(reset: $reset, noiseItems: $noiseItems)';
}


}

/// @nodoc
abstract mixin class $NoiseMaskCopyWith<$Res>  {
  factory $NoiseMaskCopyWith(NoiseMask value, $Res Function(NoiseMask) _then) = _$NoiseMaskCopyWithImpl;
@useResult
$Res call({
 XrayInt32Range? reset,@JsonKey(name: 'noise') List<NoiseItem>? noiseItems
});


$XrayInt32RangeCopyWith<$Res>? get reset;

}
/// @nodoc
class _$NoiseMaskCopyWithImpl<$Res>
    implements $NoiseMaskCopyWith<$Res> {
  _$NoiseMaskCopyWithImpl(this._self, this._then);

  final NoiseMask _self;
  final $Res Function(NoiseMask) _then;

/// Create a copy of NoiseMask
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reset = freezed,Object? noiseItems = freezed,}) {
  return _then(_self.copyWith(
reset: freezed == reset ? _self.reset : reset // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,noiseItems: freezed == noiseItems ? _self.noiseItems : noiseItems // ignore: cast_nullable_to_non_nullable
as List<NoiseItem>?,
  ));
}
/// Create a copy of NoiseMask
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get reset {
    if (_self.reset == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.reset!, (value) {
    return _then(_self.copyWith(reset: value));
  });
}
}


/// Adds pattern-matching-related methods to [NoiseMask].
extension NoiseMaskPatterns on NoiseMask {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _NoiseMask value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _NoiseMask() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _NoiseMask value)  $default,){
final _that = this;
switch (_that) {
case _NoiseMask():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _NoiseMask value)?  $default,){
final _that = this;
switch (_that) {
case _NoiseMask() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( XrayInt32Range? reset, @JsonKey(name: 'noise')  List<NoiseItem>? noiseItems)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _NoiseMask() when $default != null:
return $default(_that.reset,_that.noiseItems);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( XrayInt32Range? reset, @JsonKey(name: 'noise')  List<NoiseItem>? noiseItems)  $default,) {final _that = this;
switch (_that) {
case _NoiseMask():
return $default(_that.reset,_that.noiseItems);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( XrayInt32Range? reset, @JsonKey(name: 'noise')  List<NoiseItem>? noiseItems)?  $default,) {final _that = this;
switch (_that) {
case _NoiseMask() when $default != null:
return $default(_that.reset,_that.noiseItems);case _:
  return null;

}
}

}

/// @nodoc


class _NoiseMask extends NoiseMask {
  const _NoiseMask({this.reset, @JsonKey(name: 'noise') final  List<NoiseItem>? noiseItems}): _noiseItems = noiseItems,super._();
  

@override final  XrayInt32Range? reset;
 final  List<NoiseItem>? _noiseItems;
@override@JsonKey(name: 'noise') List<NoiseItem>? get noiseItems {
  final value = _noiseItems;
  if (value == null) return null;
  if (_noiseItems is EqualUnmodifiableListView) return _noiseItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of NoiseMask
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NoiseMaskCopyWith<_NoiseMask> get copyWith => __$NoiseMaskCopyWithImpl<_NoiseMask>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NoiseMask&&(identical(other.reset, reset) || other.reset == reset)&&const DeepCollectionEquality().equals(other._noiseItems, _noiseItems));
}


@override
int get hashCode => Object.hash(runtimeType,reset,const DeepCollectionEquality().hash(_noiseItems));

@override
String toString() {
  return 'NoiseMask(reset: $reset, noiseItems: $noiseItems)';
}


}

/// @nodoc
abstract mixin class _$NoiseMaskCopyWith<$Res> implements $NoiseMaskCopyWith<$Res> {
  factory _$NoiseMaskCopyWith(_NoiseMask value, $Res Function(_NoiseMask) _then) = __$NoiseMaskCopyWithImpl;
@override @useResult
$Res call({
 XrayInt32Range? reset,@JsonKey(name: 'noise') List<NoiseItem>? noiseItems
});


@override $XrayInt32RangeCopyWith<$Res>? get reset;

}
/// @nodoc
class __$NoiseMaskCopyWithImpl<$Res>
    implements _$NoiseMaskCopyWith<$Res> {
  __$NoiseMaskCopyWithImpl(this._self, this._then);

  final _NoiseMask _self;
  final $Res Function(_NoiseMask) _then;

/// Create a copy of NoiseMask
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reset = freezed,Object? noiseItems = freezed,}) {
  return _then(_NoiseMask(
reset: freezed == reset ? _self.reset : reset // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,noiseItems: freezed == noiseItems ? _self._noiseItems : noiseItems // ignore: cast_nullable_to_non_nullable
as List<NoiseItem>?,
  ));
}

/// Create a copy of NoiseMask
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get reset {
    if (_self.reset == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.reset!, (value) {
    return _then(_self.copyWith(reset: value));
  });
}
}

/// @nodoc
mixin _$QuicParamsConfig {

 String? get congestion; bool? get debug; String? get bbrProfile; Bandwidth? get brutalUp; Bandwidth? get brutalDown; UdpHop? get udpHop; int? get initStreamReceiveWindow; int? get maxStreamReceiveWindow; int? get initConnectionReceiveWindow; int? get maxConnectionReceiveWindow; int? get maxIdleTimeout; int? get keepAlivePeriod; bool? get disablePathMTUDiscovery; int? get maxIncomingStreams;
/// Create a copy of QuicParamsConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QuicParamsConfigCopyWith<QuicParamsConfig> get copyWith => _$QuicParamsConfigCopyWithImpl<QuicParamsConfig>(this as QuicParamsConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QuicParamsConfig&&(identical(other.congestion, congestion) || other.congestion == congestion)&&(identical(other.debug, debug) || other.debug == debug)&&(identical(other.bbrProfile, bbrProfile) || other.bbrProfile == bbrProfile)&&(identical(other.brutalUp, brutalUp) || other.brutalUp == brutalUp)&&(identical(other.brutalDown, brutalDown) || other.brutalDown == brutalDown)&&(identical(other.udpHop, udpHop) || other.udpHop == udpHop)&&(identical(other.initStreamReceiveWindow, initStreamReceiveWindow) || other.initStreamReceiveWindow == initStreamReceiveWindow)&&(identical(other.maxStreamReceiveWindow, maxStreamReceiveWindow) || other.maxStreamReceiveWindow == maxStreamReceiveWindow)&&(identical(other.initConnectionReceiveWindow, initConnectionReceiveWindow) || other.initConnectionReceiveWindow == initConnectionReceiveWindow)&&(identical(other.maxConnectionReceiveWindow, maxConnectionReceiveWindow) || other.maxConnectionReceiveWindow == maxConnectionReceiveWindow)&&(identical(other.maxIdleTimeout, maxIdleTimeout) || other.maxIdleTimeout == maxIdleTimeout)&&(identical(other.keepAlivePeriod, keepAlivePeriod) || other.keepAlivePeriod == keepAlivePeriod)&&(identical(other.disablePathMTUDiscovery, disablePathMTUDiscovery) || other.disablePathMTUDiscovery == disablePathMTUDiscovery)&&(identical(other.maxIncomingStreams, maxIncomingStreams) || other.maxIncomingStreams == maxIncomingStreams));
}


@override
int get hashCode => Object.hash(runtimeType,congestion,debug,bbrProfile,brutalUp,brutalDown,udpHop,initStreamReceiveWindow,maxStreamReceiveWindow,initConnectionReceiveWindow,maxConnectionReceiveWindow,maxIdleTimeout,keepAlivePeriod,disablePathMTUDiscovery,maxIncomingStreams);

@override
String toString() {
  return 'QuicParamsConfig(congestion: $congestion, debug: $debug, bbrProfile: $bbrProfile, brutalUp: $brutalUp, brutalDown: $brutalDown, udpHop: $udpHop, initStreamReceiveWindow: $initStreamReceiveWindow, maxStreamReceiveWindow: $maxStreamReceiveWindow, initConnectionReceiveWindow: $initConnectionReceiveWindow, maxConnectionReceiveWindow: $maxConnectionReceiveWindow, maxIdleTimeout: $maxIdleTimeout, keepAlivePeriod: $keepAlivePeriod, disablePathMTUDiscovery: $disablePathMTUDiscovery, maxIncomingStreams: $maxIncomingStreams)';
}


}

/// @nodoc
abstract mixin class $QuicParamsConfigCopyWith<$Res>  {
  factory $QuicParamsConfigCopyWith(QuicParamsConfig value, $Res Function(QuicParamsConfig) _then) = _$QuicParamsConfigCopyWithImpl;
@useResult
$Res call({
 String? congestion, bool? debug, String? bbrProfile, Bandwidth? brutalUp, Bandwidth? brutalDown, UdpHop? udpHop, int? initStreamReceiveWindow, int? maxStreamReceiveWindow, int? initConnectionReceiveWindow, int? maxConnectionReceiveWindow, int? maxIdleTimeout, int? keepAlivePeriod, bool? disablePathMTUDiscovery, int? maxIncomingStreams
});


$UdpHopCopyWith<$Res>? get udpHop;

}
/// @nodoc
class _$QuicParamsConfigCopyWithImpl<$Res>
    implements $QuicParamsConfigCopyWith<$Res> {
  _$QuicParamsConfigCopyWithImpl(this._self, this._then);

  final QuicParamsConfig _self;
  final $Res Function(QuicParamsConfig) _then;

/// Create a copy of QuicParamsConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? congestion = freezed,Object? debug = freezed,Object? bbrProfile = freezed,Object? brutalUp = freezed,Object? brutalDown = freezed,Object? udpHop = freezed,Object? initStreamReceiveWindow = freezed,Object? maxStreamReceiveWindow = freezed,Object? initConnectionReceiveWindow = freezed,Object? maxConnectionReceiveWindow = freezed,Object? maxIdleTimeout = freezed,Object? keepAlivePeriod = freezed,Object? disablePathMTUDiscovery = freezed,Object? maxIncomingStreams = freezed,}) {
  return _then(_self.copyWith(
congestion: freezed == congestion ? _self.congestion : congestion // ignore: cast_nullable_to_non_nullable
as String?,debug: freezed == debug ? _self.debug : debug // ignore: cast_nullable_to_non_nullable
as bool?,bbrProfile: freezed == bbrProfile ? _self.bbrProfile : bbrProfile // ignore: cast_nullable_to_non_nullable
as String?,brutalUp: freezed == brutalUp ? _self.brutalUp : brutalUp // ignore: cast_nullable_to_non_nullable
as Bandwidth?,brutalDown: freezed == brutalDown ? _self.brutalDown : brutalDown // ignore: cast_nullable_to_non_nullable
as Bandwidth?,udpHop: freezed == udpHop ? _self.udpHop : udpHop // ignore: cast_nullable_to_non_nullable
as UdpHop?,initStreamReceiveWindow: freezed == initStreamReceiveWindow ? _self.initStreamReceiveWindow : initStreamReceiveWindow // ignore: cast_nullable_to_non_nullable
as int?,maxStreamReceiveWindow: freezed == maxStreamReceiveWindow ? _self.maxStreamReceiveWindow : maxStreamReceiveWindow // ignore: cast_nullable_to_non_nullable
as int?,initConnectionReceiveWindow: freezed == initConnectionReceiveWindow ? _self.initConnectionReceiveWindow : initConnectionReceiveWindow // ignore: cast_nullable_to_non_nullable
as int?,maxConnectionReceiveWindow: freezed == maxConnectionReceiveWindow ? _self.maxConnectionReceiveWindow : maxConnectionReceiveWindow // ignore: cast_nullable_to_non_nullable
as int?,maxIdleTimeout: freezed == maxIdleTimeout ? _self.maxIdleTimeout : maxIdleTimeout // ignore: cast_nullable_to_non_nullable
as int?,keepAlivePeriod: freezed == keepAlivePeriod ? _self.keepAlivePeriod : keepAlivePeriod // ignore: cast_nullable_to_non_nullable
as int?,disablePathMTUDiscovery: freezed == disablePathMTUDiscovery ? _self.disablePathMTUDiscovery : disablePathMTUDiscovery // ignore: cast_nullable_to_non_nullable
as bool?,maxIncomingStreams: freezed == maxIncomingStreams ? _self.maxIncomingStreams : maxIncomingStreams // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of QuicParamsConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UdpHopCopyWith<$Res>? get udpHop {
    if (_self.udpHop == null) {
    return null;
  }

  return $UdpHopCopyWith<$Res>(_self.udpHop!, (value) {
    return _then(_self.copyWith(udpHop: value));
  });
}
}


/// Adds pattern-matching-related methods to [QuicParamsConfig].
extension QuicParamsConfigPatterns on QuicParamsConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _QuicParamsConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _QuicParamsConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _QuicParamsConfig value)  $default,){
final _that = this;
switch (_that) {
case _QuicParamsConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _QuicParamsConfig value)?  $default,){
final _that = this;
switch (_that) {
case _QuicParamsConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? congestion,  bool? debug,  String? bbrProfile,  Bandwidth? brutalUp,  Bandwidth? brutalDown,  UdpHop? udpHop,  int? initStreamReceiveWindow,  int? maxStreamReceiveWindow,  int? initConnectionReceiveWindow,  int? maxConnectionReceiveWindow,  int? maxIdleTimeout,  int? keepAlivePeriod,  bool? disablePathMTUDiscovery,  int? maxIncomingStreams)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _QuicParamsConfig() when $default != null:
return $default(_that.congestion,_that.debug,_that.bbrProfile,_that.brutalUp,_that.brutalDown,_that.udpHop,_that.initStreamReceiveWindow,_that.maxStreamReceiveWindow,_that.initConnectionReceiveWindow,_that.maxConnectionReceiveWindow,_that.maxIdleTimeout,_that.keepAlivePeriod,_that.disablePathMTUDiscovery,_that.maxIncomingStreams);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? congestion,  bool? debug,  String? bbrProfile,  Bandwidth? brutalUp,  Bandwidth? brutalDown,  UdpHop? udpHop,  int? initStreamReceiveWindow,  int? maxStreamReceiveWindow,  int? initConnectionReceiveWindow,  int? maxConnectionReceiveWindow,  int? maxIdleTimeout,  int? keepAlivePeriod,  bool? disablePathMTUDiscovery,  int? maxIncomingStreams)  $default,) {final _that = this;
switch (_that) {
case _QuicParamsConfig():
return $default(_that.congestion,_that.debug,_that.bbrProfile,_that.brutalUp,_that.brutalDown,_that.udpHop,_that.initStreamReceiveWindow,_that.maxStreamReceiveWindow,_that.initConnectionReceiveWindow,_that.maxConnectionReceiveWindow,_that.maxIdleTimeout,_that.keepAlivePeriod,_that.disablePathMTUDiscovery,_that.maxIncomingStreams);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? congestion,  bool? debug,  String? bbrProfile,  Bandwidth? brutalUp,  Bandwidth? brutalDown,  UdpHop? udpHop,  int? initStreamReceiveWindow,  int? maxStreamReceiveWindow,  int? initConnectionReceiveWindow,  int? maxConnectionReceiveWindow,  int? maxIdleTimeout,  int? keepAlivePeriod,  bool? disablePathMTUDiscovery,  int? maxIncomingStreams)?  $default,) {final _that = this;
switch (_that) {
case _QuicParamsConfig() when $default != null:
return $default(_that.congestion,_that.debug,_that.bbrProfile,_that.brutalUp,_that.brutalDown,_that.udpHop,_that.initStreamReceiveWindow,_that.maxStreamReceiveWindow,_that.initConnectionReceiveWindow,_that.maxConnectionReceiveWindow,_that.maxIdleTimeout,_that.keepAlivePeriod,_that.disablePathMTUDiscovery,_that.maxIncomingStreams);case _:
  return null;

}
}

}

/// @nodoc


class _QuicParamsConfig extends QuicParamsConfig {
  const _QuicParamsConfig({this.congestion, this.debug, this.bbrProfile, this.brutalUp, this.brutalDown, this.udpHop, this.initStreamReceiveWindow, this.maxStreamReceiveWindow, this.initConnectionReceiveWindow, this.maxConnectionReceiveWindow, this.maxIdleTimeout, this.keepAlivePeriod, this.disablePathMTUDiscovery, this.maxIncomingStreams}): super._();
  

@override final  String? congestion;
@override final  bool? debug;
@override final  String? bbrProfile;
@override final  Bandwidth? brutalUp;
@override final  Bandwidth? brutalDown;
@override final  UdpHop? udpHop;
@override final  int? initStreamReceiveWindow;
@override final  int? maxStreamReceiveWindow;
@override final  int? initConnectionReceiveWindow;
@override final  int? maxConnectionReceiveWindow;
@override final  int? maxIdleTimeout;
@override final  int? keepAlivePeriod;
@override final  bool? disablePathMTUDiscovery;
@override final  int? maxIncomingStreams;

/// Create a copy of QuicParamsConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$QuicParamsConfigCopyWith<_QuicParamsConfig> get copyWith => __$QuicParamsConfigCopyWithImpl<_QuicParamsConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _QuicParamsConfig&&(identical(other.congestion, congestion) || other.congestion == congestion)&&(identical(other.debug, debug) || other.debug == debug)&&(identical(other.bbrProfile, bbrProfile) || other.bbrProfile == bbrProfile)&&(identical(other.brutalUp, brutalUp) || other.brutalUp == brutalUp)&&(identical(other.brutalDown, brutalDown) || other.brutalDown == brutalDown)&&(identical(other.udpHop, udpHop) || other.udpHop == udpHop)&&(identical(other.initStreamReceiveWindow, initStreamReceiveWindow) || other.initStreamReceiveWindow == initStreamReceiveWindow)&&(identical(other.maxStreamReceiveWindow, maxStreamReceiveWindow) || other.maxStreamReceiveWindow == maxStreamReceiveWindow)&&(identical(other.initConnectionReceiveWindow, initConnectionReceiveWindow) || other.initConnectionReceiveWindow == initConnectionReceiveWindow)&&(identical(other.maxConnectionReceiveWindow, maxConnectionReceiveWindow) || other.maxConnectionReceiveWindow == maxConnectionReceiveWindow)&&(identical(other.maxIdleTimeout, maxIdleTimeout) || other.maxIdleTimeout == maxIdleTimeout)&&(identical(other.keepAlivePeriod, keepAlivePeriod) || other.keepAlivePeriod == keepAlivePeriod)&&(identical(other.disablePathMTUDiscovery, disablePathMTUDiscovery) || other.disablePathMTUDiscovery == disablePathMTUDiscovery)&&(identical(other.maxIncomingStreams, maxIncomingStreams) || other.maxIncomingStreams == maxIncomingStreams));
}


@override
int get hashCode => Object.hash(runtimeType,congestion,debug,bbrProfile,brutalUp,brutalDown,udpHop,initStreamReceiveWindow,maxStreamReceiveWindow,initConnectionReceiveWindow,maxConnectionReceiveWindow,maxIdleTimeout,keepAlivePeriod,disablePathMTUDiscovery,maxIncomingStreams);

@override
String toString() {
  return 'QuicParamsConfig(congestion: $congestion, debug: $debug, bbrProfile: $bbrProfile, brutalUp: $brutalUp, brutalDown: $brutalDown, udpHop: $udpHop, initStreamReceiveWindow: $initStreamReceiveWindow, maxStreamReceiveWindow: $maxStreamReceiveWindow, initConnectionReceiveWindow: $initConnectionReceiveWindow, maxConnectionReceiveWindow: $maxConnectionReceiveWindow, maxIdleTimeout: $maxIdleTimeout, keepAlivePeriod: $keepAlivePeriod, disablePathMTUDiscovery: $disablePathMTUDiscovery, maxIncomingStreams: $maxIncomingStreams)';
}


}

/// @nodoc
abstract mixin class _$QuicParamsConfigCopyWith<$Res> implements $QuicParamsConfigCopyWith<$Res> {
  factory _$QuicParamsConfigCopyWith(_QuicParamsConfig value, $Res Function(_QuicParamsConfig) _then) = __$QuicParamsConfigCopyWithImpl;
@override @useResult
$Res call({
 String? congestion, bool? debug, String? bbrProfile, Bandwidth? brutalUp, Bandwidth? brutalDown, UdpHop? udpHop, int? initStreamReceiveWindow, int? maxStreamReceiveWindow, int? initConnectionReceiveWindow, int? maxConnectionReceiveWindow, int? maxIdleTimeout, int? keepAlivePeriod, bool? disablePathMTUDiscovery, int? maxIncomingStreams
});


@override $UdpHopCopyWith<$Res>? get udpHop;

}
/// @nodoc
class __$QuicParamsConfigCopyWithImpl<$Res>
    implements _$QuicParamsConfigCopyWith<$Res> {
  __$QuicParamsConfigCopyWithImpl(this._self, this._then);

  final _QuicParamsConfig _self;
  final $Res Function(_QuicParamsConfig) _then;

/// Create a copy of QuicParamsConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? congestion = freezed,Object? debug = freezed,Object? bbrProfile = freezed,Object? brutalUp = freezed,Object? brutalDown = freezed,Object? udpHop = freezed,Object? initStreamReceiveWindow = freezed,Object? maxStreamReceiveWindow = freezed,Object? initConnectionReceiveWindow = freezed,Object? maxConnectionReceiveWindow = freezed,Object? maxIdleTimeout = freezed,Object? keepAlivePeriod = freezed,Object? disablePathMTUDiscovery = freezed,Object? maxIncomingStreams = freezed,}) {
  return _then(_QuicParamsConfig(
congestion: freezed == congestion ? _self.congestion : congestion // ignore: cast_nullable_to_non_nullable
as String?,debug: freezed == debug ? _self.debug : debug // ignore: cast_nullable_to_non_nullable
as bool?,bbrProfile: freezed == bbrProfile ? _self.bbrProfile : bbrProfile // ignore: cast_nullable_to_non_nullable
as String?,brutalUp: freezed == brutalUp ? _self.brutalUp : brutalUp // ignore: cast_nullable_to_non_nullable
as Bandwidth?,brutalDown: freezed == brutalDown ? _self.brutalDown : brutalDown // ignore: cast_nullable_to_non_nullable
as Bandwidth?,udpHop: freezed == udpHop ? _self.udpHop : udpHop // ignore: cast_nullable_to_non_nullable
as UdpHop?,initStreamReceiveWindow: freezed == initStreamReceiveWindow ? _self.initStreamReceiveWindow : initStreamReceiveWindow // ignore: cast_nullable_to_non_nullable
as int?,maxStreamReceiveWindow: freezed == maxStreamReceiveWindow ? _self.maxStreamReceiveWindow : maxStreamReceiveWindow // ignore: cast_nullable_to_non_nullable
as int?,initConnectionReceiveWindow: freezed == initConnectionReceiveWindow ? _self.initConnectionReceiveWindow : initConnectionReceiveWindow // ignore: cast_nullable_to_non_nullable
as int?,maxConnectionReceiveWindow: freezed == maxConnectionReceiveWindow ? _self.maxConnectionReceiveWindow : maxConnectionReceiveWindow // ignore: cast_nullable_to_non_nullable
as int?,maxIdleTimeout: freezed == maxIdleTimeout ? _self.maxIdleTimeout : maxIdleTimeout // ignore: cast_nullable_to_non_nullable
as int?,keepAlivePeriod: freezed == keepAlivePeriod ? _self.keepAlivePeriod : keepAlivePeriod // ignore: cast_nullable_to_non_nullable
as int?,disablePathMTUDiscovery: freezed == disablePathMTUDiscovery ? _self.disablePathMTUDiscovery : disablePathMTUDiscovery // ignore: cast_nullable_to_non_nullable
as bool?,maxIncomingStreams: freezed == maxIncomingStreams ? _self.maxIncomingStreams : maxIncomingStreams // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of QuicParamsConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UdpHopCopyWith<$Res>? get udpHop {
    if (_self.udpHop == null) {
    return null;
  }

  return $UdpHopCopyWith<$Res>(_self.udpHop!, (value) {
    return _then(_self.copyWith(udpHop: value));
  });
}
}

/// @nodoc
mixin _$REALITYConfig {

 String? get masterKeyLog; bool? get show; Object? get target; Object? get dest; String? get type; int? get xver; List<String>? get serverNames; String? get privateKey; String? get minClientVer; String? get maxClientVer; int? get maxTimeDiff; List<String>? get shortIds; String? get mldsa65Seed; LimitFallback? get limitFallbackUpload; LimitFallback? get limitFallbackDownload; String? get fingerprint; String? get serverName; String? get password; String? get publicKey; String? get shortId; String? get mldsa65Verify; String? get spiderX;
/// Create a copy of REALITYConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$REALITYConfigCopyWith<REALITYConfig> get copyWith => _$REALITYConfigCopyWithImpl<REALITYConfig>(this as REALITYConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is REALITYConfig&&(identical(other.masterKeyLog, masterKeyLog) || other.masterKeyLog == masterKeyLog)&&(identical(other.show, show) || other.show == show)&&const DeepCollectionEquality().equals(other.target, target)&&const DeepCollectionEquality().equals(other.dest, dest)&&(identical(other.type, type) || other.type == type)&&(identical(other.xver, xver) || other.xver == xver)&&const DeepCollectionEquality().equals(other.serverNames, serverNames)&&(identical(other.privateKey, privateKey) || other.privateKey == privateKey)&&(identical(other.minClientVer, minClientVer) || other.minClientVer == minClientVer)&&(identical(other.maxClientVer, maxClientVer) || other.maxClientVer == maxClientVer)&&(identical(other.maxTimeDiff, maxTimeDiff) || other.maxTimeDiff == maxTimeDiff)&&const DeepCollectionEquality().equals(other.shortIds, shortIds)&&(identical(other.mldsa65Seed, mldsa65Seed) || other.mldsa65Seed == mldsa65Seed)&&(identical(other.limitFallbackUpload, limitFallbackUpload) || other.limitFallbackUpload == limitFallbackUpload)&&(identical(other.limitFallbackDownload, limitFallbackDownload) || other.limitFallbackDownload == limitFallbackDownload)&&(identical(other.fingerprint, fingerprint) || other.fingerprint == fingerprint)&&(identical(other.serverName, serverName) || other.serverName == serverName)&&(identical(other.password, password) || other.password == password)&&(identical(other.publicKey, publicKey) || other.publicKey == publicKey)&&(identical(other.shortId, shortId) || other.shortId == shortId)&&(identical(other.mldsa65Verify, mldsa65Verify) || other.mldsa65Verify == mldsa65Verify)&&(identical(other.spiderX, spiderX) || other.spiderX == spiderX));
}


@override
int get hashCode => Object.hashAll([runtimeType,masterKeyLog,show,const DeepCollectionEquality().hash(target),const DeepCollectionEquality().hash(dest),type,xver,const DeepCollectionEquality().hash(serverNames),privateKey,minClientVer,maxClientVer,maxTimeDiff,const DeepCollectionEquality().hash(shortIds),mldsa65Seed,limitFallbackUpload,limitFallbackDownload,fingerprint,serverName,password,publicKey,shortId,mldsa65Verify,spiderX]);

@override
String toString() {
  return 'REALITYConfig(masterKeyLog: $masterKeyLog, show: $show, target: $target, dest: $dest, type: $type, xver: $xver, serverNames: $serverNames, privateKey: $privateKey, minClientVer: $minClientVer, maxClientVer: $maxClientVer, maxTimeDiff: $maxTimeDiff, shortIds: $shortIds, mldsa65Seed: $mldsa65Seed, limitFallbackUpload: $limitFallbackUpload, limitFallbackDownload: $limitFallbackDownload, fingerprint: $fingerprint, serverName: $serverName, password: $password, publicKey: $publicKey, shortId: $shortId, mldsa65Verify: $mldsa65Verify, spiderX: $spiderX)';
}


}

/// @nodoc
abstract mixin class $REALITYConfigCopyWith<$Res>  {
  factory $REALITYConfigCopyWith(REALITYConfig value, $Res Function(REALITYConfig) _then) = _$REALITYConfigCopyWithImpl;
@useResult
$Res call({
 String? masterKeyLog, bool? show, Object? target, Object? dest, String? type, int? xver, List<String>? serverNames, String? privateKey, String? minClientVer, String? maxClientVer, int? maxTimeDiff, List<String>? shortIds, String? mldsa65Seed, LimitFallback? limitFallbackUpload, LimitFallback? limitFallbackDownload, String? fingerprint, String? serverName, String? password, String? publicKey, String? shortId, String? mldsa65Verify, String? spiderX
});


$LimitFallbackCopyWith<$Res>? get limitFallbackUpload;$LimitFallbackCopyWith<$Res>? get limitFallbackDownload;

}
/// @nodoc
class _$REALITYConfigCopyWithImpl<$Res>
    implements $REALITYConfigCopyWith<$Res> {
  _$REALITYConfigCopyWithImpl(this._self, this._then);

  final REALITYConfig _self;
  final $Res Function(REALITYConfig) _then;

/// Create a copy of REALITYConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? masterKeyLog = freezed,Object? show = freezed,Object? target = freezed,Object? dest = freezed,Object? type = freezed,Object? xver = freezed,Object? serverNames = freezed,Object? privateKey = freezed,Object? minClientVer = freezed,Object? maxClientVer = freezed,Object? maxTimeDiff = freezed,Object? shortIds = freezed,Object? mldsa65Seed = freezed,Object? limitFallbackUpload = freezed,Object? limitFallbackDownload = freezed,Object? fingerprint = freezed,Object? serverName = freezed,Object? password = freezed,Object? publicKey = freezed,Object? shortId = freezed,Object? mldsa65Verify = freezed,Object? spiderX = freezed,}) {
  return _then(_self.copyWith(
masterKeyLog: freezed == masterKeyLog ? _self.masterKeyLog : masterKeyLog // ignore: cast_nullable_to_non_nullable
as String?,show: freezed == show ? _self.show : show // ignore: cast_nullable_to_non_nullable
as bool?,target: freezed == target ? _self.target : target ,dest: freezed == dest ? _self.dest : dest ,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,xver: freezed == xver ? _self.xver : xver // ignore: cast_nullable_to_non_nullable
as int?,serverNames: freezed == serverNames ? _self.serverNames : serverNames // ignore: cast_nullable_to_non_nullable
as List<String>?,privateKey: freezed == privateKey ? _self.privateKey : privateKey // ignore: cast_nullable_to_non_nullable
as String?,minClientVer: freezed == minClientVer ? _self.minClientVer : minClientVer // ignore: cast_nullable_to_non_nullable
as String?,maxClientVer: freezed == maxClientVer ? _self.maxClientVer : maxClientVer // ignore: cast_nullable_to_non_nullable
as String?,maxTimeDiff: freezed == maxTimeDiff ? _self.maxTimeDiff : maxTimeDiff // ignore: cast_nullable_to_non_nullable
as int?,shortIds: freezed == shortIds ? _self.shortIds : shortIds // ignore: cast_nullable_to_non_nullable
as List<String>?,mldsa65Seed: freezed == mldsa65Seed ? _self.mldsa65Seed : mldsa65Seed // ignore: cast_nullable_to_non_nullable
as String?,limitFallbackUpload: freezed == limitFallbackUpload ? _self.limitFallbackUpload : limitFallbackUpload // ignore: cast_nullable_to_non_nullable
as LimitFallback?,limitFallbackDownload: freezed == limitFallbackDownload ? _self.limitFallbackDownload : limitFallbackDownload // ignore: cast_nullable_to_non_nullable
as LimitFallback?,fingerprint: freezed == fingerprint ? _self.fingerprint : fingerprint // ignore: cast_nullable_to_non_nullable
as String?,serverName: freezed == serverName ? _self.serverName : serverName // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,publicKey: freezed == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as String?,shortId: freezed == shortId ? _self.shortId : shortId // ignore: cast_nullable_to_non_nullable
as String?,mldsa65Verify: freezed == mldsa65Verify ? _self.mldsa65Verify : mldsa65Verify // ignore: cast_nullable_to_non_nullable
as String?,spiderX: freezed == spiderX ? _self.spiderX : spiderX // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of REALITYConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LimitFallbackCopyWith<$Res>? get limitFallbackUpload {
    if (_self.limitFallbackUpload == null) {
    return null;
  }

  return $LimitFallbackCopyWith<$Res>(_self.limitFallbackUpload!, (value) {
    return _then(_self.copyWith(limitFallbackUpload: value));
  });
}/// Create a copy of REALITYConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LimitFallbackCopyWith<$Res>? get limitFallbackDownload {
    if (_self.limitFallbackDownload == null) {
    return null;
  }

  return $LimitFallbackCopyWith<$Res>(_self.limitFallbackDownload!, (value) {
    return _then(_self.copyWith(limitFallbackDownload: value));
  });
}
}


/// Adds pattern-matching-related methods to [REALITYConfig].
extension REALITYConfigPatterns on REALITYConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _REALITYConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _REALITYConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _REALITYConfig value)  $default,){
final _that = this;
switch (_that) {
case _REALITYConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _REALITYConfig value)?  $default,){
final _that = this;
switch (_that) {
case _REALITYConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? masterKeyLog,  bool? show,  Object? target,  Object? dest,  String? type,  int? xver,  List<String>? serverNames,  String? privateKey,  String? minClientVer,  String? maxClientVer,  int? maxTimeDiff,  List<String>? shortIds,  String? mldsa65Seed,  LimitFallback? limitFallbackUpload,  LimitFallback? limitFallbackDownload,  String? fingerprint,  String? serverName,  String? password,  String? publicKey,  String? shortId,  String? mldsa65Verify,  String? spiderX)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _REALITYConfig() when $default != null:
return $default(_that.masterKeyLog,_that.show,_that.target,_that.dest,_that.type,_that.xver,_that.serverNames,_that.privateKey,_that.minClientVer,_that.maxClientVer,_that.maxTimeDiff,_that.shortIds,_that.mldsa65Seed,_that.limitFallbackUpload,_that.limitFallbackDownload,_that.fingerprint,_that.serverName,_that.password,_that.publicKey,_that.shortId,_that.mldsa65Verify,_that.spiderX);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? masterKeyLog,  bool? show,  Object? target,  Object? dest,  String? type,  int? xver,  List<String>? serverNames,  String? privateKey,  String? minClientVer,  String? maxClientVer,  int? maxTimeDiff,  List<String>? shortIds,  String? mldsa65Seed,  LimitFallback? limitFallbackUpload,  LimitFallback? limitFallbackDownload,  String? fingerprint,  String? serverName,  String? password,  String? publicKey,  String? shortId,  String? mldsa65Verify,  String? spiderX)  $default,) {final _that = this;
switch (_that) {
case _REALITYConfig():
return $default(_that.masterKeyLog,_that.show,_that.target,_that.dest,_that.type,_that.xver,_that.serverNames,_that.privateKey,_that.minClientVer,_that.maxClientVer,_that.maxTimeDiff,_that.shortIds,_that.mldsa65Seed,_that.limitFallbackUpload,_that.limitFallbackDownload,_that.fingerprint,_that.serverName,_that.password,_that.publicKey,_that.shortId,_that.mldsa65Verify,_that.spiderX);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? masterKeyLog,  bool? show,  Object? target,  Object? dest,  String? type,  int? xver,  List<String>? serverNames,  String? privateKey,  String? minClientVer,  String? maxClientVer,  int? maxTimeDiff,  List<String>? shortIds,  String? mldsa65Seed,  LimitFallback? limitFallbackUpload,  LimitFallback? limitFallbackDownload,  String? fingerprint,  String? serverName,  String? password,  String? publicKey,  String? shortId,  String? mldsa65Verify,  String? spiderX)?  $default,) {final _that = this;
switch (_that) {
case _REALITYConfig() when $default != null:
return $default(_that.masterKeyLog,_that.show,_that.target,_that.dest,_that.type,_that.xver,_that.serverNames,_that.privateKey,_that.minClientVer,_that.maxClientVer,_that.maxTimeDiff,_that.shortIds,_that.mldsa65Seed,_that.limitFallbackUpload,_that.limitFallbackDownload,_that.fingerprint,_that.serverName,_that.password,_that.publicKey,_that.shortId,_that.mldsa65Verify,_that.spiderX);case _:
  return null;

}
}

}

/// @nodoc


class _REALITYConfig extends REALITYConfig {
  const _REALITYConfig({this.masterKeyLog, this.show, this.target, this.dest, this.type, this.xver, final  List<String>? serverNames, this.privateKey, this.minClientVer, this.maxClientVer, this.maxTimeDiff, final  List<String>? shortIds, this.mldsa65Seed, this.limitFallbackUpload, this.limitFallbackDownload, this.fingerprint, this.serverName, this.password, this.publicKey, this.shortId, this.mldsa65Verify, this.spiderX}): _serverNames = serverNames,_shortIds = shortIds,super._();
  

@override final  String? masterKeyLog;
@override final  bool? show;
@override final  Object? target;
@override final  Object? dest;
@override final  String? type;
@override final  int? xver;
 final  List<String>? _serverNames;
@override List<String>? get serverNames {
  final value = _serverNames;
  if (value == null) return null;
  if (_serverNames is EqualUnmodifiableListView) return _serverNames;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? privateKey;
@override final  String? minClientVer;
@override final  String? maxClientVer;
@override final  int? maxTimeDiff;
 final  List<String>? _shortIds;
@override List<String>? get shortIds {
  final value = _shortIds;
  if (value == null) return null;
  if (_shortIds is EqualUnmodifiableListView) return _shortIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? mldsa65Seed;
@override final  LimitFallback? limitFallbackUpload;
@override final  LimitFallback? limitFallbackDownload;
@override final  String? fingerprint;
@override final  String? serverName;
@override final  String? password;
@override final  String? publicKey;
@override final  String? shortId;
@override final  String? mldsa65Verify;
@override final  String? spiderX;

/// Create a copy of REALITYConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$REALITYConfigCopyWith<_REALITYConfig> get copyWith => __$REALITYConfigCopyWithImpl<_REALITYConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _REALITYConfig&&(identical(other.masterKeyLog, masterKeyLog) || other.masterKeyLog == masterKeyLog)&&(identical(other.show, show) || other.show == show)&&const DeepCollectionEquality().equals(other.target, target)&&const DeepCollectionEquality().equals(other.dest, dest)&&(identical(other.type, type) || other.type == type)&&(identical(other.xver, xver) || other.xver == xver)&&const DeepCollectionEquality().equals(other._serverNames, _serverNames)&&(identical(other.privateKey, privateKey) || other.privateKey == privateKey)&&(identical(other.minClientVer, minClientVer) || other.minClientVer == minClientVer)&&(identical(other.maxClientVer, maxClientVer) || other.maxClientVer == maxClientVer)&&(identical(other.maxTimeDiff, maxTimeDiff) || other.maxTimeDiff == maxTimeDiff)&&const DeepCollectionEquality().equals(other._shortIds, _shortIds)&&(identical(other.mldsa65Seed, mldsa65Seed) || other.mldsa65Seed == mldsa65Seed)&&(identical(other.limitFallbackUpload, limitFallbackUpload) || other.limitFallbackUpload == limitFallbackUpload)&&(identical(other.limitFallbackDownload, limitFallbackDownload) || other.limitFallbackDownload == limitFallbackDownload)&&(identical(other.fingerprint, fingerprint) || other.fingerprint == fingerprint)&&(identical(other.serverName, serverName) || other.serverName == serverName)&&(identical(other.password, password) || other.password == password)&&(identical(other.publicKey, publicKey) || other.publicKey == publicKey)&&(identical(other.shortId, shortId) || other.shortId == shortId)&&(identical(other.mldsa65Verify, mldsa65Verify) || other.mldsa65Verify == mldsa65Verify)&&(identical(other.spiderX, spiderX) || other.spiderX == spiderX));
}


@override
int get hashCode => Object.hashAll([runtimeType,masterKeyLog,show,const DeepCollectionEquality().hash(target),const DeepCollectionEquality().hash(dest),type,xver,const DeepCollectionEquality().hash(_serverNames),privateKey,minClientVer,maxClientVer,maxTimeDiff,const DeepCollectionEquality().hash(_shortIds),mldsa65Seed,limitFallbackUpload,limitFallbackDownload,fingerprint,serverName,password,publicKey,shortId,mldsa65Verify,spiderX]);

@override
String toString() {
  return 'REALITYConfig(masterKeyLog: $masterKeyLog, show: $show, target: $target, dest: $dest, type: $type, xver: $xver, serverNames: $serverNames, privateKey: $privateKey, minClientVer: $minClientVer, maxClientVer: $maxClientVer, maxTimeDiff: $maxTimeDiff, shortIds: $shortIds, mldsa65Seed: $mldsa65Seed, limitFallbackUpload: $limitFallbackUpload, limitFallbackDownload: $limitFallbackDownload, fingerprint: $fingerprint, serverName: $serverName, password: $password, publicKey: $publicKey, shortId: $shortId, mldsa65Verify: $mldsa65Verify, spiderX: $spiderX)';
}


}

/// @nodoc
abstract mixin class _$REALITYConfigCopyWith<$Res> implements $REALITYConfigCopyWith<$Res> {
  factory _$REALITYConfigCopyWith(_REALITYConfig value, $Res Function(_REALITYConfig) _then) = __$REALITYConfigCopyWithImpl;
@override @useResult
$Res call({
 String? masterKeyLog, bool? show, Object? target, Object? dest, String? type, int? xver, List<String>? serverNames, String? privateKey, String? minClientVer, String? maxClientVer, int? maxTimeDiff, List<String>? shortIds, String? mldsa65Seed, LimitFallback? limitFallbackUpload, LimitFallback? limitFallbackDownload, String? fingerprint, String? serverName, String? password, String? publicKey, String? shortId, String? mldsa65Verify, String? spiderX
});


@override $LimitFallbackCopyWith<$Res>? get limitFallbackUpload;@override $LimitFallbackCopyWith<$Res>? get limitFallbackDownload;

}
/// @nodoc
class __$REALITYConfigCopyWithImpl<$Res>
    implements _$REALITYConfigCopyWith<$Res> {
  __$REALITYConfigCopyWithImpl(this._self, this._then);

  final _REALITYConfig _self;
  final $Res Function(_REALITYConfig) _then;

/// Create a copy of REALITYConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? masterKeyLog = freezed,Object? show = freezed,Object? target = freezed,Object? dest = freezed,Object? type = freezed,Object? xver = freezed,Object? serverNames = freezed,Object? privateKey = freezed,Object? minClientVer = freezed,Object? maxClientVer = freezed,Object? maxTimeDiff = freezed,Object? shortIds = freezed,Object? mldsa65Seed = freezed,Object? limitFallbackUpload = freezed,Object? limitFallbackDownload = freezed,Object? fingerprint = freezed,Object? serverName = freezed,Object? password = freezed,Object? publicKey = freezed,Object? shortId = freezed,Object? mldsa65Verify = freezed,Object? spiderX = freezed,}) {
  return _then(_REALITYConfig(
masterKeyLog: freezed == masterKeyLog ? _self.masterKeyLog : masterKeyLog // ignore: cast_nullable_to_non_nullable
as String?,show: freezed == show ? _self.show : show // ignore: cast_nullable_to_non_nullable
as bool?,target: freezed == target ? _self.target : target ,dest: freezed == dest ? _self.dest : dest ,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,xver: freezed == xver ? _self.xver : xver // ignore: cast_nullable_to_non_nullable
as int?,serverNames: freezed == serverNames ? _self._serverNames : serverNames // ignore: cast_nullable_to_non_nullable
as List<String>?,privateKey: freezed == privateKey ? _self.privateKey : privateKey // ignore: cast_nullable_to_non_nullable
as String?,minClientVer: freezed == minClientVer ? _self.minClientVer : minClientVer // ignore: cast_nullable_to_non_nullable
as String?,maxClientVer: freezed == maxClientVer ? _self.maxClientVer : maxClientVer // ignore: cast_nullable_to_non_nullable
as String?,maxTimeDiff: freezed == maxTimeDiff ? _self.maxTimeDiff : maxTimeDiff // ignore: cast_nullable_to_non_nullable
as int?,shortIds: freezed == shortIds ? _self._shortIds : shortIds // ignore: cast_nullable_to_non_nullable
as List<String>?,mldsa65Seed: freezed == mldsa65Seed ? _self.mldsa65Seed : mldsa65Seed // ignore: cast_nullable_to_non_nullable
as String?,limitFallbackUpload: freezed == limitFallbackUpload ? _self.limitFallbackUpload : limitFallbackUpload // ignore: cast_nullable_to_non_nullable
as LimitFallback?,limitFallbackDownload: freezed == limitFallbackDownload ? _self.limitFallbackDownload : limitFallbackDownload // ignore: cast_nullable_to_non_nullable
as LimitFallback?,fingerprint: freezed == fingerprint ? _self.fingerprint : fingerprint // ignore: cast_nullable_to_non_nullable
as String?,serverName: freezed == serverName ? _self.serverName : serverName // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,publicKey: freezed == publicKey ? _self.publicKey : publicKey // ignore: cast_nullable_to_non_nullable
as String?,shortId: freezed == shortId ? _self.shortId : shortId // ignore: cast_nullable_to_non_nullable
as String?,mldsa65Verify: freezed == mldsa65Verify ? _self.mldsa65Verify : mldsa65Verify // ignore: cast_nullable_to_non_nullable
as String?,spiderX: freezed == spiderX ? _self.spiderX : spiderX // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of REALITYConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LimitFallbackCopyWith<$Res>? get limitFallbackUpload {
    if (_self.limitFallbackUpload == null) {
    return null;
  }

  return $LimitFallbackCopyWith<$Res>(_self.limitFallbackUpload!, (value) {
    return _then(_self.copyWith(limitFallbackUpload: value));
  });
}/// Create a copy of REALITYConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LimitFallbackCopyWith<$Res>? get limitFallbackDownload {
    if (_self.limitFallbackDownload == null) {
    return null;
  }

  return $LimitFallbackCopyWith<$Res>(_self.limitFallbackDownload!, (value) {
    return _then(_self.copyWith(limitFallbackDownload: value));
  });
}
}

/// @nodoc
mixin _$Salamander {

 String? get password;
/// Create a copy of Salamander
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SalamanderCopyWith<Salamander> get copyWith => _$SalamanderCopyWithImpl<Salamander>(this as Salamander, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Salamander&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'Salamander(password: $password)';
}


}

/// @nodoc
abstract mixin class $SalamanderCopyWith<$Res>  {
  factory $SalamanderCopyWith(Salamander value, $Res Function(Salamander) _then) = _$SalamanderCopyWithImpl;
@useResult
$Res call({
 String? password
});




}
/// @nodoc
class _$SalamanderCopyWithImpl<$Res>
    implements $SalamanderCopyWith<$Res> {
  _$SalamanderCopyWithImpl(this._self, this._then);

  final Salamander _self;
  final $Res Function(Salamander) _then;

/// Create a copy of Salamander
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? password = freezed,}) {
  return _then(_self.copyWith(
password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Salamander].
extension SalamanderPatterns on Salamander {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Salamander value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Salamander() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Salamander value)  $default,){
final _that = this;
switch (_that) {
case _Salamander():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Salamander value)?  $default,){
final _that = this;
switch (_that) {
case _Salamander() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? password)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Salamander() when $default != null:
return $default(_that.password);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? password)  $default,) {final _that = this;
switch (_that) {
case _Salamander():
return $default(_that.password);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? password)?  $default,) {final _that = this;
switch (_that) {
case _Salamander() when $default != null:
return $default(_that.password);case _:
  return null;

}
}

}

/// @nodoc


class _Salamander extends Salamander {
  const _Salamander({this.password}): super._();
  

@override final  String? password;

/// Create a copy of Salamander
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SalamanderCopyWith<_Salamander> get copyWith => __$SalamanderCopyWithImpl<_Salamander>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Salamander&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,password);

@override
String toString() {
  return 'Salamander(password: $password)';
}


}

/// @nodoc
abstract mixin class _$SalamanderCopyWith<$Res> implements $SalamanderCopyWith<$Res> {
  factory _$SalamanderCopyWith(_Salamander value, $Res Function(_Salamander) _then) = __$SalamanderCopyWithImpl;
@override @useResult
$Res call({
 String? password
});




}
/// @nodoc
class __$SalamanderCopyWithImpl<$Res>
    implements _$SalamanderCopyWith<$Res> {
  __$SalamanderCopyWithImpl(this._self, this._then);

  final _Salamander _self;
  final $Res Function(_Salamander) _then;

/// Create a copy of Salamander
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? password = freezed,}) {
  return _then(_Salamander(
password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$SocketConfig {

 int? get mark; Object? get tcpFastOpen; TProxyMode? get tproxy; bool? get acceptProxyProtocol; XrayTargetStrategy? get domainStrategy; String? get dialerProxy; int? get tcpKeepAliveInterval; int? get tcpKeepAliveIdle; String? get tcpCongestion; int? get tcpWindowClamp; int? get tcpMaxSeg; bool? get penetrate; int? get tcpUserTimeout; bool? get v6only;@JsonKey(name: 'interface') String? get interfaceName; bool? get tcpMptcp; List<CustomSockoptConfig>? get customSockopt; AddressPortStrategy? get addressPortStrategy; HappyEyeballsConfig? get happyEyeballs; List<String>? get trustedXForwardedFor;
/// Create a copy of SocketConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SocketConfigCopyWith<SocketConfig> get copyWith => _$SocketConfigCopyWithImpl<SocketConfig>(this as SocketConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SocketConfig&&(identical(other.mark, mark) || other.mark == mark)&&const DeepCollectionEquality().equals(other.tcpFastOpen, tcpFastOpen)&&(identical(other.tproxy, tproxy) || other.tproxy == tproxy)&&(identical(other.acceptProxyProtocol, acceptProxyProtocol) || other.acceptProxyProtocol == acceptProxyProtocol)&&(identical(other.domainStrategy, domainStrategy) || other.domainStrategy == domainStrategy)&&(identical(other.dialerProxy, dialerProxy) || other.dialerProxy == dialerProxy)&&(identical(other.tcpKeepAliveInterval, tcpKeepAliveInterval) || other.tcpKeepAliveInterval == tcpKeepAliveInterval)&&(identical(other.tcpKeepAliveIdle, tcpKeepAliveIdle) || other.tcpKeepAliveIdle == tcpKeepAliveIdle)&&(identical(other.tcpCongestion, tcpCongestion) || other.tcpCongestion == tcpCongestion)&&(identical(other.tcpWindowClamp, tcpWindowClamp) || other.tcpWindowClamp == tcpWindowClamp)&&(identical(other.tcpMaxSeg, tcpMaxSeg) || other.tcpMaxSeg == tcpMaxSeg)&&(identical(other.penetrate, penetrate) || other.penetrate == penetrate)&&(identical(other.tcpUserTimeout, tcpUserTimeout) || other.tcpUserTimeout == tcpUserTimeout)&&(identical(other.v6only, v6only) || other.v6only == v6only)&&(identical(other.interfaceName, interfaceName) || other.interfaceName == interfaceName)&&(identical(other.tcpMptcp, tcpMptcp) || other.tcpMptcp == tcpMptcp)&&const DeepCollectionEquality().equals(other.customSockopt, customSockopt)&&(identical(other.addressPortStrategy, addressPortStrategy) || other.addressPortStrategy == addressPortStrategy)&&(identical(other.happyEyeballs, happyEyeballs) || other.happyEyeballs == happyEyeballs)&&const DeepCollectionEquality().equals(other.trustedXForwardedFor, trustedXForwardedFor));
}


@override
int get hashCode => Object.hashAll([runtimeType,mark,const DeepCollectionEquality().hash(tcpFastOpen),tproxy,acceptProxyProtocol,domainStrategy,dialerProxy,tcpKeepAliveInterval,tcpKeepAliveIdle,tcpCongestion,tcpWindowClamp,tcpMaxSeg,penetrate,tcpUserTimeout,v6only,interfaceName,tcpMptcp,const DeepCollectionEquality().hash(customSockopt),addressPortStrategy,happyEyeballs,const DeepCollectionEquality().hash(trustedXForwardedFor)]);

@override
String toString() {
  return 'SocketConfig(mark: $mark, tcpFastOpen: $tcpFastOpen, tproxy: $tproxy, acceptProxyProtocol: $acceptProxyProtocol, domainStrategy: $domainStrategy, dialerProxy: $dialerProxy, tcpKeepAliveInterval: $tcpKeepAliveInterval, tcpKeepAliveIdle: $tcpKeepAliveIdle, tcpCongestion: $tcpCongestion, tcpWindowClamp: $tcpWindowClamp, tcpMaxSeg: $tcpMaxSeg, penetrate: $penetrate, tcpUserTimeout: $tcpUserTimeout, v6only: $v6only, interfaceName: $interfaceName, tcpMptcp: $tcpMptcp, customSockopt: $customSockopt, addressPortStrategy: $addressPortStrategy, happyEyeballs: $happyEyeballs, trustedXForwardedFor: $trustedXForwardedFor)';
}


}

/// @nodoc
abstract mixin class $SocketConfigCopyWith<$Res>  {
  factory $SocketConfigCopyWith(SocketConfig value, $Res Function(SocketConfig) _then) = _$SocketConfigCopyWithImpl;
@useResult
$Res call({
 int? mark, Object? tcpFastOpen, TProxyMode? tproxy, bool? acceptProxyProtocol, XrayTargetStrategy? domainStrategy, String? dialerProxy, int? tcpKeepAliveInterval, int? tcpKeepAliveIdle, String? tcpCongestion, int? tcpWindowClamp, int? tcpMaxSeg, bool? penetrate, int? tcpUserTimeout, bool? v6only,@JsonKey(name: 'interface') String? interfaceName, bool? tcpMptcp, List<CustomSockoptConfig>? customSockopt, AddressPortStrategy? addressPortStrategy, HappyEyeballsConfig? happyEyeballs, List<String>? trustedXForwardedFor
});


$HappyEyeballsConfigCopyWith<$Res>? get happyEyeballs;

}
/// @nodoc
class _$SocketConfigCopyWithImpl<$Res>
    implements $SocketConfigCopyWith<$Res> {
  _$SocketConfigCopyWithImpl(this._self, this._then);

  final SocketConfig _self;
  final $Res Function(SocketConfig) _then;

/// Create a copy of SocketConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mark = freezed,Object? tcpFastOpen = freezed,Object? tproxy = freezed,Object? acceptProxyProtocol = freezed,Object? domainStrategy = freezed,Object? dialerProxy = freezed,Object? tcpKeepAliveInterval = freezed,Object? tcpKeepAliveIdle = freezed,Object? tcpCongestion = freezed,Object? tcpWindowClamp = freezed,Object? tcpMaxSeg = freezed,Object? penetrate = freezed,Object? tcpUserTimeout = freezed,Object? v6only = freezed,Object? interfaceName = freezed,Object? tcpMptcp = freezed,Object? customSockopt = freezed,Object? addressPortStrategy = freezed,Object? happyEyeballs = freezed,Object? trustedXForwardedFor = freezed,}) {
  return _then(_self.copyWith(
mark: freezed == mark ? _self.mark : mark // ignore: cast_nullable_to_non_nullable
as int?,tcpFastOpen: freezed == tcpFastOpen ? _self.tcpFastOpen : tcpFastOpen ,tproxy: freezed == tproxy ? _self.tproxy : tproxy // ignore: cast_nullable_to_non_nullable
as TProxyMode?,acceptProxyProtocol: freezed == acceptProxyProtocol ? _self.acceptProxyProtocol : acceptProxyProtocol // ignore: cast_nullable_to_non_nullable
as bool?,domainStrategy: freezed == domainStrategy ? _self.domainStrategy : domainStrategy // ignore: cast_nullable_to_non_nullable
as XrayTargetStrategy?,dialerProxy: freezed == dialerProxy ? _self.dialerProxy : dialerProxy // ignore: cast_nullable_to_non_nullable
as String?,tcpKeepAliveInterval: freezed == tcpKeepAliveInterval ? _self.tcpKeepAliveInterval : tcpKeepAliveInterval // ignore: cast_nullable_to_non_nullable
as int?,tcpKeepAliveIdle: freezed == tcpKeepAliveIdle ? _self.tcpKeepAliveIdle : tcpKeepAliveIdle // ignore: cast_nullable_to_non_nullable
as int?,tcpCongestion: freezed == tcpCongestion ? _self.tcpCongestion : tcpCongestion // ignore: cast_nullable_to_non_nullable
as String?,tcpWindowClamp: freezed == tcpWindowClamp ? _self.tcpWindowClamp : tcpWindowClamp // ignore: cast_nullable_to_non_nullable
as int?,tcpMaxSeg: freezed == tcpMaxSeg ? _self.tcpMaxSeg : tcpMaxSeg // ignore: cast_nullable_to_non_nullable
as int?,penetrate: freezed == penetrate ? _self.penetrate : penetrate // ignore: cast_nullable_to_non_nullable
as bool?,tcpUserTimeout: freezed == tcpUserTimeout ? _self.tcpUserTimeout : tcpUserTimeout // ignore: cast_nullable_to_non_nullable
as int?,v6only: freezed == v6only ? _self.v6only : v6only // ignore: cast_nullable_to_non_nullable
as bool?,interfaceName: freezed == interfaceName ? _self.interfaceName : interfaceName // ignore: cast_nullable_to_non_nullable
as String?,tcpMptcp: freezed == tcpMptcp ? _self.tcpMptcp : tcpMptcp // ignore: cast_nullable_to_non_nullable
as bool?,customSockopt: freezed == customSockopt ? _self.customSockopt : customSockopt // ignore: cast_nullable_to_non_nullable
as List<CustomSockoptConfig>?,addressPortStrategy: freezed == addressPortStrategy ? _self.addressPortStrategy : addressPortStrategy // ignore: cast_nullable_to_non_nullable
as AddressPortStrategy?,happyEyeballs: freezed == happyEyeballs ? _self.happyEyeballs : happyEyeballs // ignore: cast_nullable_to_non_nullable
as HappyEyeballsConfig?,trustedXForwardedFor: freezed == trustedXForwardedFor ? _self.trustedXForwardedFor : trustedXForwardedFor // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}
/// Create a copy of SocketConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HappyEyeballsConfigCopyWith<$Res>? get happyEyeballs {
    if (_self.happyEyeballs == null) {
    return null;
  }

  return $HappyEyeballsConfigCopyWith<$Res>(_self.happyEyeballs!, (value) {
    return _then(_self.copyWith(happyEyeballs: value));
  });
}
}


/// Adds pattern-matching-related methods to [SocketConfig].
extension SocketConfigPatterns on SocketConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SocketConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SocketConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SocketConfig value)  $default,){
final _that = this;
switch (_that) {
case _SocketConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SocketConfig value)?  $default,){
final _that = this;
switch (_that) {
case _SocketConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? mark,  Object? tcpFastOpen,  TProxyMode? tproxy,  bool? acceptProxyProtocol,  XrayTargetStrategy? domainStrategy,  String? dialerProxy,  int? tcpKeepAliveInterval,  int? tcpKeepAliveIdle,  String? tcpCongestion,  int? tcpWindowClamp,  int? tcpMaxSeg,  bool? penetrate,  int? tcpUserTimeout,  bool? v6only, @JsonKey(name: 'interface')  String? interfaceName,  bool? tcpMptcp,  List<CustomSockoptConfig>? customSockopt,  AddressPortStrategy? addressPortStrategy,  HappyEyeballsConfig? happyEyeballs,  List<String>? trustedXForwardedFor)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SocketConfig() when $default != null:
return $default(_that.mark,_that.tcpFastOpen,_that.tproxy,_that.acceptProxyProtocol,_that.domainStrategy,_that.dialerProxy,_that.tcpKeepAliveInterval,_that.tcpKeepAliveIdle,_that.tcpCongestion,_that.tcpWindowClamp,_that.tcpMaxSeg,_that.penetrate,_that.tcpUserTimeout,_that.v6only,_that.interfaceName,_that.tcpMptcp,_that.customSockopt,_that.addressPortStrategy,_that.happyEyeballs,_that.trustedXForwardedFor);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? mark,  Object? tcpFastOpen,  TProxyMode? tproxy,  bool? acceptProxyProtocol,  XrayTargetStrategy? domainStrategy,  String? dialerProxy,  int? tcpKeepAliveInterval,  int? tcpKeepAliveIdle,  String? tcpCongestion,  int? tcpWindowClamp,  int? tcpMaxSeg,  bool? penetrate,  int? tcpUserTimeout,  bool? v6only, @JsonKey(name: 'interface')  String? interfaceName,  bool? tcpMptcp,  List<CustomSockoptConfig>? customSockopt,  AddressPortStrategy? addressPortStrategy,  HappyEyeballsConfig? happyEyeballs,  List<String>? trustedXForwardedFor)  $default,) {final _that = this;
switch (_that) {
case _SocketConfig():
return $default(_that.mark,_that.tcpFastOpen,_that.tproxy,_that.acceptProxyProtocol,_that.domainStrategy,_that.dialerProxy,_that.tcpKeepAliveInterval,_that.tcpKeepAliveIdle,_that.tcpCongestion,_that.tcpWindowClamp,_that.tcpMaxSeg,_that.penetrate,_that.tcpUserTimeout,_that.v6only,_that.interfaceName,_that.tcpMptcp,_that.customSockopt,_that.addressPortStrategy,_that.happyEyeballs,_that.trustedXForwardedFor);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? mark,  Object? tcpFastOpen,  TProxyMode? tproxy,  bool? acceptProxyProtocol,  XrayTargetStrategy? domainStrategy,  String? dialerProxy,  int? tcpKeepAliveInterval,  int? tcpKeepAliveIdle,  String? tcpCongestion,  int? tcpWindowClamp,  int? tcpMaxSeg,  bool? penetrate,  int? tcpUserTimeout,  bool? v6only, @JsonKey(name: 'interface')  String? interfaceName,  bool? tcpMptcp,  List<CustomSockoptConfig>? customSockopt,  AddressPortStrategy? addressPortStrategy,  HappyEyeballsConfig? happyEyeballs,  List<String>? trustedXForwardedFor)?  $default,) {final _that = this;
switch (_that) {
case _SocketConfig() when $default != null:
return $default(_that.mark,_that.tcpFastOpen,_that.tproxy,_that.acceptProxyProtocol,_that.domainStrategy,_that.dialerProxy,_that.tcpKeepAliveInterval,_that.tcpKeepAliveIdle,_that.tcpCongestion,_that.tcpWindowClamp,_that.tcpMaxSeg,_that.penetrate,_that.tcpUserTimeout,_that.v6only,_that.interfaceName,_that.tcpMptcp,_that.customSockopt,_that.addressPortStrategy,_that.happyEyeballs,_that.trustedXForwardedFor);case _:
  return null;

}
}

}

/// @nodoc


class _SocketConfig extends SocketConfig {
  const _SocketConfig({this.mark, this.tcpFastOpen, this.tproxy, this.acceptProxyProtocol, this.domainStrategy, this.dialerProxy, this.tcpKeepAliveInterval, this.tcpKeepAliveIdle, this.tcpCongestion, this.tcpWindowClamp, this.tcpMaxSeg, this.penetrate, this.tcpUserTimeout, this.v6only, @JsonKey(name: 'interface') this.interfaceName, this.tcpMptcp, final  List<CustomSockoptConfig>? customSockopt, this.addressPortStrategy, this.happyEyeballs, final  List<String>? trustedXForwardedFor}): _customSockopt = customSockopt,_trustedXForwardedFor = trustedXForwardedFor,super._();
  

@override final  int? mark;
@override final  Object? tcpFastOpen;
@override final  TProxyMode? tproxy;
@override final  bool? acceptProxyProtocol;
@override final  XrayTargetStrategy? domainStrategy;
@override final  String? dialerProxy;
@override final  int? tcpKeepAliveInterval;
@override final  int? tcpKeepAliveIdle;
@override final  String? tcpCongestion;
@override final  int? tcpWindowClamp;
@override final  int? tcpMaxSeg;
@override final  bool? penetrate;
@override final  int? tcpUserTimeout;
@override final  bool? v6only;
@override@JsonKey(name: 'interface') final  String? interfaceName;
@override final  bool? tcpMptcp;
 final  List<CustomSockoptConfig>? _customSockopt;
@override List<CustomSockoptConfig>? get customSockopt {
  final value = _customSockopt;
  if (value == null) return null;
  if (_customSockopt is EqualUnmodifiableListView) return _customSockopt;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  AddressPortStrategy? addressPortStrategy;
@override final  HappyEyeballsConfig? happyEyeballs;
 final  List<String>? _trustedXForwardedFor;
@override List<String>? get trustedXForwardedFor {
  final value = _trustedXForwardedFor;
  if (value == null) return null;
  if (_trustedXForwardedFor is EqualUnmodifiableListView) return _trustedXForwardedFor;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of SocketConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SocketConfigCopyWith<_SocketConfig> get copyWith => __$SocketConfigCopyWithImpl<_SocketConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SocketConfig&&(identical(other.mark, mark) || other.mark == mark)&&const DeepCollectionEquality().equals(other.tcpFastOpen, tcpFastOpen)&&(identical(other.tproxy, tproxy) || other.tproxy == tproxy)&&(identical(other.acceptProxyProtocol, acceptProxyProtocol) || other.acceptProxyProtocol == acceptProxyProtocol)&&(identical(other.domainStrategy, domainStrategy) || other.domainStrategy == domainStrategy)&&(identical(other.dialerProxy, dialerProxy) || other.dialerProxy == dialerProxy)&&(identical(other.tcpKeepAliveInterval, tcpKeepAliveInterval) || other.tcpKeepAliveInterval == tcpKeepAliveInterval)&&(identical(other.tcpKeepAliveIdle, tcpKeepAliveIdle) || other.tcpKeepAliveIdle == tcpKeepAliveIdle)&&(identical(other.tcpCongestion, tcpCongestion) || other.tcpCongestion == tcpCongestion)&&(identical(other.tcpWindowClamp, tcpWindowClamp) || other.tcpWindowClamp == tcpWindowClamp)&&(identical(other.tcpMaxSeg, tcpMaxSeg) || other.tcpMaxSeg == tcpMaxSeg)&&(identical(other.penetrate, penetrate) || other.penetrate == penetrate)&&(identical(other.tcpUserTimeout, tcpUserTimeout) || other.tcpUserTimeout == tcpUserTimeout)&&(identical(other.v6only, v6only) || other.v6only == v6only)&&(identical(other.interfaceName, interfaceName) || other.interfaceName == interfaceName)&&(identical(other.tcpMptcp, tcpMptcp) || other.tcpMptcp == tcpMptcp)&&const DeepCollectionEquality().equals(other._customSockopt, _customSockopt)&&(identical(other.addressPortStrategy, addressPortStrategy) || other.addressPortStrategy == addressPortStrategy)&&(identical(other.happyEyeballs, happyEyeballs) || other.happyEyeballs == happyEyeballs)&&const DeepCollectionEquality().equals(other._trustedXForwardedFor, _trustedXForwardedFor));
}


@override
int get hashCode => Object.hashAll([runtimeType,mark,const DeepCollectionEquality().hash(tcpFastOpen),tproxy,acceptProxyProtocol,domainStrategy,dialerProxy,tcpKeepAliveInterval,tcpKeepAliveIdle,tcpCongestion,tcpWindowClamp,tcpMaxSeg,penetrate,tcpUserTimeout,v6only,interfaceName,tcpMptcp,const DeepCollectionEquality().hash(_customSockopt),addressPortStrategy,happyEyeballs,const DeepCollectionEquality().hash(_trustedXForwardedFor)]);

@override
String toString() {
  return 'SocketConfig(mark: $mark, tcpFastOpen: $tcpFastOpen, tproxy: $tproxy, acceptProxyProtocol: $acceptProxyProtocol, domainStrategy: $domainStrategy, dialerProxy: $dialerProxy, tcpKeepAliveInterval: $tcpKeepAliveInterval, tcpKeepAliveIdle: $tcpKeepAliveIdle, tcpCongestion: $tcpCongestion, tcpWindowClamp: $tcpWindowClamp, tcpMaxSeg: $tcpMaxSeg, penetrate: $penetrate, tcpUserTimeout: $tcpUserTimeout, v6only: $v6only, interfaceName: $interfaceName, tcpMptcp: $tcpMptcp, customSockopt: $customSockopt, addressPortStrategy: $addressPortStrategy, happyEyeballs: $happyEyeballs, trustedXForwardedFor: $trustedXForwardedFor)';
}


}

/// @nodoc
abstract mixin class _$SocketConfigCopyWith<$Res> implements $SocketConfigCopyWith<$Res> {
  factory _$SocketConfigCopyWith(_SocketConfig value, $Res Function(_SocketConfig) _then) = __$SocketConfigCopyWithImpl;
@override @useResult
$Res call({
 int? mark, Object? tcpFastOpen, TProxyMode? tproxy, bool? acceptProxyProtocol, XrayTargetStrategy? domainStrategy, String? dialerProxy, int? tcpKeepAliveInterval, int? tcpKeepAliveIdle, String? tcpCongestion, int? tcpWindowClamp, int? tcpMaxSeg, bool? penetrate, int? tcpUserTimeout, bool? v6only,@JsonKey(name: 'interface') String? interfaceName, bool? tcpMptcp, List<CustomSockoptConfig>? customSockopt, AddressPortStrategy? addressPortStrategy, HappyEyeballsConfig? happyEyeballs, List<String>? trustedXForwardedFor
});


@override $HappyEyeballsConfigCopyWith<$Res>? get happyEyeballs;

}
/// @nodoc
class __$SocketConfigCopyWithImpl<$Res>
    implements _$SocketConfigCopyWith<$Res> {
  __$SocketConfigCopyWithImpl(this._self, this._then);

  final _SocketConfig _self;
  final $Res Function(_SocketConfig) _then;

/// Create a copy of SocketConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mark = freezed,Object? tcpFastOpen = freezed,Object? tproxy = freezed,Object? acceptProxyProtocol = freezed,Object? domainStrategy = freezed,Object? dialerProxy = freezed,Object? tcpKeepAliveInterval = freezed,Object? tcpKeepAliveIdle = freezed,Object? tcpCongestion = freezed,Object? tcpWindowClamp = freezed,Object? tcpMaxSeg = freezed,Object? penetrate = freezed,Object? tcpUserTimeout = freezed,Object? v6only = freezed,Object? interfaceName = freezed,Object? tcpMptcp = freezed,Object? customSockopt = freezed,Object? addressPortStrategy = freezed,Object? happyEyeballs = freezed,Object? trustedXForwardedFor = freezed,}) {
  return _then(_SocketConfig(
mark: freezed == mark ? _self.mark : mark // ignore: cast_nullable_to_non_nullable
as int?,tcpFastOpen: freezed == tcpFastOpen ? _self.tcpFastOpen : tcpFastOpen ,tproxy: freezed == tproxy ? _self.tproxy : tproxy // ignore: cast_nullable_to_non_nullable
as TProxyMode?,acceptProxyProtocol: freezed == acceptProxyProtocol ? _self.acceptProxyProtocol : acceptProxyProtocol // ignore: cast_nullable_to_non_nullable
as bool?,domainStrategy: freezed == domainStrategy ? _self.domainStrategy : domainStrategy // ignore: cast_nullable_to_non_nullable
as XrayTargetStrategy?,dialerProxy: freezed == dialerProxy ? _self.dialerProxy : dialerProxy // ignore: cast_nullable_to_non_nullable
as String?,tcpKeepAliveInterval: freezed == tcpKeepAliveInterval ? _self.tcpKeepAliveInterval : tcpKeepAliveInterval // ignore: cast_nullable_to_non_nullable
as int?,tcpKeepAliveIdle: freezed == tcpKeepAliveIdle ? _self.tcpKeepAliveIdle : tcpKeepAliveIdle // ignore: cast_nullable_to_non_nullable
as int?,tcpCongestion: freezed == tcpCongestion ? _self.tcpCongestion : tcpCongestion // ignore: cast_nullable_to_non_nullable
as String?,tcpWindowClamp: freezed == tcpWindowClamp ? _self.tcpWindowClamp : tcpWindowClamp // ignore: cast_nullable_to_non_nullable
as int?,tcpMaxSeg: freezed == tcpMaxSeg ? _self.tcpMaxSeg : tcpMaxSeg // ignore: cast_nullable_to_non_nullable
as int?,penetrate: freezed == penetrate ? _self.penetrate : penetrate // ignore: cast_nullable_to_non_nullable
as bool?,tcpUserTimeout: freezed == tcpUserTimeout ? _self.tcpUserTimeout : tcpUserTimeout // ignore: cast_nullable_to_non_nullable
as int?,v6only: freezed == v6only ? _self.v6only : v6only // ignore: cast_nullable_to_non_nullable
as bool?,interfaceName: freezed == interfaceName ? _self.interfaceName : interfaceName // ignore: cast_nullable_to_non_nullable
as String?,tcpMptcp: freezed == tcpMptcp ? _self.tcpMptcp : tcpMptcp // ignore: cast_nullable_to_non_nullable
as bool?,customSockopt: freezed == customSockopt ? _self._customSockopt : customSockopt // ignore: cast_nullable_to_non_nullable
as List<CustomSockoptConfig>?,addressPortStrategy: freezed == addressPortStrategy ? _self.addressPortStrategy : addressPortStrategy // ignore: cast_nullable_to_non_nullable
as AddressPortStrategy?,happyEyeballs: freezed == happyEyeballs ? _self.happyEyeballs : happyEyeballs // ignore: cast_nullable_to_non_nullable
as HappyEyeballsConfig?,trustedXForwardedFor: freezed == trustedXForwardedFor ? _self._trustedXForwardedFor : trustedXForwardedFor // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

/// Create a copy of SocketConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HappyEyeballsConfigCopyWith<$Res>? get happyEyeballs {
    if (_self.happyEyeballs == null) {
    return null;
  }

  return $HappyEyeballsConfigCopyWith<$Res>(_self.happyEyeballs!, (value) {
    return _then(_self.copyWith(happyEyeballs: value));
  });
}
}

/// @nodoc
mixin _$SplitHTTPConfig {

 String? get host; String? get path; SplitHTTPMode? get mode; Map<String, String>? get headers; XrayInt32Range? get xPaddingBytes; bool? get xPaddingObfsMode; String? get xPaddingKey; String? get xPaddingHeader; SplitHTTPPlacement? get xPaddingPlacement; SplitHTTPPaddingMethod? get xPaddingMethod; String? get uplinkHTTPMethod; SplitHTTPPlacement? get sessionPlacement; String? get sessionKey; SplitHTTPPlacement? get seqPlacement; String? get seqKey; SplitHTTPPlacement? get uplinkDataPlacement; String? get uplinkDataKey; XrayInt32Range? get uplinkChunkSize; bool? get noGRPCHeader; bool? get noSSEHeader; XrayInt32Range? get scMaxEachPostBytes; XrayInt32Range? get scMinPostsIntervalMs; int? get scMaxBufferedPosts; XrayInt32Range? get scStreamUpServerSecs; int? get serverMaxHeaderBytes; XmuxConfig? get xmux; StreamConfig? get downloadSettings; Map<String, dynamic>? get extra;
/// Create a copy of SplitHTTPConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SplitHTTPConfigCopyWith<SplitHTTPConfig> get copyWith => _$SplitHTTPConfigCopyWithImpl<SplitHTTPConfig>(this as SplitHTTPConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SplitHTTPConfig&&(identical(other.host, host) || other.host == host)&&(identical(other.path, path) || other.path == path)&&(identical(other.mode, mode) || other.mode == mode)&&const DeepCollectionEquality().equals(other.headers, headers)&&(identical(other.xPaddingBytes, xPaddingBytes) || other.xPaddingBytes == xPaddingBytes)&&(identical(other.xPaddingObfsMode, xPaddingObfsMode) || other.xPaddingObfsMode == xPaddingObfsMode)&&(identical(other.xPaddingKey, xPaddingKey) || other.xPaddingKey == xPaddingKey)&&(identical(other.xPaddingHeader, xPaddingHeader) || other.xPaddingHeader == xPaddingHeader)&&(identical(other.xPaddingPlacement, xPaddingPlacement) || other.xPaddingPlacement == xPaddingPlacement)&&(identical(other.xPaddingMethod, xPaddingMethod) || other.xPaddingMethod == xPaddingMethod)&&(identical(other.uplinkHTTPMethod, uplinkHTTPMethod) || other.uplinkHTTPMethod == uplinkHTTPMethod)&&(identical(other.sessionPlacement, sessionPlacement) || other.sessionPlacement == sessionPlacement)&&(identical(other.sessionKey, sessionKey) || other.sessionKey == sessionKey)&&(identical(other.seqPlacement, seqPlacement) || other.seqPlacement == seqPlacement)&&(identical(other.seqKey, seqKey) || other.seqKey == seqKey)&&(identical(other.uplinkDataPlacement, uplinkDataPlacement) || other.uplinkDataPlacement == uplinkDataPlacement)&&(identical(other.uplinkDataKey, uplinkDataKey) || other.uplinkDataKey == uplinkDataKey)&&(identical(other.uplinkChunkSize, uplinkChunkSize) || other.uplinkChunkSize == uplinkChunkSize)&&(identical(other.noGRPCHeader, noGRPCHeader) || other.noGRPCHeader == noGRPCHeader)&&(identical(other.noSSEHeader, noSSEHeader) || other.noSSEHeader == noSSEHeader)&&(identical(other.scMaxEachPostBytes, scMaxEachPostBytes) || other.scMaxEachPostBytes == scMaxEachPostBytes)&&(identical(other.scMinPostsIntervalMs, scMinPostsIntervalMs) || other.scMinPostsIntervalMs == scMinPostsIntervalMs)&&(identical(other.scMaxBufferedPosts, scMaxBufferedPosts) || other.scMaxBufferedPosts == scMaxBufferedPosts)&&(identical(other.scStreamUpServerSecs, scStreamUpServerSecs) || other.scStreamUpServerSecs == scStreamUpServerSecs)&&(identical(other.serverMaxHeaderBytes, serverMaxHeaderBytes) || other.serverMaxHeaderBytes == serverMaxHeaderBytes)&&(identical(other.xmux, xmux) || other.xmux == xmux)&&(identical(other.downloadSettings, downloadSettings) || other.downloadSettings == downloadSettings)&&const DeepCollectionEquality().equals(other.extra, extra));
}


@override
int get hashCode => Object.hashAll([runtimeType,host,path,mode,const DeepCollectionEquality().hash(headers),xPaddingBytes,xPaddingObfsMode,xPaddingKey,xPaddingHeader,xPaddingPlacement,xPaddingMethod,uplinkHTTPMethod,sessionPlacement,sessionKey,seqPlacement,seqKey,uplinkDataPlacement,uplinkDataKey,uplinkChunkSize,noGRPCHeader,noSSEHeader,scMaxEachPostBytes,scMinPostsIntervalMs,scMaxBufferedPosts,scStreamUpServerSecs,serverMaxHeaderBytes,xmux,downloadSettings,const DeepCollectionEquality().hash(extra)]);

@override
String toString() {
  return 'SplitHTTPConfig(host: $host, path: $path, mode: $mode, headers: $headers, xPaddingBytes: $xPaddingBytes, xPaddingObfsMode: $xPaddingObfsMode, xPaddingKey: $xPaddingKey, xPaddingHeader: $xPaddingHeader, xPaddingPlacement: $xPaddingPlacement, xPaddingMethod: $xPaddingMethod, uplinkHTTPMethod: $uplinkHTTPMethod, sessionPlacement: $sessionPlacement, sessionKey: $sessionKey, seqPlacement: $seqPlacement, seqKey: $seqKey, uplinkDataPlacement: $uplinkDataPlacement, uplinkDataKey: $uplinkDataKey, uplinkChunkSize: $uplinkChunkSize, noGRPCHeader: $noGRPCHeader, noSSEHeader: $noSSEHeader, scMaxEachPostBytes: $scMaxEachPostBytes, scMinPostsIntervalMs: $scMinPostsIntervalMs, scMaxBufferedPosts: $scMaxBufferedPosts, scStreamUpServerSecs: $scStreamUpServerSecs, serverMaxHeaderBytes: $serverMaxHeaderBytes, xmux: $xmux, downloadSettings: $downloadSettings, extra: $extra)';
}


}

/// @nodoc
abstract mixin class $SplitHTTPConfigCopyWith<$Res>  {
  factory $SplitHTTPConfigCopyWith(SplitHTTPConfig value, $Res Function(SplitHTTPConfig) _then) = _$SplitHTTPConfigCopyWithImpl;
@useResult
$Res call({
 String? host, String? path, SplitHTTPMode? mode, Map<String, String>? headers, XrayInt32Range? xPaddingBytes, bool? xPaddingObfsMode, String? xPaddingKey, String? xPaddingHeader, SplitHTTPPlacement? xPaddingPlacement, SplitHTTPPaddingMethod? xPaddingMethod, String? uplinkHTTPMethod, SplitHTTPPlacement? sessionPlacement, String? sessionKey, SplitHTTPPlacement? seqPlacement, String? seqKey, SplitHTTPPlacement? uplinkDataPlacement, String? uplinkDataKey, XrayInt32Range? uplinkChunkSize, bool? noGRPCHeader, bool? noSSEHeader, XrayInt32Range? scMaxEachPostBytes, XrayInt32Range? scMinPostsIntervalMs, int? scMaxBufferedPosts, XrayInt32Range? scStreamUpServerSecs, int? serverMaxHeaderBytes, XmuxConfig? xmux, StreamConfig? downloadSettings, Map<String, dynamic>? extra
});


$XrayInt32RangeCopyWith<$Res>? get xPaddingBytes;$XrayInt32RangeCopyWith<$Res>? get uplinkChunkSize;$XrayInt32RangeCopyWith<$Res>? get scMaxEachPostBytes;$XrayInt32RangeCopyWith<$Res>? get scMinPostsIntervalMs;$XrayInt32RangeCopyWith<$Res>? get scStreamUpServerSecs;$XmuxConfigCopyWith<$Res>? get xmux;$StreamConfigCopyWith<$Res>? get downloadSettings;

}
/// @nodoc
class _$SplitHTTPConfigCopyWithImpl<$Res>
    implements $SplitHTTPConfigCopyWith<$Res> {
  _$SplitHTTPConfigCopyWithImpl(this._self, this._then);

  final SplitHTTPConfig _self;
  final $Res Function(SplitHTTPConfig) _then;

/// Create a copy of SplitHTTPConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? host = freezed,Object? path = freezed,Object? mode = freezed,Object? headers = freezed,Object? xPaddingBytes = freezed,Object? xPaddingObfsMode = freezed,Object? xPaddingKey = freezed,Object? xPaddingHeader = freezed,Object? xPaddingPlacement = freezed,Object? xPaddingMethod = freezed,Object? uplinkHTTPMethod = freezed,Object? sessionPlacement = freezed,Object? sessionKey = freezed,Object? seqPlacement = freezed,Object? seqKey = freezed,Object? uplinkDataPlacement = freezed,Object? uplinkDataKey = freezed,Object? uplinkChunkSize = freezed,Object? noGRPCHeader = freezed,Object? noSSEHeader = freezed,Object? scMaxEachPostBytes = freezed,Object? scMinPostsIntervalMs = freezed,Object? scMaxBufferedPosts = freezed,Object? scStreamUpServerSecs = freezed,Object? serverMaxHeaderBytes = freezed,Object? xmux = freezed,Object? downloadSettings = freezed,Object? extra = freezed,}) {
  return _then(_self.copyWith(
host: freezed == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as SplitHTTPMode?,headers: freezed == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,xPaddingBytes: freezed == xPaddingBytes ? _self.xPaddingBytes : xPaddingBytes // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,xPaddingObfsMode: freezed == xPaddingObfsMode ? _self.xPaddingObfsMode : xPaddingObfsMode // ignore: cast_nullable_to_non_nullable
as bool?,xPaddingKey: freezed == xPaddingKey ? _self.xPaddingKey : xPaddingKey // ignore: cast_nullable_to_non_nullable
as String?,xPaddingHeader: freezed == xPaddingHeader ? _self.xPaddingHeader : xPaddingHeader // ignore: cast_nullable_to_non_nullable
as String?,xPaddingPlacement: freezed == xPaddingPlacement ? _self.xPaddingPlacement : xPaddingPlacement // ignore: cast_nullable_to_non_nullable
as SplitHTTPPlacement?,xPaddingMethod: freezed == xPaddingMethod ? _self.xPaddingMethod : xPaddingMethod // ignore: cast_nullable_to_non_nullable
as SplitHTTPPaddingMethod?,uplinkHTTPMethod: freezed == uplinkHTTPMethod ? _self.uplinkHTTPMethod : uplinkHTTPMethod // ignore: cast_nullable_to_non_nullable
as String?,sessionPlacement: freezed == sessionPlacement ? _self.sessionPlacement : sessionPlacement // ignore: cast_nullable_to_non_nullable
as SplitHTTPPlacement?,sessionKey: freezed == sessionKey ? _self.sessionKey : sessionKey // ignore: cast_nullable_to_non_nullable
as String?,seqPlacement: freezed == seqPlacement ? _self.seqPlacement : seqPlacement // ignore: cast_nullable_to_non_nullable
as SplitHTTPPlacement?,seqKey: freezed == seqKey ? _self.seqKey : seqKey // ignore: cast_nullable_to_non_nullable
as String?,uplinkDataPlacement: freezed == uplinkDataPlacement ? _self.uplinkDataPlacement : uplinkDataPlacement // ignore: cast_nullable_to_non_nullable
as SplitHTTPPlacement?,uplinkDataKey: freezed == uplinkDataKey ? _self.uplinkDataKey : uplinkDataKey // ignore: cast_nullable_to_non_nullable
as String?,uplinkChunkSize: freezed == uplinkChunkSize ? _self.uplinkChunkSize : uplinkChunkSize // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,noGRPCHeader: freezed == noGRPCHeader ? _self.noGRPCHeader : noGRPCHeader // ignore: cast_nullable_to_non_nullable
as bool?,noSSEHeader: freezed == noSSEHeader ? _self.noSSEHeader : noSSEHeader // ignore: cast_nullable_to_non_nullable
as bool?,scMaxEachPostBytes: freezed == scMaxEachPostBytes ? _self.scMaxEachPostBytes : scMaxEachPostBytes // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,scMinPostsIntervalMs: freezed == scMinPostsIntervalMs ? _self.scMinPostsIntervalMs : scMinPostsIntervalMs // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,scMaxBufferedPosts: freezed == scMaxBufferedPosts ? _self.scMaxBufferedPosts : scMaxBufferedPosts // ignore: cast_nullable_to_non_nullable
as int?,scStreamUpServerSecs: freezed == scStreamUpServerSecs ? _self.scStreamUpServerSecs : scStreamUpServerSecs // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,serverMaxHeaderBytes: freezed == serverMaxHeaderBytes ? _self.serverMaxHeaderBytes : serverMaxHeaderBytes // ignore: cast_nullable_to_non_nullable
as int?,xmux: freezed == xmux ? _self.xmux : xmux // ignore: cast_nullable_to_non_nullable
as XmuxConfig?,downloadSettings: freezed == downloadSettings ? _self.downloadSettings : downloadSettings // ignore: cast_nullable_to_non_nullable
as StreamConfig?,extra: freezed == extra ? _self.extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}
/// Create a copy of SplitHTTPConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get xPaddingBytes {
    if (_self.xPaddingBytes == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.xPaddingBytes!, (value) {
    return _then(_self.copyWith(xPaddingBytes: value));
  });
}/// Create a copy of SplitHTTPConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get uplinkChunkSize {
    if (_self.uplinkChunkSize == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.uplinkChunkSize!, (value) {
    return _then(_self.copyWith(uplinkChunkSize: value));
  });
}/// Create a copy of SplitHTTPConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get scMaxEachPostBytes {
    if (_self.scMaxEachPostBytes == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.scMaxEachPostBytes!, (value) {
    return _then(_self.copyWith(scMaxEachPostBytes: value));
  });
}/// Create a copy of SplitHTTPConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get scMinPostsIntervalMs {
    if (_self.scMinPostsIntervalMs == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.scMinPostsIntervalMs!, (value) {
    return _then(_self.copyWith(scMinPostsIntervalMs: value));
  });
}/// Create a copy of SplitHTTPConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get scStreamUpServerSecs {
    if (_self.scStreamUpServerSecs == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.scStreamUpServerSecs!, (value) {
    return _then(_self.copyWith(scStreamUpServerSecs: value));
  });
}/// Create a copy of SplitHTTPConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XmuxConfigCopyWith<$Res>? get xmux {
    if (_self.xmux == null) {
    return null;
  }

  return $XmuxConfigCopyWith<$Res>(_self.xmux!, (value) {
    return _then(_self.copyWith(xmux: value));
  });
}/// Create a copy of SplitHTTPConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreamConfigCopyWith<$Res>? get downloadSettings {
    if (_self.downloadSettings == null) {
    return null;
  }

  return $StreamConfigCopyWith<$Res>(_self.downloadSettings!, (value) {
    return _then(_self.copyWith(downloadSettings: value));
  });
}
}


/// Adds pattern-matching-related methods to [SplitHTTPConfig].
extension SplitHTTPConfigPatterns on SplitHTTPConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SplitHTTPConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SplitHTTPConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SplitHTTPConfig value)  $default,){
final _that = this;
switch (_that) {
case _SplitHTTPConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SplitHTTPConfig value)?  $default,){
final _that = this;
switch (_that) {
case _SplitHTTPConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? host,  String? path,  SplitHTTPMode? mode,  Map<String, String>? headers,  XrayInt32Range? xPaddingBytes,  bool? xPaddingObfsMode,  String? xPaddingKey,  String? xPaddingHeader,  SplitHTTPPlacement? xPaddingPlacement,  SplitHTTPPaddingMethod? xPaddingMethod,  String? uplinkHTTPMethod,  SplitHTTPPlacement? sessionPlacement,  String? sessionKey,  SplitHTTPPlacement? seqPlacement,  String? seqKey,  SplitHTTPPlacement? uplinkDataPlacement,  String? uplinkDataKey,  XrayInt32Range? uplinkChunkSize,  bool? noGRPCHeader,  bool? noSSEHeader,  XrayInt32Range? scMaxEachPostBytes,  XrayInt32Range? scMinPostsIntervalMs,  int? scMaxBufferedPosts,  XrayInt32Range? scStreamUpServerSecs,  int? serverMaxHeaderBytes,  XmuxConfig? xmux,  StreamConfig? downloadSettings,  Map<String, dynamic>? extra)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SplitHTTPConfig() when $default != null:
return $default(_that.host,_that.path,_that.mode,_that.headers,_that.xPaddingBytes,_that.xPaddingObfsMode,_that.xPaddingKey,_that.xPaddingHeader,_that.xPaddingPlacement,_that.xPaddingMethod,_that.uplinkHTTPMethod,_that.sessionPlacement,_that.sessionKey,_that.seqPlacement,_that.seqKey,_that.uplinkDataPlacement,_that.uplinkDataKey,_that.uplinkChunkSize,_that.noGRPCHeader,_that.noSSEHeader,_that.scMaxEachPostBytes,_that.scMinPostsIntervalMs,_that.scMaxBufferedPosts,_that.scStreamUpServerSecs,_that.serverMaxHeaderBytes,_that.xmux,_that.downloadSettings,_that.extra);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? host,  String? path,  SplitHTTPMode? mode,  Map<String, String>? headers,  XrayInt32Range? xPaddingBytes,  bool? xPaddingObfsMode,  String? xPaddingKey,  String? xPaddingHeader,  SplitHTTPPlacement? xPaddingPlacement,  SplitHTTPPaddingMethod? xPaddingMethod,  String? uplinkHTTPMethod,  SplitHTTPPlacement? sessionPlacement,  String? sessionKey,  SplitHTTPPlacement? seqPlacement,  String? seqKey,  SplitHTTPPlacement? uplinkDataPlacement,  String? uplinkDataKey,  XrayInt32Range? uplinkChunkSize,  bool? noGRPCHeader,  bool? noSSEHeader,  XrayInt32Range? scMaxEachPostBytes,  XrayInt32Range? scMinPostsIntervalMs,  int? scMaxBufferedPosts,  XrayInt32Range? scStreamUpServerSecs,  int? serverMaxHeaderBytes,  XmuxConfig? xmux,  StreamConfig? downloadSettings,  Map<String, dynamic>? extra)  $default,) {final _that = this;
switch (_that) {
case _SplitHTTPConfig():
return $default(_that.host,_that.path,_that.mode,_that.headers,_that.xPaddingBytes,_that.xPaddingObfsMode,_that.xPaddingKey,_that.xPaddingHeader,_that.xPaddingPlacement,_that.xPaddingMethod,_that.uplinkHTTPMethod,_that.sessionPlacement,_that.sessionKey,_that.seqPlacement,_that.seqKey,_that.uplinkDataPlacement,_that.uplinkDataKey,_that.uplinkChunkSize,_that.noGRPCHeader,_that.noSSEHeader,_that.scMaxEachPostBytes,_that.scMinPostsIntervalMs,_that.scMaxBufferedPosts,_that.scStreamUpServerSecs,_that.serverMaxHeaderBytes,_that.xmux,_that.downloadSettings,_that.extra);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? host,  String? path,  SplitHTTPMode? mode,  Map<String, String>? headers,  XrayInt32Range? xPaddingBytes,  bool? xPaddingObfsMode,  String? xPaddingKey,  String? xPaddingHeader,  SplitHTTPPlacement? xPaddingPlacement,  SplitHTTPPaddingMethod? xPaddingMethod,  String? uplinkHTTPMethod,  SplitHTTPPlacement? sessionPlacement,  String? sessionKey,  SplitHTTPPlacement? seqPlacement,  String? seqKey,  SplitHTTPPlacement? uplinkDataPlacement,  String? uplinkDataKey,  XrayInt32Range? uplinkChunkSize,  bool? noGRPCHeader,  bool? noSSEHeader,  XrayInt32Range? scMaxEachPostBytes,  XrayInt32Range? scMinPostsIntervalMs,  int? scMaxBufferedPosts,  XrayInt32Range? scStreamUpServerSecs,  int? serverMaxHeaderBytes,  XmuxConfig? xmux,  StreamConfig? downloadSettings,  Map<String, dynamic>? extra)?  $default,) {final _that = this;
switch (_that) {
case _SplitHTTPConfig() when $default != null:
return $default(_that.host,_that.path,_that.mode,_that.headers,_that.xPaddingBytes,_that.xPaddingObfsMode,_that.xPaddingKey,_that.xPaddingHeader,_that.xPaddingPlacement,_that.xPaddingMethod,_that.uplinkHTTPMethod,_that.sessionPlacement,_that.sessionKey,_that.seqPlacement,_that.seqKey,_that.uplinkDataPlacement,_that.uplinkDataKey,_that.uplinkChunkSize,_that.noGRPCHeader,_that.noSSEHeader,_that.scMaxEachPostBytes,_that.scMinPostsIntervalMs,_that.scMaxBufferedPosts,_that.scStreamUpServerSecs,_that.serverMaxHeaderBytes,_that.xmux,_that.downloadSettings,_that.extra);case _:
  return null;

}
}

}

/// @nodoc


class _SplitHTTPConfig extends SplitHTTPConfig {
  const _SplitHTTPConfig({this.host, this.path, this.mode, final  Map<String, String>? headers, this.xPaddingBytes, this.xPaddingObfsMode, this.xPaddingKey, this.xPaddingHeader, this.xPaddingPlacement, this.xPaddingMethod, this.uplinkHTTPMethod, this.sessionPlacement, this.sessionKey, this.seqPlacement, this.seqKey, this.uplinkDataPlacement, this.uplinkDataKey, this.uplinkChunkSize, this.noGRPCHeader, this.noSSEHeader, this.scMaxEachPostBytes, this.scMinPostsIntervalMs, this.scMaxBufferedPosts, this.scStreamUpServerSecs, this.serverMaxHeaderBytes, this.xmux, this.downloadSettings, final  Map<String, dynamic>? extra}): _headers = headers,_extra = extra,super._();
  

@override final  String? host;
@override final  String? path;
@override final  SplitHTTPMode? mode;
 final  Map<String, String>? _headers;
@override Map<String, String>? get headers {
  final value = _headers;
  if (value == null) return null;
  if (_headers is EqualUnmodifiableMapView) return _headers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  XrayInt32Range? xPaddingBytes;
@override final  bool? xPaddingObfsMode;
@override final  String? xPaddingKey;
@override final  String? xPaddingHeader;
@override final  SplitHTTPPlacement? xPaddingPlacement;
@override final  SplitHTTPPaddingMethod? xPaddingMethod;
@override final  String? uplinkHTTPMethod;
@override final  SplitHTTPPlacement? sessionPlacement;
@override final  String? sessionKey;
@override final  SplitHTTPPlacement? seqPlacement;
@override final  String? seqKey;
@override final  SplitHTTPPlacement? uplinkDataPlacement;
@override final  String? uplinkDataKey;
@override final  XrayInt32Range? uplinkChunkSize;
@override final  bool? noGRPCHeader;
@override final  bool? noSSEHeader;
@override final  XrayInt32Range? scMaxEachPostBytes;
@override final  XrayInt32Range? scMinPostsIntervalMs;
@override final  int? scMaxBufferedPosts;
@override final  XrayInt32Range? scStreamUpServerSecs;
@override final  int? serverMaxHeaderBytes;
@override final  XmuxConfig? xmux;
@override final  StreamConfig? downloadSettings;
 final  Map<String, dynamic>? _extra;
@override Map<String, dynamic>? get extra {
  final value = _extra;
  if (value == null) return null;
  if (_extra is EqualUnmodifiableMapView) return _extra;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of SplitHTTPConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SplitHTTPConfigCopyWith<_SplitHTTPConfig> get copyWith => __$SplitHTTPConfigCopyWithImpl<_SplitHTTPConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SplitHTTPConfig&&(identical(other.host, host) || other.host == host)&&(identical(other.path, path) || other.path == path)&&(identical(other.mode, mode) || other.mode == mode)&&const DeepCollectionEquality().equals(other._headers, _headers)&&(identical(other.xPaddingBytes, xPaddingBytes) || other.xPaddingBytes == xPaddingBytes)&&(identical(other.xPaddingObfsMode, xPaddingObfsMode) || other.xPaddingObfsMode == xPaddingObfsMode)&&(identical(other.xPaddingKey, xPaddingKey) || other.xPaddingKey == xPaddingKey)&&(identical(other.xPaddingHeader, xPaddingHeader) || other.xPaddingHeader == xPaddingHeader)&&(identical(other.xPaddingPlacement, xPaddingPlacement) || other.xPaddingPlacement == xPaddingPlacement)&&(identical(other.xPaddingMethod, xPaddingMethod) || other.xPaddingMethod == xPaddingMethod)&&(identical(other.uplinkHTTPMethod, uplinkHTTPMethod) || other.uplinkHTTPMethod == uplinkHTTPMethod)&&(identical(other.sessionPlacement, sessionPlacement) || other.sessionPlacement == sessionPlacement)&&(identical(other.sessionKey, sessionKey) || other.sessionKey == sessionKey)&&(identical(other.seqPlacement, seqPlacement) || other.seqPlacement == seqPlacement)&&(identical(other.seqKey, seqKey) || other.seqKey == seqKey)&&(identical(other.uplinkDataPlacement, uplinkDataPlacement) || other.uplinkDataPlacement == uplinkDataPlacement)&&(identical(other.uplinkDataKey, uplinkDataKey) || other.uplinkDataKey == uplinkDataKey)&&(identical(other.uplinkChunkSize, uplinkChunkSize) || other.uplinkChunkSize == uplinkChunkSize)&&(identical(other.noGRPCHeader, noGRPCHeader) || other.noGRPCHeader == noGRPCHeader)&&(identical(other.noSSEHeader, noSSEHeader) || other.noSSEHeader == noSSEHeader)&&(identical(other.scMaxEachPostBytes, scMaxEachPostBytes) || other.scMaxEachPostBytes == scMaxEachPostBytes)&&(identical(other.scMinPostsIntervalMs, scMinPostsIntervalMs) || other.scMinPostsIntervalMs == scMinPostsIntervalMs)&&(identical(other.scMaxBufferedPosts, scMaxBufferedPosts) || other.scMaxBufferedPosts == scMaxBufferedPosts)&&(identical(other.scStreamUpServerSecs, scStreamUpServerSecs) || other.scStreamUpServerSecs == scStreamUpServerSecs)&&(identical(other.serverMaxHeaderBytes, serverMaxHeaderBytes) || other.serverMaxHeaderBytes == serverMaxHeaderBytes)&&(identical(other.xmux, xmux) || other.xmux == xmux)&&(identical(other.downloadSettings, downloadSettings) || other.downloadSettings == downloadSettings)&&const DeepCollectionEquality().equals(other._extra, _extra));
}


@override
int get hashCode => Object.hashAll([runtimeType,host,path,mode,const DeepCollectionEquality().hash(_headers),xPaddingBytes,xPaddingObfsMode,xPaddingKey,xPaddingHeader,xPaddingPlacement,xPaddingMethod,uplinkHTTPMethod,sessionPlacement,sessionKey,seqPlacement,seqKey,uplinkDataPlacement,uplinkDataKey,uplinkChunkSize,noGRPCHeader,noSSEHeader,scMaxEachPostBytes,scMinPostsIntervalMs,scMaxBufferedPosts,scStreamUpServerSecs,serverMaxHeaderBytes,xmux,downloadSettings,const DeepCollectionEquality().hash(_extra)]);

@override
String toString() {
  return 'SplitHTTPConfig(host: $host, path: $path, mode: $mode, headers: $headers, xPaddingBytes: $xPaddingBytes, xPaddingObfsMode: $xPaddingObfsMode, xPaddingKey: $xPaddingKey, xPaddingHeader: $xPaddingHeader, xPaddingPlacement: $xPaddingPlacement, xPaddingMethod: $xPaddingMethod, uplinkHTTPMethod: $uplinkHTTPMethod, sessionPlacement: $sessionPlacement, sessionKey: $sessionKey, seqPlacement: $seqPlacement, seqKey: $seqKey, uplinkDataPlacement: $uplinkDataPlacement, uplinkDataKey: $uplinkDataKey, uplinkChunkSize: $uplinkChunkSize, noGRPCHeader: $noGRPCHeader, noSSEHeader: $noSSEHeader, scMaxEachPostBytes: $scMaxEachPostBytes, scMinPostsIntervalMs: $scMinPostsIntervalMs, scMaxBufferedPosts: $scMaxBufferedPosts, scStreamUpServerSecs: $scStreamUpServerSecs, serverMaxHeaderBytes: $serverMaxHeaderBytes, xmux: $xmux, downloadSettings: $downloadSettings, extra: $extra)';
}


}

/// @nodoc
abstract mixin class _$SplitHTTPConfigCopyWith<$Res> implements $SplitHTTPConfigCopyWith<$Res> {
  factory _$SplitHTTPConfigCopyWith(_SplitHTTPConfig value, $Res Function(_SplitHTTPConfig) _then) = __$SplitHTTPConfigCopyWithImpl;
@override @useResult
$Res call({
 String? host, String? path, SplitHTTPMode? mode, Map<String, String>? headers, XrayInt32Range? xPaddingBytes, bool? xPaddingObfsMode, String? xPaddingKey, String? xPaddingHeader, SplitHTTPPlacement? xPaddingPlacement, SplitHTTPPaddingMethod? xPaddingMethod, String? uplinkHTTPMethod, SplitHTTPPlacement? sessionPlacement, String? sessionKey, SplitHTTPPlacement? seqPlacement, String? seqKey, SplitHTTPPlacement? uplinkDataPlacement, String? uplinkDataKey, XrayInt32Range? uplinkChunkSize, bool? noGRPCHeader, bool? noSSEHeader, XrayInt32Range? scMaxEachPostBytes, XrayInt32Range? scMinPostsIntervalMs, int? scMaxBufferedPosts, XrayInt32Range? scStreamUpServerSecs, int? serverMaxHeaderBytes, XmuxConfig? xmux, StreamConfig? downloadSettings, Map<String, dynamic>? extra
});


@override $XrayInt32RangeCopyWith<$Res>? get xPaddingBytes;@override $XrayInt32RangeCopyWith<$Res>? get uplinkChunkSize;@override $XrayInt32RangeCopyWith<$Res>? get scMaxEachPostBytes;@override $XrayInt32RangeCopyWith<$Res>? get scMinPostsIntervalMs;@override $XrayInt32RangeCopyWith<$Res>? get scStreamUpServerSecs;@override $XmuxConfigCopyWith<$Res>? get xmux;@override $StreamConfigCopyWith<$Res>? get downloadSettings;

}
/// @nodoc
class __$SplitHTTPConfigCopyWithImpl<$Res>
    implements _$SplitHTTPConfigCopyWith<$Res> {
  __$SplitHTTPConfigCopyWithImpl(this._self, this._then);

  final _SplitHTTPConfig _self;
  final $Res Function(_SplitHTTPConfig) _then;

/// Create a copy of SplitHTTPConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? host = freezed,Object? path = freezed,Object? mode = freezed,Object? headers = freezed,Object? xPaddingBytes = freezed,Object? xPaddingObfsMode = freezed,Object? xPaddingKey = freezed,Object? xPaddingHeader = freezed,Object? xPaddingPlacement = freezed,Object? xPaddingMethod = freezed,Object? uplinkHTTPMethod = freezed,Object? sessionPlacement = freezed,Object? sessionKey = freezed,Object? seqPlacement = freezed,Object? seqKey = freezed,Object? uplinkDataPlacement = freezed,Object? uplinkDataKey = freezed,Object? uplinkChunkSize = freezed,Object? noGRPCHeader = freezed,Object? noSSEHeader = freezed,Object? scMaxEachPostBytes = freezed,Object? scMinPostsIntervalMs = freezed,Object? scMaxBufferedPosts = freezed,Object? scStreamUpServerSecs = freezed,Object? serverMaxHeaderBytes = freezed,Object? xmux = freezed,Object? downloadSettings = freezed,Object? extra = freezed,}) {
  return _then(_SplitHTTPConfig(
host: freezed == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,mode: freezed == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as SplitHTTPMode?,headers: freezed == headers ? _self._headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,xPaddingBytes: freezed == xPaddingBytes ? _self.xPaddingBytes : xPaddingBytes // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,xPaddingObfsMode: freezed == xPaddingObfsMode ? _self.xPaddingObfsMode : xPaddingObfsMode // ignore: cast_nullable_to_non_nullable
as bool?,xPaddingKey: freezed == xPaddingKey ? _self.xPaddingKey : xPaddingKey // ignore: cast_nullable_to_non_nullable
as String?,xPaddingHeader: freezed == xPaddingHeader ? _self.xPaddingHeader : xPaddingHeader // ignore: cast_nullable_to_non_nullable
as String?,xPaddingPlacement: freezed == xPaddingPlacement ? _self.xPaddingPlacement : xPaddingPlacement // ignore: cast_nullable_to_non_nullable
as SplitHTTPPlacement?,xPaddingMethod: freezed == xPaddingMethod ? _self.xPaddingMethod : xPaddingMethod // ignore: cast_nullable_to_non_nullable
as SplitHTTPPaddingMethod?,uplinkHTTPMethod: freezed == uplinkHTTPMethod ? _self.uplinkHTTPMethod : uplinkHTTPMethod // ignore: cast_nullable_to_non_nullable
as String?,sessionPlacement: freezed == sessionPlacement ? _self.sessionPlacement : sessionPlacement // ignore: cast_nullable_to_non_nullable
as SplitHTTPPlacement?,sessionKey: freezed == sessionKey ? _self.sessionKey : sessionKey // ignore: cast_nullable_to_non_nullable
as String?,seqPlacement: freezed == seqPlacement ? _self.seqPlacement : seqPlacement // ignore: cast_nullable_to_non_nullable
as SplitHTTPPlacement?,seqKey: freezed == seqKey ? _self.seqKey : seqKey // ignore: cast_nullable_to_non_nullable
as String?,uplinkDataPlacement: freezed == uplinkDataPlacement ? _self.uplinkDataPlacement : uplinkDataPlacement // ignore: cast_nullable_to_non_nullable
as SplitHTTPPlacement?,uplinkDataKey: freezed == uplinkDataKey ? _self.uplinkDataKey : uplinkDataKey // ignore: cast_nullable_to_non_nullable
as String?,uplinkChunkSize: freezed == uplinkChunkSize ? _self.uplinkChunkSize : uplinkChunkSize // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,noGRPCHeader: freezed == noGRPCHeader ? _self.noGRPCHeader : noGRPCHeader // ignore: cast_nullable_to_non_nullable
as bool?,noSSEHeader: freezed == noSSEHeader ? _self.noSSEHeader : noSSEHeader // ignore: cast_nullable_to_non_nullable
as bool?,scMaxEachPostBytes: freezed == scMaxEachPostBytes ? _self.scMaxEachPostBytes : scMaxEachPostBytes // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,scMinPostsIntervalMs: freezed == scMinPostsIntervalMs ? _self.scMinPostsIntervalMs : scMinPostsIntervalMs // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,scMaxBufferedPosts: freezed == scMaxBufferedPosts ? _self.scMaxBufferedPosts : scMaxBufferedPosts // ignore: cast_nullable_to_non_nullable
as int?,scStreamUpServerSecs: freezed == scStreamUpServerSecs ? _self.scStreamUpServerSecs : scStreamUpServerSecs // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,serverMaxHeaderBytes: freezed == serverMaxHeaderBytes ? _self.serverMaxHeaderBytes : serverMaxHeaderBytes // ignore: cast_nullable_to_non_nullable
as int?,xmux: freezed == xmux ? _self.xmux : xmux // ignore: cast_nullable_to_non_nullable
as XmuxConfig?,downloadSettings: freezed == downloadSettings ? _self.downloadSettings : downloadSettings // ignore: cast_nullable_to_non_nullable
as StreamConfig?,extra: freezed == extra ? _self._extra : extra // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>?,
  ));
}

/// Create a copy of SplitHTTPConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get xPaddingBytes {
    if (_self.xPaddingBytes == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.xPaddingBytes!, (value) {
    return _then(_self.copyWith(xPaddingBytes: value));
  });
}/// Create a copy of SplitHTTPConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get uplinkChunkSize {
    if (_self.uplinkChunkSize == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.uplinkChunkSize!, (value) {
    return _then(_self.copyWith(uplinkChunkSize: value));
  });
}/// Create a copy of SplitHTTPConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get scMaxEachPostBytes {
    if (_self.scMaxEachPostBytes == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.scMaxEachPostBytes!, (value) {
    return _then(_self.copyWith(scMaxEachPostBytes: value));
  });
}/// Create a copy of SplitHTTPConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get scMinPostsIntervalMs {
    if (_self.scMinPostsIntervalMs == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.scMinPostsIntervalMs!, (value) {
    return _then(_self.copyWith(scMinPostsIntervalMs: value));
  });
}/// Create a copy of SplitHTTPConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get scStreamUpServerSecs {
    if (_self.scStreamUpServerSecs == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.scStreamUpServerSecs!, (value) {
    return _then(_self.copyWith(scStreamUpServerSecs: value));
  });
}/// Create a copy of SplitHTTPConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XmuxConfigCopyWith<$Res>? get xmux {
    if (_self.xmux == null) {
    return null;
  }

  return $XmuxConfigCopyWith<$Res>(_self.xmux!, (value) {
    return _then(_self.copyWith(xmux: value));
  });
}/// Create a copy of SplitHTTPConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StreamConfigCopyWith<$Res>? get downloadSettings {
    if (_self.downloadSettings == null) {
    return null;
  }

  return $StreamConfigCopyWith<$Res>(_self.downloadSettings!, (value) {
    return _then(_self.copyWith(downloadSettings: value));
  });
}
}

/// @nodoc
mixin _$StreamConfig {

 XrayAddress? get address; int? get port; TransportProtocol? get network; SecurityProtocol? get security; FinalMask? get finalmask; TCPConfig? get rawSettings; TCPConfig? get tcpSettings; SplitHTTPConfig? get xhttpSettings; KCPConfig? get kcpSettings; WebSocketConfig? get wsSettings; HttpUpgradeConfig? get httpupgradeSettings; SplitHTTPConfig? get splithttpSettings; GRPCConfig? get grpcSettings; HysteriaConfig? get hysteriaSettings; TLSConfig? get tlsSettings; REALITYConfig? get realitySettings; SocketConfig? get sockopt;
/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StreamConfigCopyWith<StreamConfig> get copyWith => _$StreamConfigCopyWithImpl<StreamConfig>(this as StreamConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StreamConfig&&(identical(other.address, address) || other.address == address)&&(identical(other.port, port) || other.port == port)&&(identical(other.network, network) || other.network == network)&&(identical(other.security, security) || other.security == security)&&(identical(other.finalmask, finalmask) || other.finalmask == finalmask)&&(identical(other.rawSettings, rawSettings) || other.rawSettings == rawSettings)&&(identical(other.tcpSettings, tcpSettings) || other.tcpSettings == tcpSettings)&&(identical(other.xhttpSettings, xhttpSettings) || other.xhttpSettings == xhttpSettings)&&(identical(other.kcpSettings, kcpSettings) || other.kcpSettings == kcpSettings)&&(identical(other.wsSettings, wsSettings) || other.wsSettings == wsSettings)&&(identical(other.httpupgradeSettings, httpupgradeSettings) || other.httpupgradeSettings == httpupgradeSettings)&&(identical(other.splithttpSettings, splithttpSettings) || other.splithttpSettings == splithttpSettings)&&(identical(other.grpcSettings, grpcSettings) || other.grpcSettings == grpcSettings)&&(identical(other.hysteriaSettings, hysteriaSettings) || other.hysteriaSettings == hysteriaSettings)&&(identical(other.tlsSettings, tlsSettings) || other.tlsSettings == tlsSettings)&&(identical(other.realitySettings, realitySettings) || other.realitySettings == realitySettings)&&(identical(other.sockopt, sockopt) || other.sockopt == sockopt));
}


@override
int get hashCode => Object.hash(runtimeType,address,port,network,security,finalmask,rawSettings,tcpSettings,xhttpSettings,kcpSettings,wsSettings,httpupgradeSettings,splithttpSettings,grpcSettings,hysteriaSettings,tlsSettings,realitySettings,sockopt);

@override
String toString() {
  return 'StreamConfig(address: $address, port: $port, network: $network, security: $security, finalmask: $finalmask, rawSettings: $rawSettings, tcpSettings: $tcpSettings, xhttpSettings: $xhttpSettings, kcpSettings: $kcpSettings, wsSettings: $wsSettings, httpupgradeSettings: $httpupgradeSettings, splithttpSettings: $splithttpSettings, grpcSettings: $grpcSettings, hysteriaSettings: $hysteriaSettings, tlsSettings: $tlsSettings, realitySettings: $realitySettings, sockopt: $sockopt)';
}


}

/// @nodoc
abstract mixin class $StreamConfigCopyWith<$Res>  {
  factory $StreamConfigCopyWith(StreamConfig value, $Res Function(StreamConfig) _then) = _$StreamConfigCopyWithImpl;
@useResult
$Res call({
 XrayAddress? address, int? port, TransportProtocol? network, SecurityProtocol? security, FinalMask? finalmask, TCPConfig? rawSettings, TCPConfig? tcpSettings, SplitHTTPConfig? xhttpSettings, KCPConfig? kcpSettings, WebSocketConfig? wsSettings, HttpUpgradeConfig? httpupgradeSettings, SplitHTTPConfig? splithttpSettings, GRPCConfig? grpcSettings, HysteriaConfig? hysteriaSettings, TLSConfig? tlsSettings, REALITYConfig? realitySettings, SocketConfig? sockopt
});


$FinalMaskCopyWith<$Res>? get finalmask;$TCPConfigCopyWith<$Res>? get rawSettings;$TCPConfigCopyWith<$Res>? get tcpSettings;$SplitHTTPConfigCopyWith<$Res>? get xhttpSettings;$KCPConfigCopyWith<$Res>? get kcpSettings;$WebSocketConfigCopyWith<$Res>? get wsSettings;$HttpUpgradeConfigCopyWith<$Res>? get httpupgradeSettings;$SplitHTTPConfigCopyWith<$Res>? get splithttpSettings;$GRPCConfigCopyWith<$Res>? get grpcSettings;$HysteriaConfigCopyWith<$Res>? get hysteriaSettings;$TLSConfigCopyWith<$Res>? get tlsSettings;$REALITYConfigCopyWith<$Res>? get realitySettings;$SocketConfigCopyWith<$Res>? get sockopt;

}
/// @nodoc
class _$StreamConfigCopyWithImpl<$Res>
    implements $StreamConfigCopyWith<$Res> {
  _$StreamConfigCopyWithImpl(this._self, this._then);

  final StreamConfig _self;
  final $Res Function(StreamConfig) _then;

/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = freezed,Object? port = freezed,Object? network = freezed,Object? security = freezed,Object? finalmask = freezed,Object? rawSettings = freezed,Object? tcpSettings = freezed,Object? xhttpSettings = freezed,Object? kcpSettings = freezed,Object? wsSettings = freezed,Object? httpupgradeSettings = freezed,Object? splithttpSettings = freezed,Object? grpcSettings = freezed,Object? hysteriaSettings = freezed,Object? tlsSettings = freezed,Object? realitySettings = freezed,Object? sockopt = freezed,}) {
  return _then(_self.copyWith(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as XrayAddress?,port: freezed == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int?,network: freezed == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as TransportProtocol?,security: freezed == security ? _self.security : security // ignore: cast_nullable_to_non_nullable
as SecurityProtocol?,finalmask: freezed == finalmask ? _self.finalmask : finalmask // ignore: cast_nullable_to_non_nullable
as FinalMask?,rawSettings: freezed == rawSettings ? _self.rawSettings : rawSettings // ignore: cast_nullable_to_non_nullable
as TCPConfig?,tcpSettings: freezed == tcpSettings ? _self.tcpSettings : tcpSettings // ignore: cast_nullable_to_non_nullable
as TCPConfig?,xhttpSettings: freezed == xhttpSettings ? _self.xhttpSettings : xhttpSettings // ignore: cast_nullable_to_non_nullable
as SplitHTTPConfig?,kcpSettings: freezed == kcpSettings ? _self.kcpSettings : kcpSettings // ignore: cast_nullable_to_non_nullable
as KCPConfig?,wsSettings: freezed == wsSettings ? _self.wsSettings : wsSettings // ignore: cast_nullable_to_non_nullable
as WebSocketConfig?,httpupgradeSettings: freezed == httpupgradeSettings ? _self.httpupgradeSettings : httpupgradeSettings // ignore: cast_nullable_to_non_nullable
as HttpUpgradeConfig?,splithttpSettings: freezed == splithttpSettings ? _self.splithttpSettings : splithttpSettings // ignore: cast_nullable_to_non_nullable
as SplitHTTPConfig?,grpcSettings: freezed == grpcSettings ? _self.grpcSettings : grpcSettings // ignore: cast_nullable_to_non_nullable
as GRPCConfig?,hysteriaSettings: freezed == hysteriaSettings ? _self.hysteriaSettings : hysteriaSettings // ignore: cast_nullable_to_non_nullable
as HysteriaConfig?,tlsSettings: freezed == tlsSettings ? _self.tlsSettings : tlsSettings // ignore: cast_nullable_to_non_nullable
as TLSConfig?,realitySettings: freezed == realitySettings ? _self.realitySettings : realitySettings // ignore: cast_nullable_to_non_nullable
as REALITYConfig?,sockopt: freezed == sockopt ? _self.sockopt : sockopt // ignore: cast_nullable_to_non_nullable
as SocketConfig?,
  ));
}
/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinalMaskCopyWith<$Res>? get finalmask {
    if (_self.finalmask == null) {
    return null;
  }

  return $FinalMaskCopyWith<$Res>(_self.finalmask!, (value) {
    return _then(_self.copyWith(finalmask: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TCPConfigCopyWith<$Res>? get rawSettings {
    if (_self.rawSettings == null) {
    return null;
  }

  return $TCPConfigCopyWith<$Res>(_self.rawSettings!, (value) {
    return _then(_self.copyWith(rawSettings: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TCPConfigCopyWith<$Res>? get tcpSettings {
    if (_self.tcpSettings == null) {
    return null;
  }

  return $TCPConfigCopyWith<$Res>(_self.tcpSettings!, (value) {
    return _then(_self.copyWith(tcpSettings: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SplitHTTPConfigCopyWith<$Res>? get xhttpSettings {
    if (_self.xhttpSettings == null) {
    return null;
  }

  return $SplitHTTPConfigCopyWith<$Res>(_self.xhttpSettings!, (value) {
    return _then(_self.copyWith(xhttpSettings: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KCPConfigCopyWith<$Res>? get kcpSettings {
    if (_self.kcpSettings == null) {
    return null;
  }

  return $KCPConfigCopyWith<$Res>(_self.kcpSettings!, (value) {
    return _then(_self.copyWith(kcpSettings: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WebSocketConfigCopyWith<$Res>? get wsSettings {
    if (_self.wsSettings == null) {
    return null;
  }

  return $WebSocketConfigCopyWith<$Res>(_self.wsSettings!, (value) {
    return _then(_self.copyWith(wsSettings: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HttpUpgradeConfigCopyWith<$Res>? get httpupgradeSettings {
    if (_self.httpupgradeSettings == null) {
    return null;
  }

  return $HttpUpgradeConfigCopyWith<$Res>(_self.httpupgradeSettings!, (value) {
    return _then(_self.copyWith(httpupgradeSettings: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SplitHTTPConfigCopyWith<$Res>? get splithttpSettings {
    if (_self.splithttpSettings == null) {
    return null;
  }

  return $SplitHTTPConfigCopyWith<$Res>(_self.splithttpSettings!, (value) {
    return _then(_self.copyWith(splithttpSettings: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GRPCConfigCopyWith<$Res>? get grpcSettings {
    if (_self.grpcSettings == null) {
    return null;
  }

  return $GRPCConfigCopyWith<$Res>(_self.grpcSettings!, (value) {
    return _then(_self.copyWith(grpcSettings: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HysteriaConfigCopyWith<$Res>? get hysteriaSettings {
    if (_self.hysteriaSettings == null) {
    return null;
  }

  return $HysteriaConfigCopyWith<$Res>(_self.hysteriaSettings!, (value) {
    return _then(_self.copyWith(hysteriaSettings: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TLSConfigCopyWith<$Res>? get tlsSettings {
    if (_self.tlsSettings == null) {
    return null;
  }

  return $TLSConfigCopyWith<$Res>(_self.tlsSettings!, (value) {
    return _then(_self.copyWith(tlsSettings: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$REALITYConfigCopyWith<$Res>? get realitySettings {
    if (_self.realitySettings == null) {
    return null;
  }

  return $REALITYConfigCopyWith<$Res>(_self.realitySettings!, (value) {
    return _then(_self.copyWith(realitySettings: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SocketConfigCopyWith<$Res>? get sockopt {
    if (_self.sockopt == null) {
    return null;
  }

  return $SocketConfigCopyWith<$Res>(_self.sockopt!, (value) {
    return _then(_self.copyWith(sockopt: value));
  });
}
}


/// Adds pattern-matching-related methods to [StreamConfig].
extension StreamConfigPatterns on StreamConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StreamConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StreamConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StreamConfig value)  $default,){
final _that = this;
switch (_that) {
case _StreamConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StreamConfig value)?  $default,){
final _that = this;
switch (_that) {
case _StreamConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( XrayAddress? address,  int? port,  TransportProtocol? network,  SecurityProtocol? security,  FinalMask? finalmask,  TCPConfig? rawSettings,  TCPConfig? tcpSettings,  SplitHTTPConfig? xhttpSettings,  KCPConfig? kcpSettings,  WebSocketConfig? wsSettings,  HttpUpgradeConfig? httpupgradeSettings,  SplitHTTPConfig? splithttpSettings,  GRPCConfig? grpcSettings,  HysteriaConfig? hysteriaSettings,  TLSConfig? tlsSettings,  REALITYConfig? realitySettings,  SocketConfig? sockopt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StreamConfig() when $default != null:
return $default(_that.address,_that.port,_that.network,_that.security,_that.finalmask,_that.rawSettings,_that.tcpSettings,_that.xhttpSettings,_that.kcpSettings,_that.wsSettings,_that.httpupgradeSettings,_that.splithttpSettings,_that.grpcSettings,_that.hysteriaSettings,_that.tlsSettings,_that.realitySettings,_that.sockopt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( XrayAddress? address,  int? port,  TransportProtocol? network,  SecurityProtocol? security,  FinalMask? finalmask,  TCPConfig? rawSettings,  TCPConfig? tcpSettings,  SplitHTTPConfig? xhttpSettings,  KCPConfig? kcpSettings,  WebSocketConfig? wsSettings,  HttpUpgradeConfig? httpupgradeSettings,  SplitHTTPConfig? splithttpSettings,  GRPCConfig? grpcSettings,  HysteriaConfig? hysteriaSettings,  TLSConfig? tlsSettings,  REALITYConfig? realitySettings,  SocketConfig? sockopt)  $default,) {final _that = this;
switch (_that) {
case _StreamConfig():
return $default(_that.address,_that.port,_that.network,_that.security,_that.finalmask,_that.rawSettings,_that.tcpSettings,_that.xhttpSettings,_that.kcpSettings,_that.wsSettings,_that.httpupgradeSettings,_that.splithttpSettings,_that.grpcSettings,_that.hysteriaSettings,_that.tlsSettings,_that.realitySettings,_that.sockopt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( XrayAddress? address,  int? port,  TransportProtocol? network,  SecurityProtocol? security,  FinalMask? finalmask,  TCPConfig? rawSettings,  TCPConfig? tcpSettings,  SplitHTTPConfig? xhttpSettings,  KCPConfig? kcpSettings,  WebSocketConfig? wsSettings,  HttpUpgradeConfig? httpupgradeSettings,  SplitHTTPConfig? splithttpSettings,  GRPCConfig? grpcSettings,  HysteriaConfig? hysteriaSettings,  TLSConfig? tlsSettings,  REALITYConfig? realitySettings,  SocketConfig? sockopt)?  $default,) {final _that = this;
switch (_that) {
case _StreamConfig() when $default != null:
return $default(_that.address,_that.port,_that.network,_that.security,_that.finalmask,_that.rawSettings,_that.tcpSettings,_that.xhttpSettings,_that.kcpSettings,_that.wsSettings,_that.httpupgradeSettings,_that.splithttpSettings,_that.grpcSettings,_that.hysteriaSettings,_that.tlsSettings,_that.realitySettings,_that.sockopt);case _:
  return null;

}
}

}

/// @nodoc


class _StreamConfig extends StreamConfig {
  const _StreamConfig({this.address, this.port, this.network, this.security, this.finalmask, this.rawSettings, this.tcpSettings, this.xhttpSettings, this.kcpSettings, this.wsSettings, this.httpupgradeSettings, this.splithttpSettings, this.grpcSettings, this.hysteriaSettings, this.tlsSettings, this.realitySettings, this.sockopt}): super._();
  

@override final  XrayAddress? address;
@override final  int? port;
@override final  TransportProtocol? network;
@override final  SecurityProtocol? security;
@override final  FinalMask? finalmask;
@override final  TCPConfig? rawSettings;
@override final  TCPConfig? tcpSettings;
@override final  SplitHTTPConfig? xhttpSettings;
@override final  KCPConfig? kcpSettings;
@override final  WebSocketConfig? wsSettings;
@override final  HttpUpgradeConfig? httpupgradeSettings;
@override final  SplitHTTPConfig? splithttpSettings;
@override final  GRPCConfig? grpcSettings;
@override final  HysteriaConfig? hysteriaSettings;
@override final  TLSConfig? tlsSettings;
@override final  REALITYConfig? realitySettings;
@override final  SocketConfig? sockopt;

/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StreamConfigCopyWith<_StreamConfig> get copyWith => __$StreamConfigCopyWithImpl<_StreamConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StreamConfig&&(identical(other.address, address) || other.address == address)&&(identical(other.port, port) || other.port == port)&&(identical(other.network, network) || other.network == network)&&(identical(other.security, security) || other.security == security)&&(identical(other.finalmask, finalmask) || other.finalmask == finalmask)&&(identical(other.rawSettings, rawSettings) || other.rawSettings == rawSettings)&&(identical(other.tcpSettings, tcpSettings) || other.tcpSettings == tcpSettings)&&(identical(other.xhttpSettings, xhttpSettings) || other.xhttpSettings == xhttpSettings)&&(identical(other.kcpSettings, kcpSettings) || other.kcpSettings == kcpSettings)&&(identical(other.wsSettings, wsSettings) || other.wsSettings == wsSettings)&&(identical(other.httpupgradeSettings, httpupgradeSettings) || other.httpupgradeSettings == httpupgradeSettings)&&(identical(other.splithttpSettings, splithttpSettings) || other.splithttpSettings == splithttpSettings)&&(identical(other.grpcSettings, grpcSettings) || other.grpcSettings == grpcSettings)&&(identical(other.hysteriaSettings, hysteriaSettings) || other.hysteriaSettings == hysteriaSettings)&&(identical(other.tlsSettings, tlsSettings) || other.tlsSettings == tlsSettings)&&(identical(other.realitySettings, realitySettings) || other.realitySettings == realitySettings)&&(identical(other.sockopt, sockopt) || other.sockopt == sockopt));
}


@override
int get hashCode => Object.hash(runtimeType,address,port,network,security,finalmask,rawSettings,tcpSettings,xhttpSettings,kcpSettings,wsSettings,httpupgradeSettings,splithttpSettings,grpcSettings,hysteriaSettings,tlsSettings,realitySettings,sockopt);

@override
String toString() {
  return 'StreamConfig(address: $address, port: $port, network: $network, security: $security, finalmask: $finalmask, rawSettings: $rawSettings, tcpSettings: $tcpSettings, xhttpSettings: $xhttpSettings, kcpSettings: $kcpSettings, wsSettings: $wsSettings, httpupgradeSettings: $httpupgradeSettings, splithttpSettings: $splithttpSettings, grpcSettings: $grpcSettings, hysteriaSettings: $hysteriaSettings, tlsSettings: $tlsSettings, realitySettings: $realitySettings, sockopt: $sockopt)';
}


}

/// @nodoc
abstract mixin class _$StreamConfigCopyWith<$Res> implements $StreamConfigCopyWith<$Res> {
  factory _$StreamConfigCopyWith(_StreamConfig value, $Res Function(_StreamConfig) _then) = __$StreamConfigCopyWithImpl;
@override @useResult
$Res call({
 XrayAddress? address, int? port, TransportProtocol? network, SecurityProtocol? security, FinalMask? finalmask, TCPConfig? rawSettings, TCPConfig? tcpSettings, SplitHTTPConfig? xhttpSettings, KCPConfig? kcpSettings, WebSocketConfig? wsSettings, HttpUpgradeConfig? httpupgradeSettings, SplitHTTPConfig? splithttpSettings, GRPCConfig? grpcSettings, HysteriaConfig? hysteriaSettings, TLSConfig? tlsSettings, REALITYConfig? realitySettings, SocketConfig? sockopt
});


@override $FinalMaskCopyWith<$Res>? get finalmask;@override $TCPConfigCopyWith<$Res>? get rawSettings;@override $TCPConfigCopyWith<$Res>? get tcpSettings;@override $SplitHTTPConfigCopyWith<$Res>? get xhttpSettings;@override $KCPConfigCopyWith<$Res>? get kcpSettings;@override $WebSocketConfigCopyWith<$Res>? get wsSettings;@override $HttpUpgradeConfigCopyWith<$Res>? get httpupgradeSettings;@override $SplitHTTPConfigCopyWith<$Res>? get splithttpSettings;@override $GRPCConfigCopyWith<$Res>? get grpcSettings;@override $HysteriaConfigCopyWith<$Res>? get hysteriaSettings;@override $TLSConfigCopyWith<$Res>? get tlsSettings;@override $REALITYConfigCopyWith<$Res>? get realitySettings;@override $SocketConfigCopyWith<$Res>? get sockopt;

}
/// @nodoc
class __$StreamConfigCopyWithImpl<$Res>
    implements _$StreamConfigCopyWith<$Res> {
  __$StreamConfigCopyWithImpl(this._self, this._then);

  final _StreamConfig _self;
  final $Res Function(_StreamConfig) _then;

/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = freezed,Object? port = freezed,Object? network = freezed,Object? security = freezed,Object? finalmask = freezed,Object? rawSettings = freezed,Object? tcpSettings = freezed,Object? xhttpSettings = freezed,Object? kcpSettings = freezed,Object? wsSettings = freezed,Object? httpupgradeSettings = freezed,Object? splithttpSettings = freezed,Object? grpcSettings = freezed,Object? hysteriaSettings = freezed,Object? tlsSettings = freezed,Object? realitySettings = freezed,Object? sockopt = freezed,}) {
  return _then(_StreamConfig(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as XrayAddress?,port: freezed == port ? _self.port : port // ignore: cast_nullable_to_non_nullable
as int?,network: freezed == network ? _self.network : network // ignore: cast_nullable_to_non_nullable
as TransportProtocol?,security: freezed == security ? _self.security : security // ignore: cast_nullable_to_non_nullable
as SecurityProtocol?,finalmask: freezed == finalmask ? _self.finalmask : finalmask // ignore: cast_nullable_to_non_nullable
as FinalMask?,rawSettings: freezed == rawSettings ? _self.rawSettings : rawSettings // ignore: cast_nullable_to_non_nullable
as TCPConfig?,tcpSettings: freezed == tcpSettings ? _self.tcpSettings : tcpSettings // ignore: cast_nullable_to_non_nullable
as TCPConfig?,xhttpSettings: freezed == xhttpSettings ? _self.xhttpSettings : xhttpSettings // ignore: cast_nullable_to_non_nullable
as SplitHTTPConfig?,kcpSettings: freezed == kcpSettings ? _self.kcpSettings : kcpSettings // ignore: cast_nullable_to_non_nullable
as KCPConfig?,wsSettings: freezed == wsSettings ? _self.wsSettings : wsSettings // ignore: cast_nullable_to_non_nullable
as WebSocketConfig?,httpupgradeSettings: freezed == httpupgradeSettings ? _self.httpupgradeSettings : httpupgradeSettings // ignore: cast_nullable_to_non_nullable
as HttpUpgradeConfig?,splithttpSettings: freezed == splithttpSettings ? _self.splithttpSettings : splithttpSettings // ignore: cast_nullable_to_non_nullable
as SplitHTTPConfig?,grpcSettings: freezed == grpcSettings ? _self.grpcSettings : grpcSettings // ignore: cast_nullable_to_non_nullable
as GRPCConfig?,hysteriaSettings: freezed == hysteriaSettings ? _self.hysteriaSettings : hysteriaSettings // ignore: cast_nullable_to_non_nullable
as HysteriaConfig?,tlsSettings: freezed == tlsSettings ? _self.tlsSettings : tlsSettings // ignore: cast_nullable_to_non_nullable
as TLSConfig?,realitySettings: freezed == realitySettings ? _self.realitySettings : realitySettings // ignore: cast_nullable_to_non_nullable
as REALITYConfig?,sockopt: freezed == sockopt ? _self.sockopt : sockopt // ignore: cast_nullable_to_non_nullable
as SocketConfig?,
  ));
}

/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FinalMaskCopyWith<$Res>? get finalmask {
    if (_self.finalmask == null) {
    return null;
  }

  return $FinalMaskCopyWith<$Res>(_self.finalmask!, (value) {
    return _then(_self.copyWith(finalmask: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TCPConfigCopyWith<$Res>? get rawSettings {
    if (_self.rawSettings == null) {
    return null;
  }

  return $TCPConfigCopyWith<$Res>(_self.rawSettings!, (value) {
    return _then(_self.copyWith(rawSettings: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TCPConfigCopyWith<$Res>? get tcpSettings {
    if (_self.tcpSettings == null) {
    return null;
  }

  return $TCPConfigCopyWith<$Res>(_self.tcpSettings!, (value) {
    return _then(_self.copyWith(tcpSettings: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SplitHTTPConfigCopyWith<$Res>? get xhttpSettings {
    if (_self.xhttpSettings == null) {
    return null;
  }

  return $SplitHTTPConfigCopyWith<$Res>(_self.xhttpSettings!, (value) {
    return _then(_self.copyWith(xhttpSettings: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$KCPConfigCopyWith<$Res>? get kcpSettings {
    if (_self.kcpSettings == null) {
    return null;
  }

  return $KCPConfigCopyWith<$Res>(_self.kcpSettings!, (value) {
    return _then(_self.copyWith(kcpSettings: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$WebSocketConfigCopyWith<$Res>? get wsSettings {
    if (_self.wsSettings == null) {
    return null;
  }

  return $WebSocketConfigCopyWith<$Res>(_self.wsSettings!, (value) {
    return _then(_self.copyWith(wsSettings: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HttpUpgradeConfigCopyWith<$Res>? get httpupgradeSettings {
    if (_self.httpupgradeSettings == null) {
    return null;
  }

  return $HttpUpgradeConfigCopyWith<$Res>(_self.httpupgradeSettings!, (value) {
    return _then(_self.copyWith(httpupgradeSettings: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SplitHTTPConfigCopyWith<$Res>? get splithttpSettings {
    if (_self.splithttpSettings == null) {
    return null;
  }

  return $SplitHTTPConfigCopyWith<$Res>(_self.splithttpSettings!, (value) {
    return _then(_self.copyWith(splithttpSettings: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GRPCConfigCopyWith<$Res>? get grpcSettings {
    if (_self.grpcSettings == null) {
    return null;
  }

  return $GRPCConfigCopyWith<$Res>(_self.grpcSettings!, (value) {
    return _then(_self.copyWith(grpcSettings: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HysteriaConfigCopyWith<$Res>? get hysteriaSettings {
    if (_self.hysteriaSettings == null) {
    return null;
  }

  return $HysteriaConfigCopyWith<$Res>(_self.hysteriaSettings!, (value) {
    return _then(_self.copyWith(hysteriaSettings: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TLSConfigCopyWith<$Res>? get tlsSettings {
    if (_self.tlsSettings == null) {
    return null;
  }

  return $TLSConfigCopyWith<$Res>(_self.tlsSettings!, (value) {
    return _then(_self.copyWith(tlsSettings: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$REALITYConfigCopyWith<$Res>? get realitySettings {
    if (_self.realitySettings == null) {
    return null;
  }

  return $REALITYConfigCopyWith<$Res>(_self.realitySettings!, (value) {
    return _then(_self.copyWith(realitySettings: value));
  });
}/// Create a copy of StreamConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SocketConfigCopyWith<$Res>? get sockopt {
    if (_self.sockopt == null) {
    return null;
  }

  return $SocketConfigCopyWith<$Res>(_self.sockopt!, (value) {
    return _then(_self.copyWith(sockopt: value));
  });
}
}

/// @nodoc
mixin _$Sudoku {

 String? get password;@JsonKey(name: 'ascii') String? get ascii; String? get customTable;@JsonKey(name: 'custom_table') String? get legacyCustomTable; List<String>? get customTables;@JsonKey(name: 'custom_tables') List<String>? get legacyCustomSets; int? get paddingMin;@JsonKey(name: 'padding_min') int? get legacyPaddingMin; int? get paddingMax;@JsonKey(name: 'padding_max') int? get legacyPaddingMax;
/// Create a copy of Sudoku
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SudokuCopyWith<Sudoku> get copyWith => _$SudokuCopyWithImpl<Sudoku>(this as Sudoku, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sudoku&&(identical(other.password, password) || other.password == password)&&(identical(other.ascii, ascii) || other.ascii == ascii)&&(identical(other.customTable, customTable) || other.customTable == customTable)&&(identical(other.legacyCustomTable, legacyCustomTable) || other.legacyCustomTable == legacyCustomTable)&&const DeepCollectionEquality().equals(other.customTables, customTables)&&const DeepCollectionEquality().equals(other.legacyCustomSets, legacyCustomSets)&&(identical(other.paddingMin, paddingMin) || other.paddingMin == paddingMin)&&(identical(other.legacyPaddingMin, legacyPaddingMin) || other.legacyPaddingMin == legacyPaddingMin)&&(identical(other.paddingMax, paddingMax) || other.paddingMax == paddingMax)&&(identical(other.legacyPaddingMax, legacyPaddingMax) || other.legacyPaddingMax == legacyPaddingMax));
}


@override
int get hashCode => Object.hash(runtimeType,password,ascii,customTable,legacyCustomTable,const DeepCollectionEquality().hash(customTables),const DeepCollectionEquality().hash(legacyCustomSets),paddingMin,legacyPaddingMin,paddingMax,legacyPaddingMax);

@override
String toString() {
  return 'Sudoku(password: $password, ascii: $ascii, customTable: $customTable, legacyCustomTable: $legacyCustomTable, customTables: $customTables, legacyCustomSets: $legacyCustomSets, paddingMin: $paddingMin, legacyPaddingMin: $legacyPaddingMin, paddingMax: $paddingMax, legacyPaddingMax: $legacyPaddingMax)';
}


}

/// @nodoc
abstract mixin class $SudokuCopyWith<$Res>  {
  factory $SudokuCopyWith(Sudoku value, $Res Function(Sudoku) _then) = _$SudokuCopyWithImpl;
@useResult
$Res call({
 String? password,@JsonKey(name: 'ascii') String? ascii, String? customTable,@JsonKey(name: 'custom_table') String? legacyCustomTable, List<String>? customTables,@JsonKey(name: 'custom_tables') List<String>? legacyCustomSets, int? paddingMin,@JsonKey(name: 'padding_min') int? legacyPaddingMin, int? paddingMax,@JsonKey(name: 'padding_max') int? legacyPaddingMax
});




}
/// @nodoc
class _$SudokuCopyWithImpl<$Res>
    implements $SudokuCopyWith<$Res> {
  _$SudokuCopyWithImpl(this._self, this._then);

  final Sudoku _self;
  final $Res Function(Sudoku) _then;

/// Create a copy of Sudoku
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? password = freezed,Object? ascii = freezed,Object? customTable = freezed,Object? legacyCustomTable = freezed,Object? customTables = freezed,Object? legacyCustomSets = freezed,Object? paddingMin = freezed,Object? legacyPaddingMin = freezed,Object? paddingMax = freezed,Object? legacyPaddingMax = freezed,}) {
  return _then(_self.copyWith(
password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,ascii: freezed == ascii ? _self.ascii : ascii // ignore: cast_nullable_to_non_nullable
as String?,customTable: freezed == customTable ? _self.customTable : customTable // ignore: cast_nullable_to_non_nullable
as String?,legacyCustomTable: freezed == legacyCustomTable ? _self.legacyCustomTable : legacyCustomTable // ignore: cast_nullable_to_non_nullable
as String?,customTables: freezed == customTables ? _self.customTables : customTables // ignore: cast_nullable_to_non_nullable
as List<String>?,legacyCustomSets: freezed == legacyCustomSets ? _self.legacyCustomSets : legacyCustomSets // ignore: cast_nullable_to_non_nullable
as List<String>?,paddingMin: freezed == paddingMin ? _self.paddingMin : paddingMin // ignore: cast_nullable_to_non_nullable
as int?,legacyPaddingMin: freezed == legacyPaddingMin ? _self.legacyPaddingMin : legacyPaddingMin // ignore: cast_nullable_to_non_nullable
as int?,paddingMax: freezed == paddingMax ? _self.paddingMax : paddingMax // ignore: cast_nullable_to_non_nullable
as int?,legacyPaddingMax: freezed == legacyPaddingMax ? _self.legacyPaddingMax : legacyPaddingMax // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Sudoku].
extension SudokuPatterns on Sudoku {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Sudoku value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Sudoku() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Sudoku value)  $default,){
final _that = this;
switch (_that) {
case _Sudoku():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Sudoku value)?  $default,){
final _that = this;
switch (_that) {
case _Sudoku() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? password, @JsonKey(name: 'ascii')  String? ascii,  String? customTable, @JsonKey(name: 'custom_table')  String? legacyCustomTable,  List<String>? customTables, @JsonKey(name: 'custom_tables')  List<String>? legacyCustomSets,  int? paddingMin, @JsonKey(name: 'padding_min')  int? legacyPaddingMin,  int? paddingMax, @JsonKey(name: 'padding_max')  int? legacyPaddingMax)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Sudoku() when $default != null:
return $default(_that.password,_that.ascii,_that.customTable,_that.legacyCustomTable,_that.customTables,_that.legacyCustomSets,_that.paddingMin,_that.legacyPaddingMin,_that.paddingMax,_that.legacyPaddingMax);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? password, @JsonKey(name: 'ascii')  String? ascii,  String? customTable, @JsonKey(name: 'custom_table')  String? legacyCustomTable,  List<String>? customTables, @JsonKey(name: 'custom_tables')  List<String>? legacyCustomSets,  int? paddingMin, @JsonKey(name: 'padding_min')  int? legacyPaddingMin,  int? paddingMax, @JsonKey(name: 'padding_max')  int? legacyPaddingMax)  $default,) {final _that = this;
switch (_that) {
case _Sudoku():
return $default(_that.password,_that.ascii,_that.customTable,_that.legacyCustomTable,_that.customTables,_that.legacyCustomSets,_that.paddingMin,_that.legacyPaddingMin,_that.paddingMax,_that.legacyPaddingMax);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? password, @JsonKey(name: 'ascii')  String? ascii,  String? customTable, @JsonKey(name: 'custom_table')  String? legacyCustomTable,  List<String>? customTables, @JsonKey(name: 'custom_tables')  List<String>? legacyCustomSets,  int? paddingMin, @JsonKey(name: 'padding_min')  int? legacyPaddingMin,  int? paddingMax, @JsonKey(name: 'padding_max')  int? legacyPaddingMax)?  $default,) {final _that = this;
switch (_that) {
case _Sudoku() when $default != null:
return $default(_that.password,_that.ascii,_that.customTable,_that.legacyCustomTable,_that.customTables,_that.legacyCustomSets,_that.paddingMin,_that.legacyPaddingMin,_that.paddingMax,_that.legacyPaddingMax);case _:
  return null;

}
}

}

/// @nodoc


class _Sudoku extends Sudoku {
  const _Sudoku({this.password, @JsonKey(name: 'ascii') this.ascii, this.customTable, @JsonKey(name: 'custom_table') this.legacyCustomTable, final  List<String>? customTables, @JsonKey(name: 'custom_tables') final  List<String>? legacyCustomSets, this.paddingMin, @JsonKey(name: 'padding_min') this.legacyPaddingMin, this.paddingMax, @JsonKey(name: 'padding_max') this.legacyPaddingMax}): _customTables = customTables,_legacyCustomSets = legacyCustomSets,super._();
  

@override final  String? password;
@override@JsonKey(name: 'ascii') final  String? ascii;
@override final  String? customTable;
@override@JsonKey(name: 'custom_table') final  String? legacyCustomTable;
 final  List<String>? _customTables;
@override List<String>? get customTables {
  final value = _customTables;
  if (value == null) return null;
  if (_customTables is EqualUnmodifiableListView) return _customTables;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _legacyCustomSets;
@override@JsonKey(name: 'custom_tables') List<String>? get legacyCustomSets {
  final value = _legacyCustomSets;
  if (value == null) return null;
  if (_legacyCustomSets is EqualUnmodifiableListView) return _legacyCustomSets;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? paddingMin;
@override@JsonKey(name: 'padding_min') final  int? legacyPaddingMin;
@override final  int? paddingMax;
@override@JsonKey(name: 'padding_max') final  int? legacyPaddingMax;

/// Create a copy of Sudoku
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SudokuCopyWith<_Sudoku> get copyWith => __$SudokuCopyWithImpl<_Sudoku>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sudoku&&(identical(other.password, password) || other.password == password)&&(identical(other.ascii, ascii) || other.ascii == ascii)&&(identical(other.customTable, customTable) || other.customTable == customTable)&&(identical(other.legacyCustomTable, legacyCustomTable) || other.legacyCustomTable == legacyCustomTable)&&const DeepCollectionEquality().equals(other._customTables, _customTables)&&const DeepCollectionEquality().equals(other._legacyCustomSets, _legacyCustomSets)&&(identical(other.paddingMin, paddingMin) || other.paddingMin == paddingMin)&&(identical(other.legacyPaddingMin, legacyPaddingMin) || other.legacyPaddingMin == legacyPaddingMin)&&(identical(other.paddingMax, paddingMax) || other.paddingMax == paddingMax)&&(identical(other.legacyPaddingMax, legacyPaddingMax) || other.legacyPaddingMax == legacyPaddingMax));
}


@override
int get hashCode => Object.hash(runtimeType,password,ascii,customTable,legacyCustomTable,const DeepCollectionEquality().hash(_customTables),const DeepCollectionEquality().hash(_legacyCustomSets),paddingMin,legacyPaddingMin,paddingMax,legacyPaddingMax);

@override
String toString() {
  return 'Sudoku(password: $password, ascii: $ascii, customTable: $customTable, legacyCustomTable: $legacyCustomTable, customTables: $customTables, legacyCustomSets: $legacyCustomSets, paddingMin: $paddingMin, legacyPaddingMin: $legacyPaddingMin, paddingMax: $paddingMax, legacyPaddingMax: $legacyPaddingMax)';
}


}

/// @nodoc
abstract mixin class _$SudokuCopyWith<$Res> implements $SudokuCopyWith<$Res> {
  factory _$SudokuCopyWith(_Sudoku value, $Res Function(_Sudoku) _then) = __$SudokuCopyWithImpl;
@override @useResult
$Res call({
 String? password,@JsonKey(name: 'ascii') String? ascii, String? customTable,@JsonKey(name: 'custom_table') String? legacyCustomTable, List<String>? customTables,@JsonKey(name: 'custom_tables') List<String>? legacyCustomSets, int? paddingMin,@JsonKey(name: 'padding_min') int? legacyPaddingMin, int? paddingMax,@JsonKey(name: 'padding_max') int? legacyPaddingMax
});




}
/// @nodoc
class __$SudokuCopyWithImpl<$Res>
    implements _$SudokuCopyWith<$Res> {
  __$SudokuCopyWithImpl(this._self, this._then);

  final _Sudoku _self;
  final $Res Function(_Sudoku) _then;

/// Create a copy of Sudoku
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? password = freezed,Object? ascii = freezed,Object? customTable = freezed,Object? legacyCustomTable = freezed,Object? customTables = freezed,Object? legacyCustomSets = freezed,Object? paddingMin = freezed,Object? legacyPaddingMin = freezed,Object? paddingMax = freezed,Object? legacyPaddingMax = freezed,}) {
  return _then(_Sudoku(
password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,ascii: freezed == ascii ? _self.ascii : ascii // ignore: cast_nullable_to_non_nullable
as String?,customTable: freezed == customTable ? _self.customTable : customTable // ignore: cast_nullable_to_non_nullable
as String?,legacyCustomTable: freezed == legacyCustomTable ? _self.legacyCustomTable : legacyCustomTable // ignore: cast_nullable_to_non_nullable
as String?,customTables: freezed == customTables ? _self._customTables : customTables // ignore: cast_nullable_to_non_nullable
as List<String>?,legacyCustomSets: freezed == legacyCustomSets ? _self._legacyCustomSets : legacyCustomSets // ignore: cast_nullable_to_non_nullable
as List<String>?,paddingMin: freezed == paddingMin ? _self.paddingMin : paddingMin // ignore: cast_nullable_to_non_nullable
as int?,legacyPaddingMin: freezed == legacyPaddingMin ? _self.legacyPaddingMin : legacyPaddingMin // ignore: cast_nullable_to_non_nullable
as int?,paddingMax: freezed == paddingMax ? _self.paddingMax : paddingMax // ignore: cast_nullable_to_non_nullable
as int?,legacyPaddingMax: freezed == legacyPaddingMax ? _self.legacyPaddingMax : legacyPaddingMax // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$TCPConfig {

 TCPHeaderConfig? get header; bool? get acceptProxyProtocol;
/// Create a copy of TCPConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TCPConfigCopyWith<TCPConfig> get copyWith => _$TCPConfigCopyWithImpl<TCPConfig>(this as TCPConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TCPConfig&&(identical(other.header, header) || other.header == header)&&(identical(other.acceptProxyProtocol, acceptProxyProtocol) || other.acceptProxyProtocol == acceptProxyProtocol));
}


@override
int get hashCode => Object.hash(runtimeType,header,acceptProxyProtocol);

@override
String toString() {
  return 'TCPConfig(header: $header, acceptProxyProtocol: $acceptProxyProtocol)';
}


}

/// @nodoc
abstract mixin class $TCPConfigCopyWith<$Res>  {
  factory $TCPConfigCopyWith(TCPConfig value, $Res Function(TCPConfig) _then) = _$TCPConfigCopyWithImpl;
@useResult
$Res call({
 TCPHeaderConfig? header, bool? acceptProxyProtocol
});




}
/// @nodoc
class _$TCPConfigCopyWithImpl<$Res>
    implements $TCPConfigCopyWith<$Res> {
  _$TCPConfigCopyWithImpl(this._self, this._then);

  final TCPConfig _self;
  final $Res Function(TCPConfig) _then;

/// Create a copy of TCPConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? header = freezed,Object? acceptProxyProtocol = freezed,}) {
  return _then(_self.copyWith(
header: freezed == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as TCPHeaderConfig?,acceptProxyProtocol: freezed == acceptProxyProtocol ? _self.acceptProxyProtocol : acceptProxyProtocol // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [TCPConfig].
extension TCPConfigPatterns on TCPConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TCPConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TCPConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TCPConfig value)  $default,){
final _that = this;
switch (_that) {
case _TCPConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TCPConfig value)?  $default,){
final _that = this;
switch (_that) {
case _TCPConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TCPHeaderConfig? header,  bool? acceptProxyProtocol)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TCPConfig() when $default != null:
return $default(_that.header,_that.acceptProxyProtocol);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TCPHeaderConfig? header,  bool? acceptProxyProtocol)  $default,) {final _that = this;
switch (_that) {
case _TCPConfig():
return $default(_that.header,_that.acceptProxyProtocol);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TCPHeaderConfig? header,  bool? acceptProxyProtocol)?  $default,) {final _that = this;
switch (_that) {
case _TCPConfig() when $default != null:
return $default(_that.header,_that.acceptProxyProtocol);case _:
  return null;

}
}

}

/// @nodoc


class _TCPConfig extends TCPConfig {
  const _TCPConfig({this.header, this.acceptProxyProtocol}): super._();
  

@override final  TCPHeaderConfig? header;
@override final  bool? acceptProxyProtocol;

/// Create a copy of TCPConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TCPConfigCopyWith<_TCPConfig> get copyWith => __$TCPConfigCopyWithImpl<_TCPConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TCPConfig&&(identical(other.header, header) || other.header == header)&&(identical(other.acceptProxyProtocol, acceptProxyProtocol) || other.acceptProxyProtocol == acceptProxyProtocol));
}


@override
int get hashCode => Object.hash(runtimeType,header,acceptProxyProtocol);

@override
String toString() {
  return 'TCPConfig(header: $header, acceptProxyProtocol: $acceptProxyProtocol)';
}


}

/// @nodoc
abstract mixin class _$TCPConfigCopyWith<$Res> implements $TCPConfigCopyWith<$Res> {
  factory _$TCPConfigCopyWith(_TCPConfig value, $Res Function(_TCPConfig) _then) = __$TCPConfigCopyWithImpl;
@override @useResult
$Res call({
 TCPHeaderConfig? header, bool? acceptProxyProtocol
});




}
/// @nodoc
class __$TCPConfigCopyWithImpl<$Res>
    implements _$TCPConfigCopyWith<$Res> {
  __$TCPConfigCopyWithImpl(this._self, this._then);

  final _TCPConfig _self;
  final $Res Function(_TCPConfig) _then;

/// Create a copy of TCPConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? header = freezed,Object? acceptProxyProtocol = freezed,}) {
  return _then(_TCPConfig(
header: freezed == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as TCPHeaderConfig?,acceptProxyProtocol: freezed == acceptProxyProtocol ? _self.acceptProxyProtocol : acceptProxyProtocol // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc
mixin _$TCPItem {

 XrayInt32Range? get delay; int? get rand; XrayInt32Range? get randRange; String? get capture; String? get type; String? get reuse; CustomTransform? get transform; Object? get packet;
/// Create a copy of TCPItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TCPItemCopyWith<TCPItem> get copyWith => _$TCPItemCopyWithImpl<TCPItem>(this as TCPItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TCPItem&&(identical(other.delay, delay) || other.delay == delay)&&(identical(other.rand, rand) || other.rand == rand)&&(identical(other.randRange, randRange) || other.randRange == randRange)&&(identical(other.capture, capture) || other.capture == capture)&&(identical(other.type, type) || other.type == type)&&(identical(other.reuse, reuse) || other.reuse == reuse)&&(identical(other.transform, transform) || other.transform == transform)&&const DeepCollectionEquality().equals(other.packet, packet));
}


@override
int get hashCode => Object.hash(runtimeType,delay,rand,randRange,capture,type,reuse,transform,const DeepCollectionEquality().hash(packet));

@override
String toString() {
  return 'TCPItem(delay: $delay, rand: $rand, randRange: $randRange, capture: $capture, type: $type, reuse: $reuse, transform: $transform, packet: $packet)';
}


}

/// @nodoc
abstract mixin class $TCPItemCopyWith<$Res>  {
  factory $TCPItemCopyWith(TCPItem value, $Res Function(TCPItem) _then) = _$TCPItemCopyWithImpl;
@useResult
$Res call({
 XrayInt32Range? delay, int? rand, XrayInt32Range? randRange, String? capture, String? type, String? reuse, CustomTransform? transform, Object? packet
});


$XrayInt32RangeCopyWith<$Res>? get delay;$XrayInt32RangeCopyWith<$Res>? get randRange;$CustomTransformCopyWith<$Res>? get transform;

}
/// @nodoc
class _$TCPItemCopyWithImpl<$Res>
    implements $TCPItemCopyWith<$Res> {
  _$TCPItemCopyWithImpl(this._self, this._then);

  final TCPItem _self;
  final $Res Function(TCPItem) _then;

/// Create a copy of TCPItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? delay = freezed,Object? rand = freezed,Object? randRange = freezed,Object? capture = freezed,Object? type = freezed,Object? reuse = freezed,Object? transform = freezed,Object? packet = freezed,}) {
  return _then(_self.copyWith(
delay: freezed == delay ? _self.delay : delay // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,rand: freezed == rand ? _self.rand : rand // ignore: cast_nullable_to_non_nullable
as int?,randRange: freezed == randRange ? _self.randRange : randRange // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,capture: freezed == capture ? _self.capture : capture // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,reuse: freezed == reuse ? _self.reuse : reuse // ignore: cast_nullable_to_non_nullable
as String?,transform: freezed == transform ? _self.transform : transform // ignore: cast_nullable_to_non_nullable
as CustomTransform?,packet: freezed == packet ? _self.packet : packet ,
  ));
}
/// Create a copy of TCPItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get delay {
    if (_self.delay == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.delay!, (value) {
    return _then(_self.copyWith(delay: value));
  });
}/// Create a copy of TCPItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get randRange {
    if (_self.randRange == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.randRange!, (value) {
    return _then(_self.copyWith(randRange: value));
  });
}/// Create a copy of TCPItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomTransformCopyWith<$Res>? get transform {
    if (_self.transform == null) {
    return null;
  }

  return $CustomTransformCopyWith<$Res>(_self.transform!, (value) {
    return _then(_self.copyWith(transform: value));
  });
}
}


/// Adds pattern-matching-related methods to [TCPItem].
extension TCPItemPatterns on TCPItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TCPItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TCPItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TCPItem value)  $default,){
final _that = this;
switch (_that) {
case _TCPItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TCPItem value)?  $default,){
final _that = this;
switch (_that) {
case _TCPItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( XrayInt32Range? delay,  int? rand,  XrayInt32Range? randRange,  String? capture,  String? type,  String? reuse,  CustomTransform? transform,  Object? packet)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TCPItem() when $default != null:
return $default(_that.delay,_that.rand,_that.randRange,_that.capture,_that.type,_that.reuse,_that.transform,_that.packet);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( XrayInt32Range? delay,  int? rand,  XrayInt32Range? randRange,  String? capture,  String? type,  String? reuse,  CustomTransform? transform,  Object? packet)  $default,) {final _that = this;
switch (_that) {
case _TCPItem():
return $default(_that.delay,_that.rand,_that.randRange,_that.capture,_that.type,_that.reuse,_that.transform,_that.packet);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( XrayInt32Range? delay,  int? rand,  XrayInt32Range? randRange,  String? capture,  String? type,  String? reuse,  CustomTransform? transform,  Object? packet)?  $default,) {final _that = this;
switch (_that) {
case _TCPItem() when $default != null:
return $default(_that.delay,_that.rand,_that.randRange,_that.capture,_that.type,_that.reuse,_that.transform,_that.packet);case _:
  return null;

}
}

}

/// @nodoc


class _TCPItem extends TCPItem {
  const _TCPItem({this.delay, this.rand, this.randRange, this.capture, this.type, this.reuse, this.transform, this.packet}): super._();
  

@override final  XrayInt32Range? delay;
@override final  int? rand;
@override final  XrayInt32Range? randRange;
@override final  String? capture;
@override final  String? type;
@override final  String? reuse;
@override final  CustomTransform? transform;
@override final  Object? packet;

/// Create a copy of TCPItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TCPItemCopyWith<_TCPItem> get copyWith => __$TCPItemCopyWithImpl<_TCPItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TCPItem&&(identical(other.delay, delay) || other.delay == delay)&&(identical(other.rand, rand) || other.rand == rand)&&(identical(other.randRange, randRange) || other.randRange == randRange)&&(identical(other.capture, capture) || other.capture == capture)&&(identical(other.type, type) || other.type == type)&&(identical(other.reuse, reuse) || other.reuse == reuse)&&(identical(other.transform, transform) || other.transform == transform)&&const DeepCollectionEquality().equals(other.packet, packet));
}


@override
int get hashCode => Object.hash(runtimeType,delay,rand,randRange,capture,type,reuse,transform,const DeepCollectionEquality().hash(packet));

@override
String toString() {
  return 'TCPItem(delay: $delay, rand: $rand, randRange: $randRange, capture: $capture, type: $type, reuse: $reuse, transform: $transform, packet: $packet)';
}


}

/// @nodoc
abstract mixin class _$TCPItemCopyWith<$Res> implements $TCPItemCopyWith<$Res> {
  factory _$TCPItemCopyWith(_TCPItem value, $Res Function(_TCPItem) _then) = __$TCPItemCopyWithImpl;
@override @useResult
$Res call({
 XrayInt32Range? delay, int? rand, XrayInt32Range? randRange, String? capture, String? type, String? reuse, CustomTransform? transform, Object? packet
});


@override $XrayInt32RangeCopyWith<$Res>? get delay;@override $XrayInt32RangeCopyWith<$Res>? get randRange;@override $CustomTransformCopyWith<$Res>? get transform;

}
/// @nodoc
class __$TCPItemCopyWithImpl<$Res>
    implements _$TCPItemCopyWith<$Res> {
  __$TCPItemCopyWithImpl(this._self, this._then);

  final _TCPItem _self;
  final $Res Function(_TCPItem) _then;

/// Create a copy of TCPItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? delay = freezed,Object? rand = freezed,Object? randRange = freezed,Object? capture = freezed,Object? type = freezed,Object? reuse = freezed,Object? transform = freezed,Object? packet = freezed,}) {
  return _then(_TCPItem(
delay: freezed == delay ? _self.delay : delay // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,rand: freezed == rand ? _self.rand : rand // ignore: cast_nullable_to_non_nullable
as int?,randRange: freezed == randRange ? _self.randRange : randRange // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,capture: freezed == capture ? _self.capture : capture // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,reuse: freezed == reuse ? _self.reuse : reuse // ignore: cast_nullable_to_non_nullable
as String?,transform: freezed == transform ? _self.transform : transform // ignore: cast_nullable_to_non_nullable
as CustomTransform?,packet: freezed == packet ? _self.packet : packet ,
  ));
}

/// Create a copy of TCPItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get delay {
    if (_self.delay == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.delay!, (value) {
    return _then(_self.copyWith(delay: value));
  });
}/// Create a copy of TCPItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get randRange {
    if (_self.randRange == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.randRange!, (value) {
    return _then(_self.copyWith(randRange: value));
  });
}/// Create a copy of TCPItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomTransformCopyWith<$Res>? get transform {
    if (_self.transform == null) {
    return null;
  }

  return $CustomTransformCopyWith<$Res>(_self.transform!, (value) {
    return _then(_self.copyWith(transform: value));
  });
}
}

/// @nodoc
mixin _$TLSCertConfig {

@JsonKey(name: 'certificateFile') String? get certFile;@JsonKey(name: 'certificate') List<String>? get certStr; String? get keyFile;@JsonKey(name: 'key') List<String>? get keyStr; TLSCertificateUsage? get usage; int? get ocspStapling; bool? get oneTimeLoading; bool? get buildChain;
/// Create a copy of TLSCertConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TLSCertConfigCopyWith<TLSCertConfig> get copyWith => _$TLSCertConfigCopyWithImpl<TLSCertConfig>(this as TLSCertConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TLSCertConfig&&(identical(other.certFile, certFile) || other.certFile == certFile)&&const DeepCollectionEquality().equals(other.certStr, certStr)&&(identical(other.keyFile, keyFile) || other.keyFile == keyFile)&&const DeepCollectionEquality().equals(other.keyStr, keyStr)&&(identical(other.usage, usage) || other.usage == usage)&&(identical(other.ocspStapling, ocspStapling) || other.ocspStapling == ocspStapling)&&(identical(other.oneTimeLoading, oneTimeLoading) || other.oneTimeLoading == oneTimeLoading)&&(identical(other.buildChain, buildChain) || other.buildChain == buildChain));
}


@override
int get hashCode => Object.hash(runtimeType,certFile,const DeepCollectionEquality().hash(certStr),keyFile,const DeepCollectionEquality().hash(keyStr),usage,ocspStapling,oneTimeLoading,buildChain);

@override
String toString() {
  return 'TLSCertConfig(certFile: $certFile, certStr: $certStr, keyFile: $keyFile, keyStr: $keyStr, usage: $usage, ocspStapling: $ocspStapling, oneTimeLoading: $oneTimeLoading, buildChain: $buildChain)';
}


}

/// @nodoc
abstract mixin class $TLSCertConfigCopyWith<$Res>  {
  factory $TLSCertConfigCopyWith(TLSCertConfig value, $Res Function(TLSCertConfig) _then) = _$TLSCertConfigCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'certificateFile') String? certFile,@JsonKey(name: 'certificate') List<String>? certStr, String? keyFile,@JsonKey(name: 'key') List<String>? keyStr, TLSCertificateUsage? usage, int? ocspStapling, bool? oneTimeLoading, bool? buildChain
});




}
/// @nodoc
class _$TLSCertConfigCopyWithImpl<$Res>
    implements $TLSCertConfigCopyWith<$Res> {
  _$TLSCertConfigCopyWithImpl(this._self, this._then);

  final TLSCertConfig _self;
  final $Res Function(TLSCertConfig) _then;

/// Create a copy of TLSCertConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? certFile = freezed,Object? certStr = freezed,Object? keyFile = freezed,Object? keyStr = freezed,Object? usage = freezed,Object? ocspStapling = freezed,Object? oneTimeLoading = freezed,Object? buildChain = freezed,}) {
  return _then(_self.copyWith(
certFile: freezed == certFile ? _self.certFile : certFile // ignore: cast_nullable_to_non_nullable
as String?,certStr: freezed == certStr ? _self.certStr : certStr // ignore: cast_nullable_to_non_nullable
as List<String>?,keyFile: freezed == keyFile ? _self.keyFile : keyFile // ignore: cast_nullable_to_non_nullable
as String?,keyStr: freezed == keyStr ? _self.keyStr : keyStr // ignore: cast_nullable_to_non_nullable
as List<String>?,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as TLSCertificateUsage?,ocspStapling: freezed == ocspStapling ? _self.ocspStapling : ocspStapling // ignore: cast_nullable_to_non_nullable
as int?,oneTimeLoading: freezed == oneTimeLoading ? _self.oneTimeLoading : oneTimeLoading // ignore: cast_nullable_to_non_nullable
as bool?,buildChain: freezed == buildChain ? _self.buildChain : buildChain // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [TLSCertConfig].
extension TLSCertConfigPatterns on TLSCertConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TLSCertConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TLSCertConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TLSCertConfig value)  $default,){
final _that = this;
switch (_that) {
case _TLSCertConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TLSCertConfig value)?  $default,){
final _that = this;
switch (_that) {
case _TLSCertConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'certificateFile')  String? certFile, @JsonKey(name: 'certificate')  List<String>? certStr,  String? keyFile, @JsonKey(name: 'key')  List<String>? keyStr,  TLSCertificateUsage? usage,  int? ocspStapling,  bool? oneTimeLoading,  bool? buildChain)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TLSCertConfig() when $default != null:
return $default(_that.certFile,_that.certStr,_that.keyFile,_that.keyStr,_that.usage,_that.ocspStapling,_that.oneTimeLoading,_that.buildChain);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'certificateFile')  String? certFile, @JsonKey(name: 'certificate')  List<String>? certStr,  String? keyFile, @JsonKey(name: 'key')  List<String>? keyStr,  TLSCertificateUsage? usage,  int? ocspStapling,  bool? oneTimeLoading,  bool? buildChain)  $default,) {final _that = this;
switch (_that) {
case _TLSCertConfig():
return $default(_that.certFile,_that.certStr,_that.keyFile,_that.keyStr,_that.usage,_that.ocspStapling,_that.oneTimeLoading,_that.buildChain);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'certificateFile')  String? certFile, @JsonKey(name: 'certificate')  List<String>? certStr,  String? keyFile, @JsonKey(name: 'key')  List<String>? keyStr,  TLSCertificateUsage? usage,  int? ocspStapling,  bool? oneTimeLoading,  bool? buildChain)?  $default,) {final _that = this;
switch (_that) {
case _TLSCertConfig() when $default != null:
return $default(_that.certFile,_that.certStr,_that.keyFile,_that.keyStr,_that.usage,_that.ocspStapling,_that.oneTimeLoading,_that.buildChain);case _:
  return null;

}
}

}

/// @nodoc


class _TLSCertConfig extends TLSCertConfig {
  const _TLSCertConfig({@JsonKey(name: 'certificateFile') this.certFile, @JsonKey(name: 'certificate') final  List<String>? certStr, this.keyFile, @JsonKey(name: 'key') final  List<String>? keyStr, this.usage, this.ocspStapling, this.oneTimeLoading, this.buildChain}): _certStr = certStr,_keyStr = keyStr,super._();
  

@override@JsonKey(name: 'certificateFile') final  String? certFile;
 final  List<String>? _certStr;
@override@JsonKey(name: 'certificate') List<String>? get certStr {
  final value = _certStr;
  if (value == null) return null;
  if (_certStr is EqualUnmodifiableListView) return _certStr;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? keyFile;
 final  List<String>? _keyStr;
@override@JsonKey(name: 'key') List<String>? get keyStr {
  final value = _keyStr;
  if (value == null) return null;
  if (_keyStr is EqualUnmodifiableListView) return _keyStr;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  TLSCertificateUsage? usage;
@override final  int? ocspStapling;
@override final  bool? oneTimeLoading;
@override final  bool? buildChain;

/// Create a copy of TLSCertConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TLSCertConfigCopyWith<_TLSCertConfig> get copyWith => __$TLSCertConfigCopyWithImpl<_TLSCertConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TLSCertConfig&&(identical(other.certFile, certFile) || other.certFile == certFile)&&const DeepCollectionEquality().equals(other._certStr, _certStr)&&(identical(other.keyFile, keyFile) || other.keyFile == keyFile)&&const DeepCollectionEquality().equals(other._keyStr, _keyStr)&&(identical(other.usage, usage) || other.usage == usage)&&(identical(other.ocspStapling, ocspStapling) || other.ocspStapling == ocspStapling)&&(identical(other.oneTimeLoading, oneTimeLoading) || other.oneTimeLoading == oneTimeLoading)&&(identical(other.buildChain, buildChain) || other.buildChain == buildChain));
}


@override
int get hashCode => Object.hash(runtimeType,certFile,const DeepCollectionEquality().hash(_certStr),keyFile,const DeepCollectionEquality().hash(_keyStr),usage,ocspStapling,oneTimeLoading,buildChain);

@override
String toString() {
  return 'TLSCertConfig(certFile: $certFile, certStr: $certStr, keyFile: $keyFile, keyStr: $keyStr, usage: $usage, ocspStapling: $ocspStapling, oneTimeLoading: $oneTimeLoading, buildChain: $buildChain)';
}


}

/// @nodoc
abstract mixin class _$TLSCertConfigCopyWith<$Res> implements $TLSCertConfigCopyWith<$Res> {
  factory _$TLSCertConfigCopyWith(_TLSCertConfig value, $Res Function(_TLSCertConfig) _then) = __$TLSCertConfigCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'certificateFile') String? certFile,@JsonKey(name: 'certificate') List<String>? certStr, String? keyFile,@JsonKey(name: 'key') List<String>? keyStr, TLSCertificateUsage? usage, int? ocspStapling, bool? oneTimeLoading, bool? buildChain
});




}
/// @nodoc
class __$TLSCertConfigCopyWithImpl<$Res>
    implements _$TLSCertConfigCopyWith<$Res> {
  __$TLSCertConfigCopyWithImpl(this._self, this._then);

  final _TLSCertConfig _self;
  final $Res Function(_TLSCertConfig) _then;

/// Create a copy of TLSCertConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? certFile = freezed,Object? certStr = freezed,Object? keyFile = freezed,Object? keyStr = freezed,Object? usage = freezed,Object? ocspStapling = freezed,Object? oneTimeLoading = freezed,Object? buildChain = freezed,}) {
  return _then(_TLSCertConfig(
certFile: freezed == certFile ? _self.certFile : certFile // ignore: cast_nullable_to_non_nullable
as String?,certStr: freezed == certStr ? _self._certStr : certStr // ignore: cast_nullable_to_non_nullable
as List<String>?,keyFile: freezed == keyFile ? _self.keyFile : keyFile // ignore: cast_nullable_to_non_nullable
as String?,keyStr: freezed == keyStr ? _self._keyStr : keyStr // ignore: cast_nullable_to_non_nullable
as List<String>?,usage: freezed == usage ? _self.usage : usage // ignore: cast_nullable_to_non_nullable
as TLSCertificateUsage?,ocspStapling: freezed == ocspStapling ? _self.ocspStapling : ocspStapling // ignore: cast_nullable_to_non_nullable
as int?,oneTimeLoading: freezed == oneTimeLoading ? _self.oneTimeLoading : oneTimeLoading // ignore: cast_nullable_to_non_nullable
as bool?,buildChain: freezed == buildChain ? _self.buildChain : buildChain // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

/// @nodoc
mixin _$TLSConfig {

 bool? get allowInsecure;@JsonKey(name: 'certificates') List<TLSCertConfig>? get certs; String? get serverName;@JsonKey(name: 'alpn') XrayStringList? get alpn; bool? get enableSessionResumption; bool? get disableSystemRoot; String? get minVersion; String? get maxVersion; String? get cipherSuites; String? get fingerprint;@JsonKey(name: 'rejectUnknownSni') bool? get rejectUnknownSNI; XrayStringList? get curvePreferences; String? get masterKeyLog; String? get pinnedPeerCertSha256; String? get verifyPeerCertByName; List<String>? get verifyPeerCertInNames; String? get echServerKeys; String? get echConfigList; ECHForceQuery? get echForceQuery;@JsonKey(name: 'echSockopt') SocketConfig? get echSocketSettings;
/// Create a copy of TLSConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TLSConfigCopyWith<TLSConfig> get copyWith => _$TLSConfigCopyWithImpl<TLSConfig>(this as TLSConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TLSConfig&&(identical(other.allowInsecure, allowInsecure) || other.allowInsecure == allowInsecure)&&const DeepCollectionEquality().equals(other.certs, certs)&&(identical(other.serverName, serverName) || other.serverName == serverName)&&(identical(other.alpn, alpn) || other.alpn == alpn)&&(identical(other.enableSessionResumption, enableSessionResumption) || other.enableSessionResumption == enableSessionResumption)&&(identical(other.disableSystemRoot, disableSystemRoot) || other.disableSystemRoot == disableSystemRoot)&&(identical(other.minVersion, minVersion) || other.minVersion == minVersion)&&(identical(other.maxVersion, maxVersion) || other.maxVersion == maxVersion)&&(identical(other.cipherSuites, cipherSuites) || other.cipherSuites == cipherSuites)&&(identical(other.fingerprint, fingerprint) || other.fingerprint == fingerprint)&&(identical(other.rejectUnknownSNI, rejectUnknownSNI) || other.rejectUnknownSNI == rejectUnknownSNI)&&(identical(other.curvePreferences, curvePreferences) || other.curvePreferences == curvePreferences)&&(identical(other.masterKeyLog, masterKeyLog) || other.masterKeyLog == masterKeyLog)&&(identical(other.pinnedPeerCertSha256, pinnedPeerCertSha256) || other.pinnedPeerCertSha256 == pinnedPeerCertSha256)&&(identical(other.verifyPeerCertByName, verifyPeerCertByName) || other.verifyPeerCertByName == verifyPeerCertByName)&&const DeepCollectionEquality().equals(other.verifyPeerCertInNames, verifyPeerCertInNames)&&(identical(other.echServerKeys, echServerKeys) || other.echServerKeys == echServerKeys)&&(identical(other.echConfigList, echConfigList) || other.echConfigList == echConfigList)&&(identical(other.echForceQuery, echForceQuery) || other.echForceQuery == echForceQuery)&&(identical(other.echSocketSettings, echSocketSettings) || other.echSocketSettings == echSocketSettings));
}


@override
int get hashCode => Object.hashAll([runtimeType,allowInsecure,const DeepCollectionEquality().hash(certs),serverName,alpn,enableSessionResumption,disableSystemRoot,minVersion,maxVersion,cipherSuites,fingerprint,rejectUnknownSNI,curvePreferences,masterKeyLog,pinnedPeerCertSha256,verifyPeerCertByName,const DeepCollectionEquality().hash(verifyPeerCertInNames),echServerKeys,echConfigList,echForceQuery,echSocketSettings]);

@override
String toString() {
  return 'TLSConfig(allowInsecure: $allowInsecure, certs: $certs, serverName: $serverName, alpn: $alpn, enableSessionResumption: $enableSessionResumption, disableSystemRoot: $disableSystemRoot, minVersion: $minVersion, maxVersion: $maxVersion, cipherSuites: $cipherSuites, fingerprint: $fingerprint, rejectUnknownSNI: $rejectUnknownSNI, curvePreferences: $curvePreferences, masterKeyLog: $masterKeyLog, pinnedPeerCertSha256: $pinnedPeerCertSha256, verifyPeerCertByName: $verifyPeerCertByName, verifyPeerCertInNames: $verifyPeerCertInNames, echServerKeys: $echServerKeys, echConfigList: $echConfigList, echForceQuery: $echForceQuery, echSocketSettings: $echSocketSettings)';
}


}

/// @nodoc
abstract mixin class $TLSConfigCopyWith<$Res>  {
  factory $TLSConfigCopyWith(TLSConfig value, $Res Function(TLSConfig) _then) = _$TLSConfigCopyWithImpl;
@useResult
$Res call({
 bool? allowInsecure,@JsonKey(name: 'certificates') List<TLSCertConfig>? certs, String? serverName,@JsonKey(name: 'alpn') XrayStringList? alpn, bool? enableSessionResumption, bool? disableSystemRoot, String? minVersion, String? maxVersion, String? cipherSuites, String? fingerprint,@JsonKey(name: 'rejectUnknownSni') bool? rejectUnknownSNI, XrayStringList? curvePreferences, String? masterKeyLog, String? pinnedPeerCertSha256, String? verifyPeerCertByName, List<String>? verifyPeerCertInNames, String? echServerKeys, String? echConfigList, ECHForceQuery? echForceQuery,@JsonKey(name: 'echSockopt') SocketConfig? echSocketSettings
});


$SocketConfigCopyWith<$Res>? get echSocketSettings;

}
/// @nodoc
class _$TLSConfigCopyWithImpl<$Res>
    implements $TLSConfigCopyWith<$Res> {
  _$TLSConfigCopyWithImpl(this._self, this._then);

  final TLSConfig _self;
  final $Res Function(TLSConfig) _then;

/// Create a copy of TLSConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allowInsecure = freezed,Object? certs = freezed,Object? serverName = freezed,Object? alpn = freezed,Object? enableSessionResumption = freezed,Object? disableSystemRoot = freezed,Object? minVersion = freezed,Object? maxVersion = freezed,Object? cipherSuites = freezed,Object? fingerprint = freezed,Object? rejectUnknownSNI = freezed,Object? curvePreferences = freezed,Object? masterKeyLog = freezed,Object? pinnedPeerCertSha256 = freezed,Object? verifyPeerCertByName = freezed,Object? verifyPeerCertInNames = freezed,Object? echServerKeys = freezed,Object? echConfigList = freezed,Object? echForceQuery = freezed,Object? echSocketSettings = freezed,}) {
  return _then(_self.copyWith(
allowInsecure: freezed == allowInsecure ? _self.allowInsecure : allowInsecure // ignore: cast_nullable_to_non_nullable
as bool?,certs: freezed == certs ? _self.certs : certs // ignore: cast_nullable_to_non_nullable
as List<TLSCertConfig>?,serverName: freezed == serverName ? _self.serverName : serverName // ignore: cast_nullable_to_non_nullable
as String?,alpn: freezed == alpn ? _self.alpn : alpn // ignore: cast_nullable_to_non_nullable
as XrayStringList?,enableSessionResumption: freezed == enableSessionResumption ? _self.enableSessionResumption : enableSessionResumption // ignore: cast_nullable_to_non_nullable
as bool?,disableSystemRoot: freezed == disableSystemRoot ? _self.disableSystemRoot : disableSystemRoot // ignore: cast_nullable_to_non_nullable
as bool?,minVersion: freezed == minVersion ? _self.minVersion : minVersion // ignore: cast_nullable_to_non_nullable
as String?,maxVersion: freezed == maxVersion ? _self.maxVersion : maxVersion // ignore: cast_nullable_to_non_nullable
as String?,cipherSuites: freezed == cipherSuites ? _self.cipherSuites : cipherSuites // ignore: cast_nullable_to_non_nullable
as String?,fingerprint: freezed == fingerprint ? _self.fingerprint : fingerprint // ignore: cast_nullable_to_non_nullable
as String?,rejectUnknownSNI: freezed == rejectUnknownSNI ? _self.rejectUnknownSNI : rejectUnknownSNI // ignore: cast_nullable_to_non_nullable
as bool?,curvePreferences: freezed == curvePreferences ? _self.curvePreferences : curvePreferences // ignore: cast_nullable_to_non_nullable
as XrayStringList?,masterKeyLog: freezed == masterKeyLog ? _self.masterKeyLog : masterKeyLog // ignore: cast_nullable_to_non_nullable
as String?,pinnedPeerCertSha256: freezed == pinnedPeerCertSha256 ? _self.pinnedPeerCertSha256 : pinnedPeerCertSha256 // ignore: cast_nullable_to_non_nullable
as String?,verifyPeerCertByName: freezed == verifyPeerCertByName ? _self.verifyPeerCertByName : verifyPeerCertByName // ignore: cast_nullable_to_non_nullable
as String?,verifyPeerCertInNames: freezed == verifyPeerCertInNames ? _self.verifyPeerCertInNames : verifyPeerCertInNames // ignore: cast_nullable_to_non_nullable
as List<String>?,echServerKeys: freezed == echServerKeys ? _self.echServerKeys : echServerKeys // ignore: cast_nullable_to_non_nullable
as String?,echConfigList: freezed == echConfigList ? _self.echConfigList : echConfigList // ignore: cast_nullable_to_non_nullable
as String?,echForceQuery: freezed == echForceQuery ? _self.echForceQuery : echForceQuery // ignore: cast_nullable_to_non_nullable
as ECHForceQuery?,echSocketSettings: freezed == echSocketSettings ? _self.echSocketSettings : echSocketSettings // ignore: cast_nullable_to_non_nullable
as SocketConfig?,
  ));
}
/// Create a copy of TLSConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SocketConfigCopyWith<$Res>? get echSocketSettings {
    if (_self.echSocketSettings == null) {
    return null;
  }

  return $SocketConfigCopyWith<$Res>(_self.echSocketSettings!, (value) {
    return _then(_self.copyWith(echSocketSettings: value));
  });
}
}


/// Adds pattern-matching-related methods to [TLSConfig].
extension TLSConfigPatterns on TLSConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TLSConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TLSConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TLSConfig value)  $default,){
final _that = this;
switch (_that) {
case _TLSConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TLSConfig value)?  $default,){
final _that = this;
switch (_that) {
case _TLSConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? allowInsecure, @JsonKey(name: 'certificates')  List<TLSCertConfig>? certs,  String? serverName, @JsonKey(name: 'alpn')  XrayStringList? alpn,  bool? enableSessionResumption,  bool? disableSystemRoot,  String? minVersion,  String? maxVersion,  String? cipherSuites,  String? fingerprint, @JsonKey(name: 'rejectUnknownSni')  bool? rejectUnknownSNI,  XrayStringList? curvePreferences,  String? masterKeyLog,  String? pinnedPeerCertSha256,  String? verifyPeerCertByName,  List<String>? verifyPeerCertInNames,  String? echServerKeys,  String? echConfigList,  ECHForceQuery? echForceQuery, @JsonKey(name: 'echSockopt')  SocketConfig? echSocketSettings)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TLSConfig() when $default != null:
return $default(_that.allowInsecure,_that.certs,_that.serverName,_that.alpn,_that.enableSessionResumption,_that.disableSystemRoot,_that.minVersion,_that.maxVersion,_that.cipherSuites,_that.fingerprint,_that.rejectUnknownSNI,_that.curvePreferences,_that.masterKeyLog,_that.pinnedPeerCertSha256,_that.verifyPeerCertByName,_that.verifyPeerCertInNames,_that.echServerKeys,_that.echConfigList,_that.echForceQuery,_that.echSocketSettings);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? allowInsecure, @JsonKey(name: 'certificates')  List<TLSCertConfig>? certs,  String? serverName, @JsonKey(name: 'alpn')  XrayStringList? alpn,  bool? enableSessionResumption,  bool? disableSystemRoot,  String? minVersion,  String? maxVersion,  String? cipherSuites,  String? fingerprint, @JsonKey(name: 'rejectUnknownSni')  bool? rejectUnknownSNI,  XrayStringList? curvePreferences,  String? masterKeyLog,  String? pinnedPeerCertSha256,  String? verifyPeerCertByName,  List<String>? verifyPeerCertInNames,  String? echServerKeys,  String? echConfigList,  ECHForceQuery? echForceQuery, @JsonKey(name: 'echSockopt')  SocketConfig? echSocketSettings)  $default,) {final _that = this;
switch (_that) {
case _TLSConfig():
return $default(_that.allowInsecure,_that.certs,_that.serverName,_that.alpn,_that.enableSessionResumption,_that.disableSystemRoot,_that.minVersion,_that.maxVersion,_that.cipherSuites,_that.fingerprint,_that.rejectUnknownSNI,_that.curvePreferences,_that.masterKeyLog,_that.pinnedPeerCertSha256,_that.verifyPeerCertByName,_that.verifyPeerCertInNames,_that.echServerKeys,_that.echConfigList,_that.echForceQuery,_that.echSocketSettings);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? allowInsecure, @JsonKey(name: 'certificates')  List<TLSCertConfig>? certs,  String? serverName, @JsonKey(name: 'alpn')  XrayStringList? alpn,  bool? enableSessionResumption,  bool? disableSystemRoot,  String? minVersion,  String? maxVersion,  String? cipherSuites,  String? fingerprint, @JsonKey(name: 'rejectUnknownSni')  bool? rejectUnknownSNI,  XrayStringList? curvePreferences,  String? masterKeyLog,  String? pinnedPeerCertSha256,  String? verifyPeerCertByName,  List<String>? verifyPeerCertInNames,  String? echServerKeys,  String? echConfigList,  ECHForceQuery? echForceQuery, @JsonKey(name: 'echSockopt')  SocketConfig? echSocketSettings)?  $default,) {final _that = this;
switch (_that) {
case _TLSConfig() when $default != null:
return $default(_that.allowInsecure,_that.certs,_that.serverName,_that.alpn,_that.enableSessionResumption,_that.disableSystemRoot,_that.minVersion,_that.maxVersion,_that.cipherSuites,_that.fingerprint,_that.rejectUnknownSNI,_that.curvePreferences,_that.masterKeyLog,_that.pinnedPeerCertSha256,_that.verifyPeerCertByName,_that.verifyPeerCertInNames,_that.echServerKeys,_that.echConfigList,_that.echForceQuery,_that.echSocketSettings);case _:
  return null;

}
}

}

/// @nodoc


class _TLSConfig extends TLSConfig {
  const _TLSConfig({this.allowInsecure, @JsonKey(name: 'certificates') final  List<TLSCertConfig>? certs, this.serverName, @JsonKey(name: 'alpn') this.alpn, this.enableSessionResumption, this.disableSystemRoot, this.minVersion, this.maxVersion, this.cipherSuites, this.fingerprint, @JsonKey(name: 'rejectUnknownSni') this.rejectUnknownSNI, this.curvePreferences, this.masterKeyLog, this.pinnedPeerCertSha256, this.verifyPeerCertByName, final  List<String>? verifyPeerCertInNames, this.echServerKeys, this.echConfigList, this.echForceQuery, @JsonKey(name: 'echSockopt') this.echSocketSettings}): _certs = certs,_verifyPeerCertInNames = verifyPeerCertInNames,super._();
  

@override final  bool? allowInsecure;
 final  List<TLSCertConfig>? _certs;
@override@JsonKey(name: 'certificates') List<TLSCertConfig>? get certs {
  final value = _certs;
  if (value == null) return null;
  if (_certs is EqualUnmodifiableListView) return _certs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? serverName;
@override@JsonKey(name: 'alpn') final  XrayStringList? alpn;
@override final  bool? enableSessionResumption;
@override final  bool? disableSystemRoot;
@override final  String? minVersion;
@override final  String? maxVersion;
@override final  String? cipherSuites;
@override final  String? fingerprint;
@override@JsonKey(name: 'rejectUnknownSni') final  bool? rejectUnknownSNI;
@override final  XrayStringList? curvePreferences;
@override final  String? masterKeyLog;
@override final  String? pinnedPeerCertSha256;
@override final  String? verifyPeerCertByName;
 final  List<String>? _verifyPeerCertInNames;
@override List<String>? get verifyPeerCertInNames {
  final value = _verifyPeerCertInNames;
  if (value == null) return null;
  if (_verifyPeerCertInNames is EqualUnmodifiableListView) return _verifyPeerCertInNames;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  String? echServerKeys;
@override final  String? echConfigList;
@override final  ECHForceQuery? echForceQuery;
@override@JsonKey(name: 'echSockopt') final  SocketConfig? echSocketSettings;

/// Create a copy of TLSConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TLSConfigCopyWith<_TLSConfig> get copyWith => __$TLSConfigCopyWithImpl<_TLSConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TLSConfig&&(identical(other.allowInsecure, allowInsecure) || other.allowInsecure == allowInsecure)&&const DeepCollectionEquality().equals(other._certs, _certs)&&(identical(other.serverName, serverName) || other.serverName == serverName)&&(identical(other.alpn, alpn) || other.alpn == alpn)&&(identical(other.enableSessionResumption, enableSessionResumption) || other.enableSessionResumption == enableSessionResumption)&&(identical(other.disableSystemRoot, disableSystemRoot) || other.disableSystemRoot == disableSystemRoot)&&(identical(other.minVersion, minVersion) || other.minVersion == minVersion)&&(identical(other.maxVersion, maxVersion) || other.maxVersion == maxVersion)&&(identical(other.cipherSuites, cipherSuites) || other.cipherSuites == cipherSuites)&&(identical(other.fingerprint, fingerprint) || other.fingerprint == fingerprint)&&(identical(other.rejectUnknownSNI, rejectUnknownSNI) || other.rejectUnknownSNI == rejectUnknownSNI)&&(identical(other.curvePreferences, curvePreferences) || other.curvePreferences == curvePreferences)&&(identical(other.masterKeyLog, masterKeyLog) || other.masterKeyLog == masterKeyLog)&&(identical(other.pinnedPeerCertSha256, pinnedPeerCertSha256) || other.pinnedPeerCertSha256 == pinnedPeerCertSha256)&&(identical(other.verifyPeerCertByName, verifyPeerCertByName) || other.verifyPeerCertByName == verifyPeerCertByName)&&const DeepCollectionEquality().equals(other._verifyPeerCertInNames, _verifyPeerCertInNames)&&(identical(other.echServerKeys, echServerKeys) || other.echServerKeys == echServerKeys)&&(identical(other.echConfigList, echConfigList) || other.echConfigList == echConfigList)&&(identical(other.echForceQuery, echForceQuery) || other.echForceQuery == echForceQuery)&&(identical(other.echSocketSettings, echSocketSettings) || other.echSocketSettings == echSocketSettings));
}


@override
int get hashCode => Object.hashAll([runtimeType,allowInsecure,const DeepCollectionEquality().hash(_certs),serverName,alpn,enableSessionResumption,disableSystemRoot,minVersion,maxVersion,cipherSuites,fingerprint,rejectUnknownSNI,curvePreferences,masterKeyLog,pinnedPeerCertSha256,verifyPeerCertByName,const DeepCollectionEquality().hash(_verifyPeerCertInNames),echServerKeys,echConfigList,echForceQuery,echSocketSettings]);

@override
String toString() {
  return 'TLSConfig(allowInsecure: $allowInsecure, certs: $certs, serverName: $serverName, alpn: $alpn, enableSessionResumption: $enableSessionResumption, disableSystemRoot: $disableSystemRoot, minVersion: $minVersion, maxVersion: $maxVersion, cipherSuites: $cipherSuites, fingerprint: $fingerprint, rejectUnknownSNI: $rejectUnknownSNI, curvePreferences: $curvePreferences, masterKeyLog: $masterKeyLog, pinnedPeerCertSha256: $pinnedPeerCertSha256, verifyPeerCertByName: $verifyPeerCertByName, verifyPeerCertInNames: $verifyPeerCertInNames, echServerKeys: $echServerKeys, echConfigList: $echConfigList, echForceQuery: $echForceQuery, echSocketSettings: $echSocketSettings)';
}


}

/// @nodoc
abstract mixin class _$TLSConfigCopyWith<$Res> implements $TLSConfigCopyWith<$Res> {
  factory _$TLSConfigCopyWith(_TLSConfig value, $Res Function(_TLSConfig) _then) = __$TLSConfigCopyWithImpl;
@override @useResult
$Res call({
 bool? allowInsecure,@JsonKey(name: 'certificates') List<TLSCertConfig>? certs, String? serverName,@JsonKey(name: 'alpn') XrayStringList? alpn, bool? enableSessionResumption, bool? disableSystemRoot, String? minVersion, String? maxVersion, String? cipherSuites, String? fingerprint,@JsonKey(name: 'rejectUnknownSni') bool? rejectUnknownSNI, XrayStringList? curvePreferences, String? masterKeyLog, String? pinnedPeerCertSha256, String? verifyPeerCertByName, List<String>? verifyPeerCertInNames, String? echServerKeys, String? echConfigList, ECHForceQuery? echForceQuery,@JsonKey(name: 'echSockopt') SocketConfig? echSocketSettings
});


@override $SocketConfigCopyWith<$Res>? get echSocketSettings;

}
/// @nodoc
class __$TLSConfigCopyWithImpl<$Res>
    implements _$TLSConfigCopyWith<$Res> {
  __$TLSConfigCopyWithImpl(this._self, this._then);

  final _TLSConfig _self;
  final $Res Function(_TLSConfig) _then;

/// Create a copy of TLSConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? allowInsecure = freezed,Object? certs = freezed,Object? serverName = freezed,Object? alpn = freezed,Object? enableSessionResumption = freezed,Object? disableSystemRoot = freezed,Object? minVersion = freezed,Object? maxVersion = freezed,Object? cipherSuites = freezed,Object? fingerprint = freezed,Object? rejectUnknownSNI = freezed,Object? curvePreferences = freezed,Object? masterKeyLog = freezed,Object? pinnedPeerCertSha256 = freezed,Object? verifyPeerCertByName = freezed,Object? verifyPeerCertInNames = freezed,Object? echServerKeys = freezed,Object? echConfigList = freezed,Object? echForceQuery = freezed,Object? echSocketSettings = freezed,}) {
  return _then(_TLSConfig(
allowInsecure: freezed == allowInsecure ? _self.allowInsecure : allowInsecure // ignore: cast_nullable_to_non_nullable
as bool?,certs: freezed == certs ? _self._certs : certs // ignore: cast_nullable_to_non_nullable
as List<TLSCertConfig>?,serverName: freezed == serverName ? _self.serverName : serverName // ignore: cast_nullable_to_non_nullable
as String?,alpn: freezed == alpn ? _self.alpn : alpn // ignore: cast_nullable_to_non_nullable
as XrayStringList?,enableSessionResumption: freezed == enableSessionResumption ? _self.enableSessionResumption : enableSessionResumption // ignore: cast_nullable_to_non_nullable
as bool?,disableSystemRoot: freezed == disableSystemRoot ? _self.disableSystemRoot : disableSystemRoot // ignore: cast_nullable_to_non_nullable
as bool?,minVersion: freezed == minVersion ? _self.minVersion : minVersion // ignore: cast_nullable_to_non_nullable
as String?,maxVersion: freezed == maxVersion ? _self.maxVersion : maxVersion // ignore: cast_nullable_to_non_nullable
as String?,cipherSuites: freezed == cipherSuites ? _self.cipherSuites : cipherSuites // ignore: cast_nullable_to_non_nullable
as String?,fingerprint: freezed == fingerprint ? _self.fingerprint : fingerprint // ignore: cast_nullable_to_non_nullable
as String?,rejectUnknownSNI: freezed == rejectUnknownSNI ? _self.rejectUnknownSNI : rejectUnknownSNI // ignore: cast_nullable_to_non_nullable
as bool?,curvePreferences: freezed == curvePreferences ? _self.curvePreferences : curvePreferences // ignore: cast_nullable_to_non_nullable
as XrayStringList?,masterKeyLog: freezed == masterKeyLog ? _self.masterKeyLog : masterKeyLog // ignore: cast_nullable_to_non_nullable
as String?,pinnedPeerCertSha256: freezed == pinnedPeerCertSha256 ? _self.pinnedPeerCertSha256 : pinnedPeerCertSha256 // ignore: cast_nullable_to_non_nullable
as String?,verifyPeerCertByName: freezed == verifyPeerCertByName ? _self.verifyPeerCertByName : verifyPeerCertByName // ignore: cast_nullable_to_non_nullable
as String?,verifyPeerCertInNames: freezed == verifyPeerCertInNames ? _self._verifyPeerCertInNames : verifyPeerCertInNames // ignore: cast_nullable_to_non_nullable
as List<String>?,echServerKeys: freezed == echServerKeys ? _self.echServerKeys : echServerKeys // ignore: cast_nullable_to_non_nullable
as String?,echConfigList: freezed == echConfigList ? _self.echConfigList : echConfigList // ignore: cast_nullable_to_non_nullable
as String?,echForceQuery: freezed == echForceQuery ? _self.echForceQuery : echForceQuery // ignore: cast_nullable_to_non_nullable
as ECHForceQuery?,echSocketSettings: freezed == echSocketSettings ? _self.echSocketSettings : echSocketSettings // ignore: cast_nullable_to_non_nullable
as SocketConfig?,
  ));
}

/// Create a copy of TLSConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SocketConfigCopyWith<$Res>? get echSocketSettings {
    if (_self.echSocketSettings == null) {
    return null;
  }

  return $SocketConfigCopyWith<$Res>(_self.echSocketSettings!, (value) {
    return _then(_self.copyWith(echSocketSettings: value));
  });
}
}

/// @nodoc
mixin _$UdpHop {

 XrayPortList? get ports; XrayInt32Range? get interval;
/// Create a copy of UdpHop
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UdpHopCopyWith<UdpHop> get copyWith => _$UdpHopCopyWithImpl<UdpHop>(this as UdpHop, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UdpHop&&(identical(other.ports, ports) || other.ports == ports)&&(identical(other.interval, interval) || other.interval == interval));
}


@override
int get hashCode => Object.hash(runtimeType,ports,interval);

@override
String toString() {
  return 'UdpHop(ports: $ports, interval: $interval)';
}


}

/// @nodoc
abstract mixin class $UdpHopCopyWith<$Res>  {
  factory $UdpHopCopyWith(UdpHop value, $Res Function(UdpHop) _then) = _$UdpHopCopyWithImpl;
@useResult
$Res call({
 XrayPortList? ports, XrayInt32Range? interval
});


$XrayInt32RangeCopyWith<$Res>? get interval;

}
/// @nodoc
class _$UdpHopCopyWithImpl<$Res>
    implements $UdpHopCopyWith<$Res> {
  _$UdpHopCopyWithImpl(this._self, this._then);

  final UdpHop _self;
  final $Res Function(UdpHop) _then;

/// Create a copy of UdpHop
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ports = freezed,Object? interval = freezed,}) {
  return _then(_self.copyWith(
ports: freezed == ports ? _self.ports : ports // ignore: cast_nullable_to_non_nullable
as XrayPortList?,interval: freezed == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,
  ));
}
/// Create a copy of UdpHop
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get interval {
    if (_self.interval == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.interval!, (value) {
    return _then(_self.copyWith(interval: value));
  });
}
}


/// Adds pattern-matching-related methods to [UdpHop].
extension UdpHopPatterns on UdpHop {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UdpHop value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UdpHop() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UdpHop value)  $default,){
final _that = this;
switch (_that) {
case _UdpHop():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UdpHop value)?  $default,){
final _that = this;
switch (_that) {
case _UdpHop() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( XrayPortList? ports,  XrayInt32Range? interval)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UdpHop() when $default != null:
return $default(_that.ports,_that.interval);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( XrayPortList? ports,  XrayInt32Range? interval)  $default,) {final _that = this;
switch (_that) {
case _UdpHop():
return $default(_that.ports,_that.interval);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( XrayPortList? ports,  XrayInt32Range? interval)?  $default,) {final _that = this;
switch (_that) {
case _UdpHop() when $default != null:
return $default(_that.ports,_that.interval);case _:
  return null;

}
}

}

/// @nodoc


class _UdpHop extends UdpHop {
  const _UdpHop({this.ports, this.interval}): super._();
  

@override final  XrayPortList? ports;
@override final  XrayInt32Range? interval;

/// Create a copy of UdpHop
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UdpHopCopyWith<_UdpHop> get copyWith => __$UdpHopCopyWithImpl<_UdpHop>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UdpHop&&(identical(other.ports, ports) || other.ports == ports)&&(identical(other.interval, interval) || other.interval == interval));
}


@override
int get hashCode => Object.hash(runtimeType,ports,interval);

@override
String toString() {
  return 'UdpHop(ports: $ports, interval: $interval)';
}


}

/// @nodoc
abstract mixin class _$UdpHopCopyWith<$Res> implements $UdpHopCopyWith<$Res> {
  factory _$UdpHopCopyWith(_UdpHop value, $Res Function(_UdpHop) _then) = __$UdpHopCopyWithImpl;
@override @useResult
$Res call({
 XrayPortList? ports, XrayInt32Range? interval
});


@override $XrayInt32RangeCopyWith<$Res>? get interval;

}
/// @nodoc
class __$UdpHopCopyWithImpl<$Res>
    implements _$UdpHopCopyWith<$Res> {
  __$UdpHopCopyWithImpl(this._self, this._then);

  final _UdpHop _self;
  final $Res Function(_UdpHop) _then;

/// Create a copy of UdpHop
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ports = freezed,Object? interval = freezed,}) {
  return _then(_UdpHop(
ports: freezed == ports ? _self.ports : ports // ignore: cast_nullable_to_non_nullable
as XrayPortList?,interval: freezed == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,
  ));
}

/// Create a copy of UdpHop
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get interval {
    if (_self.interval == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.interval!, (value) {
    return _then(_self.copyWith(interval: value));
  });
}
}

/// @nodoc
mixin _$UDPItem {

 int? get rand; XrayInt32Range? get randRange; String? get capture; String? get type; String? get reuse; CustomTransform? get transform; Object? get packet;
/// Create a copy of UDPItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UDPItemCopyWith<UDPItem> get copyWith => _$UDPItemCopyWithImpl<UDPItem>(this as UDPItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UDPItem&&(identical(other.rand, rand) || other.rand == rand)&&(identical(other.randRange, randRange) || other.randRange == randRange)&&(identical(other.capture, capture) || other.capture == capture)&&(identical(other.type, type) || other.type == type)&&(identical(other.reuse, reuse) || other.reuse == reuse)&&(identical(other.transform, transform) || other.transform == transform)&&const DeepCollectionEquality().equals(other.packet, packet));
}


@override
int get hashCode => Object.hash(runtimeType,rand,randRange,capture,type,reuse,transform,const DeepCollectionEquality().hash(packet));

@override
String toString() {
  return 'UDPItem(rand: $rand, randRange: $randRange, capture: $capture, type: $type, reuse: $reuse, transform: $transform, packet: $packet)';
}


}

/// @nodoc
abstract mixin class $UDPItemCopyWith<$Res>  {
  factory $UDPItemCopyWith(UDPItem value, $Res Function(UDPItem) _then) = _$UDPItemCopyWithImpl;
@useResult
$Res call({
 int? rand, XrayInt32Range? randRange, String? capture, String? type, String? reuse, CustomTransform? transform, Object? packet
});


$XrayInt32RangeCopyWith<$Res>? get randRange;$CustomTransformCopyWith<$Res>? get transform;

}
/// @nodoc
class _$UDPItemCopyWithImpl<$Res>
    implements $UDPItemCopyWith<$Res> {
  _$UDPItemCopyWithImpl(this._self, this._then);

  final UDPItem _self;
  final $Res Function(UDPItem) _then;

/// Create a copy of UDPItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rand = freezed,Object? randRange = freezed,Object? capture = freezed,Object? type = freezed,Object? reuse = freezed,Object? transform = freezed,Object? packet = freezed,}) {
  return _then(_self.copyWith(
rand: freezed == rand ? _self.rand : rand // ignore: cast_nullable_to_non_nullable
as int?,randRange: freezed == randRange ? _self.randRange : randRange // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,capture: freezed == capture ? _self.capture : capture // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,reuse: freezed == reuse ? _self.reuse : reuse // ignore: cast_nullable_to_non_nullable
as String?,transform: freezed == transform ? _self.transform : transform // ignore: cast_nullable_to_non_nullable
as CustomTransform?,packet: freezed == packet ? _self.packet : packet ,
  ));
}
/// Create a copy of UDPItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get randRange {
    if (_self.randRange == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.randRange!, (value) {
    return _then(_self.copyWith(randRange: value));
  });
}/// Create a copy of UDPItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomTransformCopyWith<$Res>? get transform {
    if (_self.transform == null) {
    return null;
  }

  return $CustomTransformCopyWith<$Res>(_self.transform!, (value) {
    return _then(_self.copyWith(transform: value));
  });
}
}


/// Adds pattern-matching-related methods to [UDPItem].
extension UDPItemPatterns on UDPItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UDPItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UDPItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UDPItem value)  $default,){
final _that = this;
switch (_that) {
case _UDPItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UDPItem value)?  $default,){
final _that = this;
switch (_that) {
case _UDPItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? rand,  XrayInt32Range? randRange,  String? capture,  String? type,  String? reuse,  CustomTransform? transform,  Object? packet)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UDPItem() when $default != null:
return $default(_that.rand,_that.randRange,_that.capture,_that.type,_that.reuse,_that.transform,_that.packet);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? rand,  XrayInt32Range? randRange,  String? capture,  String? type,  String? reuse,  CustomTransform? transform,  Object? packet)  $default,) {final _that = this;
switch (_that) {
case _UDPItem():
return $default(_that.rand,_that.randRange,_that.capture,_that.type,_that.reuse,_that.transform,_that.packet);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? rand,  XrayInt32Range? randRange,  String? capture,  String? type,  String? reuse,  CustomTransform? transform,  Object? packet)?  $default,) {final _that = this;
switch (_that) {
case _UDPItem() when $default != null:
return $default(_that.rand,_that.randRange,_that.capture,_that.type,_that.reuse,_that.transform,_that.packet);case _:
  return null;

}
}

}

/// @nodoc


class _UDPItem extends UDPItem {
  const _UDPItem({this.rand, this.randRange, this.capture, this.type, this.reuse, this.transform, this.packet}): super._();
  

@override final  int? rand;
@override final  XrayInt32Range? randRange;
@override final  String? capture;
@override final  String? type;
@override final  String? reuse;
@override final  CustomTransform? transform;
@override final  Object? packet;

/// Create a copy of UDPItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UDPItemCopyWith<_UDPItem> get copyWith => __$UDPItemCopyWithImpl<_UDPItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UDPItem&&(identical(other.rand, rand) || other.rand == rand)&&(identical(other.randRange, randRange) || other.randRange == randRange)&&(identical(other.capture, capture) || other.capture == capture)&&(identical(other.type, type) || other.type == type)&&(identical(other.reuse, reuse) || other.reuse == reuse)&&(identical(other.transform, transform) || other.transform == transform)&&const DeepCollectionEquality().equals(other.packet, packet));
}


@override
int get hashCode => Object.hash(runtimeType,rand,randRange,capture,type,reuse,transform,const DeepCollectionEquality().hash(packet));

@override
String toString() {
  return 'UDPItem(rand: $rand, randRange: $randRange, capture: $capture, type: $type, reuse: $reuse, transform: $transform, packet: $packet)';
}


}

/// @nodoc
abstract mixin class _$UDPItemCopyWith<$Res> implements $UDPItemCopyWith<$Res> {
  factory _$UDPItemCopyWith(_UDPItem value, $Res Function(_UDPItem) _then) = __$UDPItemCopyWithImpl;
@override @useResult
$Res call({
 int? rand, XrayInt32Range? randRange, String? capture, String? type, String? reuse, CustomTransform? transform, Object? packet
});


@override $XrayInt32RangeCopyWith<$Res>? get randRange;@override $CustomTransformCopyWith<$Res>? get transform;

}
/// @nodoc
class __$UDPItemCopyWithImpl<$Res>
    implements _$UDPItemCopyWith<$Res> {
  __$UDPItemCopyWithImpl(this._self, this._then);

  final _UDPItem _self;
  final $Res Function(_UDPItem) _then;

/// Create a copy of UDPItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rand = freezed,Object? randRange = freezed,Object? capture = freezed,Object? type = freezed,Object? reuse = freezed,Object? transform = freezed,Object? packet = freezed,}) {
  return _then(_UDPItem(
rand: freezed == rand ? _self.rand : rand // ignore: cast_nullable_to_non_nullable
as int?,randRange: freezed == randRange ? _self.randRange : randRange // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,capture: freezed == capture ? _self.capture : capture // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,reuse: freezed == reuse ? _self.reuse : reuse // ignore: cast_nullable_to_non_nullable
as String?,transform: freezed == transform ? _self.transform : transform // ignore: cast_nullable_to_non_nullable
as CustomTransform?,packet: freezed == packet ? _self.packet : packet ,
  ));
}

/// Create a copy of UDPItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get randRange {
    if (_self.randRange == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.randRange!, (value) {
    return _then(_self.copyWith(randRange: value));
  });
}/// Create a copy of UDPItem
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomTransformCopyWith<$Res>? get transform {
    if (_self.transform == null) {
    return null;
  }

  return $CustomTransformCopyWith<$Res>(_self.transform!, (value) {
    return _then(_self.copyWith(transform: value));
  });
}
}

/// @nodoc
mixin _$WebSocketConfig {

 String? get host; String? get path; Map<String, String>? get headers; bool? get acceptProxyProtocol; int? get heartbeatPeriod;
/// Create a copy of WebSocketConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebSocketConfigCopyWith<WebSocketConfig> get copyWith => _$WebSocketConfigCopyWithImpl<WebSocketConfig>(this as WebSocketConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebSocketConfig&&(identical(other.host, host) || other.host == host)&&(identical(other.path, path) || other.path == path)&&const DeepCollectionEquality().equals(other.headers, headers)&&(identical(other.acceptProxyProtocol, acceptProxyProtocol) || other.acceptProxyProtocol == acceptProxyProtocol)&&(identical(other.heartbeatPeriod, heartbeatPeriod) || other.heartbeatPeriod == heartbeatPeriod));
}


@override
int get hashCode => Object.hash(runtimeType,host,path,const DeepCollectionEquality().hash(headers),acceptProxyProtocol,heartbeatPeriod);

@override
String toString() {
  return 'WebSocketConfig(host: $host, path: $path, headers: $headers, acceptProxyProtocol: $acceptProxyProtocol, heartbeatPeriod: $heartbeatPeriod)';
}


}

/// @nodoc
abstract mixin class $WebSocketConfigCopyWith<$Res>  {
  factory $WebSocketConfigCopyWith(WebSocketConfig value, $Res Function(WebSocketConfig) _then) = _$WebSocketConfigCopyWithImpl;
@useResult
$Res call({
 String? host, String? path, Map<String, String>? headers, bool? acceptProxyProtocol, int? heartbeatPeriod
});




}
/// @nodoc
class _$WebSocketConfigCopyWithImpl<$Res>
    implements $WebSocketConfigCopyWith<$Res> {
  _$WebSocketConfigCopyWithImpl(this._self, this._then);

  final WebSocketConfig _self;
  final $Res Function(WebSocketConfig) _then;

/// Create a copy of WebSocketConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? host = freezed,Object? path = freezed,Object? headers = freezed,Object? acceptProxyProtocol = freezed,Object? heartbeatPeriod = freezed,}) {
  return _then(_self.copyWith(
host: freezed == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,headers: freezed == headers ? _self.headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,acceptProxyProtocol: freezed == acceptProxyProtocol ? _self.acceptProxyProtocol : acceptProxyProtocol // ignore: cast_nullable_to_non_nullable
as bool?,heartbeatPeriod: freezed == heartbeatPeriod ? _self.heartbeatPeriod : heartbeatPeriod // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [WebSocketConfig].
extension WebSocketConfigPatterns on WebSocketConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WebSocketConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WebSocketConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WebSocketConfig value)  $default,){
final _that = this;
switch (_that) {
case _WebSocketConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WebSocketConfig value)?  $default,){
final _that = this;
switch (_that) {
case _WebSocketConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? host,  String? path,  Map<String, String>? headers,  bool? acceptProxyProtocol,  int? heartbeatPeriod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WebSocketConfig() when $default != null:
return $default(_that.host,_that.path,_that.headers,_that.acceptProxyProtocol,_that.heartbeatPeriod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? host,  String? path,  Map<String, String>? headers,  bool? acceptProxyProtocol,  int? heartbeatPeriod)  $default,) {final _that = this;
switch (_that) {
case _WebSocketConfig():
return $default(_that.host,_that.path,_that.headers,_that.acceptProxyProtocol,_that.heartbeatPeriod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? host,  String? path,  Map<String, String>? headers,  bool? acceptProxyProtocol,  int? heartbeatPeriod)?  $default,) {final _that = this;
switch (_that) {
case _WebSocketConfig() when $default != null:
return $default(_that.host,_that.path,_that.headers,_that.acceptProxyProtocol,_that.heartbeatPeriod);case _:
  return null;

}
}

}

/// @nodoc


class _WebSocketConfig extends WebSocketConfig {
  const _WebSocketConfig({this.host, this.path, final  Map<String, String>? headers, this.acceptProxyProtocol, this.heartbeatPeriod}): _headers = headers,super._();
  

@override final  String? host;
@override final  String? path;
 final  Map<String, String>? _headers;
@override Map<String, String>? get headers {
  final value = _headers;
  if (value == null) return null;
  if (_headers is EqualUnmodifiableMapView) return _headers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}

@override final  bool? acceptProxyProtocol;
@override final  int? heartbeatPeriod;

/// Create a copy of WebSocketConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WebSocketConfigCopyWith<_WebSocketConfig> get copyWith => __$WebSocketConfigCopyWithImpl<_WebSocketConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebSocketConfig&&(identical(other.host, host) || other.host == host)&&(identical(other.path, path) || other.path == path)&&const DeepCollectionEquality().equals(other._headers, _headers)&&(identical(other.acceptProxyProtocol, acceptProxyProtocol) || other.acceptProxyProtocol == acceptProxyProtocol)&&(identical(other.heartbeatPeriod, heartbeatPeriod) || other.heartbeatPeriod == heartbeatPeriod));
}


@override
int get hashCode => Object.hash(runtimeType,host,path,const DeepCollectionEquality().hash(_headers),acceptProxyProtocol,heartbeatPeriod);

@override
String toString() {
  return 'WebSocketConfig(host: $host, path: $path, headers: $headers, acceptProxyProtocol: $acceptProxyProtocol, heartbeatPeriod: $heartbeatPeriod)';
}


}

/// @nodoc
abstract mixin class _$WebSocketConfigCopyWith<$Res> implements $WebSocketConfigCopyWith<$Res> {
  factory _$WebSocketConfigCopyWith(_WebSocketConfig value, $Res Function(_WebSocketConfig) _then) = __$WebSocketConfigCopyWithImpl;
@override @useResult
$Res call({
 String? host, String? path, Map<String, String>? headers, bool? acceptProxyProtocol, int? heartbeatPeriod
});




}
/// @nodoc
class __$WebSocketConfigCopyWithImpl<$Res>
    implements _$WebSocketConfigCopyWith<$Res> {
  __$WebSocketConfigCopyWithImpl(this._self, this._then);

  final _WebSocketConfig _self;
  final $Res Function(_WebSocketConfig) _then;

/// Create a copy of WebSocketConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? host = freezed,Object? path = freezed,Object? headers = freezed,Object? acceptProxyProtocol = freezed,Object? heartbeatPeriod = freezed,}) {
  return _then(_WebSocketConfig(
host: freezed == host ? _self.host : host // ignore: cast_nullable_to_non_nullable
as String?,path: freezed == path ? _self.path : path // ignore: cast_nullable_to_non_nullable
as String?,headers: freezed == headers ? _self._headers : headers // ignore: cast_nullable_to_non_nullable
as Map<String, String>?,acceptProxyProtocol: freezed == acceptProxyProtocol ? _self.acceptProxyProtocol : acceptProxyProtocol // ignore: cast_nullable_to_non_nullable
as bool?,heartbeatPeriod: freezed == heartbeatPeriod ? _self.heartbeatPeriod : heartbeatPeriod // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$Xdns {

 Object? get domain; List<String>? get domains; List<String>? get resolvers;
/// Create a copy of Xdns
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$XdnsCopyWith<Xdns> get copyWith => _$XdnsCopyWithImpl<Xdns>(this as Xdns, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Xdns&&const DeepCollectionEquality().equals(other.domain, domain)&&const DeepCollectionEquality().equals(other.domains, domains)&&const DeepCollectionEquality().equals(other.resolvers, resolvers));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(domain),const DeepCollectionEquality().hash(domains),const DeepCollectionEquality().hash(resolvers));

@override
String toString() {
  return 'Xdns(domain: $domain, domains: $domains, resolvers: $resolvers)';
}


}

/// @nodoc
abstract mixin class $XdnsCopyWith<$Res>  {
  factory $XdnsCopyWith(Xdns value, $Res Function(Xdns) _then) = _$XdnsCopyWithImpl;
@useResult
$Res call({
 Object? domain, List<String>? domains, List<String>? resolvers
});




}
/// @nodoc
class _$XdnsCopyWithImpl<$Res>
    implements $XdnsCopyWith<$Res> {
  _$XdnsCopyWithImpl(this._self, this._then);

  final Xdns _self;
  final $Res Function(Xdns) _then;

/// Create a copy of Xdns
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? domain = freezed,Object? domains = freezed,Object? resolvers = freezed,}) {
  return _then(_self.copyWith(
domain: freezed == domain ? _self.domain : domain ,domains: freezed == domains ? _self.domains : domains // ignore: cast_nullable_to_non_nullable
as List<String>?,resolvers: freezed == resolvers ? _self.resolvers : resolvers // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Xdns].
extension XdnsPatterns on Xdns {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Xdns value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Xdns() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Xdns value)  $default,){
final _that = this;
switch (_that) {
case _Xdns():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Xdns value)?  $default,){
final _that = this;
switch (_that) {
case _Xdns() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Object? domain,  List<String>? domains,  List<String>? resolvers)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Xdns() when $default != null:
return $default(_that.domain,_that.domains,_that.resolvers);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Object? domain,  List<String>? domains,  List<String>? resolvers)  $default,) {final _that = this;
switch (_that) {
case _Xdns():
return $default(_that.domain,_that.domains,_that.resolvers);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Object? domain,  List<String>? domains,  List<String>? resolvers)?  $default,) {final _that = this;
switch (_that) {
case _Xdns() when $default != null:
return $default(_that.domain,_that.domains,_that.resolvers);case _:
  return null;

}
}

}

/// @nodoc


class _Xdns extends Xdns {
  const _Xdns({this.domain, final  List<String>? domains, final  List<String>? resolvers}): _domains = domains,_resolvers = resolvers,super._();
  

@override final  Object? domain;
 final  List<String>? _domains;
@override List<String>? get domains {
  final value = _domains;
  if (value == null) return null;
  if (_domains is EqualUnmodifiableListView) return _domains;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _resolvers;
@override List<String>? get resolvers {
  final value = _resolvers;
  if (value == null) return null;
  if (_resolvers is EqualUnmodifiableListView) return _resolvers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Xdns
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$XdnsCopyWith<_Xdns> get copyWith => __$XdnsCopyWithImpl<_Xdns>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Xdns&&const DeepCollectionEquality().equals(other.domain, domain)&&const DeepCollectionEquality().equals(other._domains, _domains)&&const DeepCollectionEquality().equals(other._resolvers, _resolvers));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(domain),const DeepCollectionEquality().hash(_domains),const DeepCollectionEquality().hash(_resolvers));

@override
String toString() {
  return 'Xdns(domain: $domain, domains: $domains, resolvers: $resolvers)';
}


}

/// @nodoc
abstract mixin class _$XdnsCopyWith<$Res> implements $XdnsCopyWith<$Res> {
  factory _$XdnsCopyWith(_Xdns value, $Res Function(_Xdns) _then) = __$XdnsCopyWithImpl;
@override @useResult
$Res call({
 Object? domain, List<String>? domains, List<String>? resolvers
});




}
/// @nodoc
class __$XdnsCopyWithImpl<$Res>
    implements _$XdnsCopyWith<$Res> {
  __$XdnsCopyWithImpl(this._self, this._then);

  final _Xdns _self;
  final $Res Function(_Xdns) _then;

/// Create a copy of Xdns
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? domain = freezed,Object? domains = freezed,Object? resolvers = freezed,}) {
  return _then(_Xdns(
domain: freezed == domain ? _self.domain : domain ,domains: freezed == domains ? _self._domains : domains // ignore: cast_nullable_to_non_nullable
as List<String>?,resolvers: freezed == resolvers ? _self._resolvers : resolvers // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}


}

/// @nodoc
mixin _$Xicmp {

 String? get listenIp; int? get id;
/// Create a copy of Xicmp
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$XicmpCopyWith<Xicmp> get copyWith => _$XicmpCopyWithImpl<Xicmp>(this as Xicmp, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Xicmp&&(identical(other.listenIp, listenIp) || other.listenIp == listenIp)&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,listenIp,id);

@override
String toString() {
  return 'Xicmp(listenIp: $listenIp, id: $id)';
}


}

/// @nodoc
abstract mixin class $XicmpCopyWith<$Res>  {
  factory $XicmpCopyWith(Xicmp value, $Res Function(Xicmp) _then) = _$XicmpCopyWithImpl;
@useResult
$Res call({
 String? listenIp, int? id
});




}
/// @nodoc
class _$XicmpCopyWithImpl<$Res>
    implements $XicmpCopyWith<$Res> {
  _$XicmpCopyWithImpl(this._self, this._then);

  final Xicmp _self;
  final $Res Function(Xicmp) _then;

/// Create a copy of Xicmp
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? listenIp = freezed,Object? id = freezed,}) {
  return _then(_self.copyWith(
listenIp: freezed == listenIp ? _self.listenIp : listenIp // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Xicmp].
extension XicmpPatterns on Xicmp {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Xicmp value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Xicmp() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Xicmp value)  $default,){
final _that = this;
switch (_that) {
case _Xicmp():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Xicmp value)?  $default,){
final _that = this;
switch (_that) {
case _Xicmp() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? listenIp,  int? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Xicmp() when $default != null:
return $default(_that.listenIp,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? listenIp,  int? id)  $default,) {final _that = this;
switch (_that) {
case _Xicmp():
return $default(_that.listenIp,_that.id);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? listenIp,  int? id)?  $default,) {final _that = this;
switch (_that) {
case _Xicmp() when $default != null:
return $default(_that.listenIp,_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _Xicmp extends Xicmp {
  const _Xicmp({this.listenIp, this.id}): super._();
  

@override final  String? listenIp;
@override final  int? id;

/// Create a copy of Xicmp
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$XicmpCopyWith<_Xicmp> get copyWith => __$XicmpCopyWithImpl<_Xicmp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Xicmp&&(identical(other.listenIp, listenIp) || other.listenIp == listenIp)&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,listenIp,id);

@override
String toString() {
  return 'Xicmp(listenIp: $listenIp, id: $id)';
}


}

/// @nodoc
abstract mixin class _$XicmpCopyWith<$Res> implements $XicmpCopyWith<$Res> {
  factory _$XicmpCopyWith(_Xicmp value, $Res Function(_Xicmp) _then) = __$XicmpCopyWithImpl;
@override @useResult
$Res call({
 String? listenIp, int? id
});




}
/// @nodoc
class __$XicmpCopyWithImpl<$Res>
    implements _$XicmpCopyWith<$Res> {
  __$XicmpCopyWithImpl(this._self, this._then);

  final _Xicmp _self;
  final $Res Function(_Xicmp) _then;

/// Create a copy of Xicmp
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? listenIp = freezed,Object? id = freezed,}) {
  return _then(_Xicmp(
listenIp: freezed == listenIp ? _self.listenIp : listenIp // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc
mixin _$XmuxConfig {

 XrayInt32Range? get maxConcurrency; XrayInt32Range? get maxConnections; XrayInt32Range? get cMaxReuseTimes; XrayInt32Range? get hMaxRequestTimes; XrayInt32Range? get hMaxReusableSecs; int? get hKeepAlivePeriod;
/// Create a copy of XmuxConfig
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$XmuxConfigCopyWith<XmuxConfig> get copyWith => _$XmuxConfigCopyWithImpl<XmuxConfig>(this as XmuxConfig, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is XmuxConfig&&(identical(other.maxConcurrency, maxConcurrency) || other.maxConcurrency == maxConcurrency)&&(identical(other.maxConnections, maxConnections) || other.maxConnections == maxConnections)&&(identical(other.cMaxReuseTimes, cMaxReuseTimes) || other.cMaxReuseTimes == cMaxReuseTimes)&&(identical(other.hMaxRequestTimes, hMaxRequestTimes) || other.hMaxRequestTimes == hMaxRequestTimes)&&(identical(other.hMaxReusableSecs, hMaxReusableSecs) || other.hMaxReusableSecs == hMaxReusableSecs)&&(identical(other.hKeepAlivePeriod, hKeepAlivePeriod) || other.hKeepAlivePeriod == hKeepAlivePeriod));
}


@override
int get hashCode => Object.hash(runtimeType,maxConcurrency,maxConnections,cMaxReuseTimes,hMaxRequestTimes,hMaxReusableSecs,hKeepAlivePeriod);

@override
String toString() {
  return 'XmuxConfig(maxConcurrency: $maxConcurrency, maxConnections: $maxConnections, cMaxReuseTimes: $cMaxReuseTimes, hMaxRequestTimes: $hMaxRequestTimes, hMaxReusableSecs: $hMaxReusableSecs, hKeepAlivePeriod: $hKeepAlivePeriod)';
}


}

/// @nodoc
abstract mixin class $XmuxConfigCopyWith<$Res>  {
  factory $XmuxConfigCopyWith(XmuxConfig value, $Res Function(XmuxConfig) _then) = _$XmuxConfigCopyWithImpl;
@useResult
$Res call({
 XrayInt32Range? maxConcurrency, XrayInt32Range? maxConnections, XrayInt32Range? cMaxReuseTimes, XrayInt32Range? hMaxRequestTimes, XrayInt32Range? hMaxReusableSecs, int? hKeepAlivePeriod
});


$XrayInt32RangeCopyWith<$Res>? get maxConcurrency;$XrayInt32RangeCopyWith<$Res>? get maxConnections;$XrayInt32RangeCopyWith<$Res>? get cMaxReuseTimes;$XrayInt32RangeCopyWith<$Res>? get hMaxRequestTimes;$XrayInt32RangeCopyWith<$Res>? get hMaxReusableSecs;

}
/// @nodoc
class _$XmuxConfigCopyWithImpl<$Res>
    implements $XmuxConfigCopyWith<$Res> {
  _$XmuxConfigCopyWithImpl(this._self, this._then);

  final XmuxConfig _self;
  final $Res Function(XmuxConfig) _then;

/// Create a copy of XmuxConfig
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maxConcurrency = freezed,Object? maxConnections = freezed,Object? cMaxReuseTimes = freezed,Object? hMaxRequestTimes = freezed,Object? hMaxReusableSecs = freezed,Object? hKeepAlivePeriod = freezed,}) {
  return _then(_self.copyWith(
maxConcurrency: freezed == maxConcurrency ? _self.maxConcurrency : maxConcurrency // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,maxConnections: freezed == maxConnections ? _self.maxConnections : maxConnections // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,cMaxReuseTimes: freezed == cMaxReuseTimes ? _self.cMaxReuseTimes : cMaxReuseTimes // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,hMaxRequestTimes: freezed == hMaxRequestTimes ? _self.hMaxRequestTimes : hMaxRequestTimes // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,hMaxReusableSecs: freezed == hMaxReusableSecs ? _self.hMaxReusableSecs : hMaxReusableSecs // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,hKeepAlivePeriod: freezed == hKeepAlivePeriod ? _self.hKeepAlivePeriod : hKeepAlivePeriod // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of XmuxConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get maxConcurrency {
    if (_self.maxConcurrency == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.maxConcurrency!, (value) {
    return _then(_self.copyWith(maxConcurrency: value));
  });
}/// Create a copy of XmuxConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get maxConnections {
    if (_self.maxConnections == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.maxConnections!, (value) {
    return _then(_self.copyWith(maxConnections: value));
  });
}/// Create a copy of XmuxConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get cMaxReuseTimes {
    if (_self.cMaxReuseTimes == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.cMaxReuseTimes!, (value) {
    return _then(_self.copyWith(cMaxReuseTimes: value));
  });
}/// Create a copy of XmuxConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get hMaxRequestTimes {
    if (_self.hMaxRequestTimes == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.hMaxRequestTimes!, (value) {
    return _then(_self.copyWith(hMaxRequestTimes: value));
  });
}/// Create a copy of XmuxConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get hMaxReusableSecs {
    if (_self.hMaxReusableSecs == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.hMaxReusableSecs!, (value) {
    return _then(_self.copyWith(hMaxReusableSecs: value));
  });
}
}


/// Adds pattern-matching-related methods to [XmuxConfig].
extension XmuxConfigPatterns on XmuxConfig {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _XmuxConfig value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _XmuxConfig() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _XmuxConfig value)  $default,){
final _that = this;
switch (_that) {
case _XmuxConfig():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _XmuxConfig value)?  $default,){
final _that = this;
switch (_that) {
case _XmuxConfig() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( XrayInt32Range? maxConcurrency,  XrayInt32Range? maxConnections,  XrayInt32Range? cMaxReuseTimes,  XrayInt32Range? hMaxRequestTimes,  XrayInt32Range? hMaxReusableSecs,  int? hKeepAlivePeriod)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _XmuxConfig() when $default != null:
return $default(_that.maxConcurrency,_that.maxConnections,_that.cMaxReuseTimes,_that.hMaxRequestTimes,_that.hMaxReusableSecs,_that.hKeepAlivePeriod);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( XrayInt32Range? maxConcurrency,  XrayInt32Range? maxConnections,  XrayInt32Range? cMaxReuseTimes,  XrayInt32Range? hMaxRequestTimes,  XrayInt32Range? hMaxReusableSecs,  int? hKeepAlivePeriod)  $default,) {final _that = this;
switch (_that) {
case _XmuxConfig():
return $default(_that.maxConcurrency,_that.maxConnections,_that.cMaxReuseTimes,_that.hMaxRequestTimes,_that.hMaxReusableSecs,_that.hKeepAlivePeriod);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( XrayInt32Range? maxConcurrency,  XrayInt32Range? maxConnections,  XrayInt32Range? cMaxReuseTimes,  XrayInt32Range? hMaxRequestTimes,  XrayInt32Range? hMaxReusableSecs,  int? hKeepAlivePeriod)?  $default,) {final _that = this;
switch (_that) {
case _XmuxConfig() when $default != null:
return $default(_that.maxConcurrency,_that.maxConnections,_that.cMaxReuseTimes,_that.hMaxRequestTimes,_that.hMaxReusableSecs,_that.hKeepAlivePeriod);case _:
  return null;

}
}

}

/// @nodoc


class _XmuxConfig extends XmuxConfig {
  const _XmuxConfig({this.maxConcurrency, this.maxConnections, this.cMaxReuseTimes, this.hMaxRequestTimes, this.hMaxReusableSecs, this.hKeepAlivePeriod}): super._();
  

@override final  XrayInt32Range? maxConcurrency;
@override final  XrayInt32Range? maxConnections;
@override final  XrayInt32Range? cMaxReuseTimes;
@override final  XrayInt32Range? hMaxRequestTimes;
@override final  XrayInt32Range? hMaxReusableSecs;
@override final  int? hKeepAlivePeriod;

/// Create a copy of XmuxConfig
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$XmuxConfigCopyWith<_XmuxConfig> get copyWith => __$XmuxConfigCopyWithImpl<_XmuxConfig>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _XmuxConfig&&(identical(other.maxConcurrency, maxConcurrency) || other.maxConcurrency == maxConcurrency)&&(identical(other.maxConnections, maxConnections) || other.maxConnections == maxConnections)&&(identical(other.cMaxReuseTimes, cMaxReuseTimes) || other.cMaxReuseTimes == cMaxReuseTimes)&&(identical(other.hMaxRequestTimes, hMaxRequestTimes) || other.hMaxRequestTimes == hMaxRequestTimes)&&(identical(other.hMaxReusableSecs, hMaxReusableSecs) || other.hMaxReusableSecs == hMaxReusableSecs)&&(identical(other.hKeepAlivePeriod, hKeepAlivePeriod) || other.hKeepAlivePeriod == hKeepAlivePeriod));
}


@override
int get hashCode => Object.hash(runtimeType,maxConcurrency,maxConnections,cMaxReuseTimes,hMaxRequestTimes,hMaxReusableSecs,hKeepAlivePeriod);

@override
String toString() {
  return 'XmuxConfig(maxConcurrency: $maxConcurrency, maxConnections: $maxConnections, cMaxReuseTimes: $cMaxReuseTimes, hMaxRequestTimes: $hMaxRequestTimes, hMaxReusableSecs: $hMaxReusableSecs, hKeepAlivePeriod: $hKeepAlivePeriod)';
}


}

/// @nodoc
abstract mixin class _$XmuxConfigCopyWith<$Res> implements $XmuxConfigCopyWith<$Res> {
  factory _$XmuxConfigCopyWith(_XmuxConfig value, $Res Function(_XmuxConfig) _then) = __$XmuxConfigCopyWithImpl;
@override @useResult
$Res call({
 XrayInt32Range? maxConcurrency, XrayInt32Range? maxConnections, XrayInt32Range? cMaxReuseTimes, XrayInt32Range? hMaxRequestTimes, XrayInt32Range? hMaxReusableSecs, int? hKeepAlivePeriod
});


@override $XrayInt32RangeCopyWith<$Res>? get maxConcurrency;@override $XrayInt32RangeCopyWith<$Res>? get maxConnections;@override $XrayInt32RangeCopyWith<$Res>? get cMaxReuseTimes;@override $XrayInt32RangeCopyWith<$Res>? get hMaxRequestTimes;@override $XrayInt32RangeCopyWith<$Res>? get hMaxReusableSecs;

}
/// @nodoc
class __$XmuxConfigCopyWithImpl<$Res>
    implements _$XmuxConfigCopyWith<$Res> {
  __$XmuxConfigCopyWithImpl(this._self, this._then);

  final _XmuxConfig _self;
  final $Res Function(_XmuxConfig) _then;

/// Create a copy of XmuxConfig
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maxConcurrency = freezed,Object? maxConnections = freezed,Object? cMaxReuseTimes = freezed,Object? hMaxRequestTimes = freezed,Object? hMaxReusableSecs = freezed,Object? hKeepAlivePeriod = freezed,}) {
  return _then(_XmuxConfig(
maxConcurrency: freezed == maxConcurrency ? _self.maxConcurrency : maxConcurrency // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,maxConnections: freezed == maxConnections ? _self.maxConnections : maxConnections // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,cMaxReuseTimes: freezed == cMaxReuseTimes ? _self.cMaxReuseTimes : cMaxReuseTimes // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,hMaxRequestTimes: freezed == hMaxRequestTimes ? _self.hMaxRequestTimes : hMaxRequestTimes // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,hMaxReusableSecs: freezed == hMaxReusableSecs ? _self.hMaxReusableSecs : hMaxReusableSecs // ignore: cast_nullable_to_non_nullable
as XrayInt32Range?,hKeepAlivePeriod: freezed == hKeepAlivePeriod ? _self.hKeepAlivePeriod : hKeepAlivePeriod // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of XmuxConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get maxConcurrency {
    if (_self.maxConcurrency == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.maxConcurrency!, (value) {
    return _then(_self.copyWith(maxConcurrency: value));
  });
}/// Create a copy of XmuxConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get maxConnections {
    if (_self.maxConnections == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.maxConnections!, (value) {
    return _then(_self.copyWith(maxConnections: value));
  });
}/// Create a copy of XmuxConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get cMaxReuseTimes {
    if (_self.cMaxReuseTimes == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.cMaxReuseTimes!, (value) {
    return _then(_self.copyWith(cMaxReuseTimes: value));
  });
}/// Create a copy of XmuxConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get hMaxRequestTimes {
    if (_self.hMaxRequestTimes == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.hMaxRequestTimes!, (value) {
    return _then(_self.copyWith(hMaxRequestTimes: value));
  });
}/// Create a copy of XmuxConfig
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$XrayInt32RangeCopyWith<$Res>? get hMaxReusableSecs {
    if (_self.hMaxReusableSecs == null) {
    return null;
  }

  return $XrayInt32RangeCopyWith<$Res>(_self.hMaxReusableSecs!, (value) {
    return _then(_self.copyWith(hMaxReusableSecs: value));
  });
}
}

// dart format on

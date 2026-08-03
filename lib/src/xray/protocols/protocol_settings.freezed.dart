// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'protocol_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DNSOutboundConfig {
  XrayNetwork? get rewriteNetwork;
  XrayAddress? get rewriteAddress;
  int? get rewritePort;
  XrayNetwork? get network;
  XrayAddress? get address;
  int? get port;
  int? get userLevel;
  List<DNSOutboundRuleConfig>? get rules;
  String? get nonIPQuery;
  List<int>? get blockTypes;

  /// Create a copy of DNSOutboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DNSOutboundConfigCopyWith<DNSOutboundConfig> get copyWith =>
      _$DNSOutboundConfigCopyWithImpl<DNSOutboundConfig>(
          this as DNSOutboundConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DNSOutboundConfig &&
            (identical(other.rewriteNetwork, rewriteNetwork) ||
                other.rewriteNetwork == rewriteNetwork) &&
            (identical(other.rewriteAddress, rewriteAddress) ||
                other.rewriteAddress == rewriteAddress) &&
            (identical(other.rewritePort, rewritePort) ||
                other.rewritePort == rewritePort) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.userLevel, userLevel) ||
                other.userLevel == userLevel) &&
            const DeepCollectionEquality().equals(other.rules, rules) &&
            (identical(other.nonIPQuery, nonIPQuery) ||
                other.nonIPQuery == nonIPQuery) &&
            const DeepCollectionEquality()
                .equals(other.blockTypes, blockTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      rewriteNetwork,
      rewriteAddress,
      rewritePort,
      network,
      address,
      port,
      userLevel,
      const DeepCollectionEquality().hash(rules),
      nonIPQuery,
      const DeepCollectionEquality().hash(blockTypes));

  @override
  String toString() {
    return 'DNSOutboundConfig(rewriteNetwork: $rewriteNetwork, rewriteAddress: $rewriteAddress, rewritePort: $rewritePort, network: $network, address: $address, port: $port, userLevel: $userLevel, rules: $rules, nonIPQuery: $nonIPQuery, blockTypes: $blockTypes)';
  }
}

/// @nodoc
abstract mixin class $DNSOutboundConfigCopyWith<$Res> {
  factory $DNSOutboundConfigCopyWith(
          DNSOutboundConfig value, $Res Function(DNSOutboundConfig) _then) =
      _$DNSOutboundConfigCopyWithImpl;
  @useResult
  $Res call(
      {XrayNetwork? rewriteNetwork,
      XrayAddress? rewriteAddress,
      int? rewritePort,
      XrayNetwork? network,
      XrayAddress? address,
      int? port,
      int? userLevel,
      List<DNSOutboundRuleConfig>? rules,
      String? nonIPQuery,
      List<int>? blockTypes});
}

/// @nodoc
class _$DNSOutboundConfigCopyWithImpl<$Res>
    implements $DNSOutboundConfigCopyWith<$Res> {
  _$DNSOutboundConfigCopyWithImpl(this._self, this._then);

  final DNSOutboundConfig _self;
  final $Res Function(DNSOutboundConfig) _then;

  /// Create a copy of DNSOutboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rewriteNetwork = freezed,
    Object? rewriteAddress = freezed,
    Object? rewritePort = freezed,
    Object? network = freezed,
    Object? address = freezed,
    Object? port = freezed,
    Object? userLevel = freezed,
    Object? rules = freezed,
    Object? nonIPQuery = freezed,
    Object? blockTypes = freezed,
  }) {
    return _then(_self.copyWith(
      rewriteNetwork: freezed == rewriteNetwork
          ? _self.rewriteNetwork
          : rewriteNetwork // ignore: cast_nullable_to_non_nullable
              as XrayNetwork?,
      rewriteAddress: freezed == rewriteAddress
          ? _self.rewriteAddress
          : rewriteAddress // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      rewritePort: freezed == rewritePort
          ? _self.rewritePort
          : rewritePort // ignore: cast_nullable_to_non_nullable
              as int?,
      network: freezed == network
          ? _self.network
          : network // ignore: cast_nullable_to_non_nullable
              as XrayNetwork?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      userLevel: freezed == userLevel
          ? _self.userLevel
          : userLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      rules: freezed == rules
          ? _self.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<DNSOutboundRuleConfig>?,
      nonIPQuery: freezed == nonIPQuery
          ? _self.nonIPQuery
          : nonIPQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      blockTypes: freezed == blockTypes
          ? _self.blockTypes
          : blockTypes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DNSOutboundConfig].
extension DNSOutboundConfigPatterns on DNSOutboundConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DNSOutboundConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DNSOutboundConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DNSOutboundConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DNSOutboundConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DNSOutboundConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DNSOutboundConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            XrayNetwork? rewriteNetwork,
            XrayAddress? rewriteAddress,
            int? rewritePort,
            XrayNetwork? network,
            XrayAddress? address,
            int? port,
            int? userLevel,
            List<DNSOutboundRuleConfig>? rules,
            String? nonIPQuery,
            List<int>? blockTypes)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DNSOutboundConfig() when $default != null:
        return $default(
            _that.rewriteNetwork,
            _that.rewriteAddress,
            _that.rewritePort,
            _that.network,
            _that.address,
            _that.port,
            _that.userLevel,
            _that.rules,
            _that.nonIPQuery,
            _that.blockTypes);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            XrayNetwork? rewriteNetwork,
            XrayAddress? rewriteAddress,
            int? rewritePort,
            XrayNetwork? network,
            XrayAddress? address,
            int? port,
            int? userLevel,
            List<DNSOutboundRuleConfig>? rules,
            String? nonIPQuery,
            List<int>? blockTypes)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DNSOutboundConfig():
        return $default(
            _that.rewriteNetwork,
            _that.rewriteAddress,
            _that.rewritePort,
            _that.network,
            _that.address,
            _that.port,
            _that.userLevel,
            _that.rules,
            _that.nonIPQuery,
            _that.blockTypes);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            XrayNetwork? rewriteNetwork,
            XrayAddress? rewriteAddress,
            int? rewritePort,
            XrayNetwork? network,
            XrayAddress? address,
            int? port,
            int? userLevel,
            List<DNSOutboundRuleConfig>? rules,
            String? nonIPQuery,
            List<int>? blockTypes)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DNSOutboundConfig() when $default != null:
        return $default(
            _that.rewriteNetwork,
            _that.rewriteAddress,
            _that.rewritePort,
            _that.network,
            _that.address,
            _that.port,
            _that.userLevel,
            _that.rules,
            _that.nonIPQuery,
            _that.blockTypes);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DNSOutboundConfig extends DNSOutboundConfig {
  const _DNSOutboundConfig(
      {this.rewriteNetwork,
      this.rewriteAddress,
      this.rewritePort,
      this.network,
      this.address,
      this.port,
      this.userLevel,
      final List<DNSOutboundRuleConfig>? rules,
      this.nonIPQuery,
      final List<int>? blockTypes})
      : _rules = rules,
        _blockTypes = blockTypes,
        super._();

  @override
  final XrayNetwork? rewriteNetwork;
  @override
  final XrayAddress? rewriteAddress;
  @override
  final int? rewritePort;
  @override
  final XrayNetwork? network;
  @override
  final XrayAddress? address;
  @override
  final int? port;
  @override
  final int? userLevel;
  final List<DNSOutboundRuleConfig>? _rules;
  @override
  List<DNSOutboundRuleConfig>? get rules {
    final value = _rules;
    if (value == null) return null;
    if (_rules is EqualUnmodifiableListView) return _rules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? nonIPQuery;
  final List<int>? _blockTypes;
  @override
  List<int>? get blockTypes {
    final value = _blockTypes;
    if (value == null) return null;
    if (_blockTypes is EqualUnmodifiableListView) return _blockTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of DNSOutboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DNSOutboundConfigCopyWith<_DNSOutboundConfig> get copyWith =>
      __$DNSOutboundConfigCopyWithImpl<_DNSOutboundConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DNSOutboundConfig &&
            (identical(other.rewriteNetwork, rewriteNetwork) ||
                other.rewriteNetwork == rewriteNetwork) &&
            (identical(other.rewriteAddress, rewriteAddress) ||
                other.rewriteAddress == rewriteAddress) &&
            (identical(other.rewritePort, rewritePort) ||
                other.rewritePort == rewritePort) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.userLevel, userLevel) ||
                other.userLevel == userLevel) &&
            const DeepCollectionEquality().equals(other._rules, _rules) &&
            (identical(other.nonIPQuery, nonIPQuery) ||
                other.nonIPQuery == nonIPQuery) &&
            const DeepCollectionEquality()
                .equals(other._blockTypes, _blockTypes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      rewriteNetwork,
      rewriteAddress,
      rewritePort,
      network,
      address,
      port,
      userLevel,
      const DeepCollectionEquality().hash(_rules),
      nonIPQuery,
      const DeepCollectionEquality().hash(_blockTypes));

  @override
  String toString() {
    return 'DNSOutboundConfig(rewriteNetwork: $rewriteNetwork, rewriteAddress: $rewriteAddress, rewritePort: $rewritePort, network: $network, address: $address, port: $port, userLevel: $userLevel, rules: $rules, nonIPQuery: $nonIPQuery, blockTypes: $blockTypes)';
  }
}

/// @nodoc
abstract mixin class _$DNSOutboundConfigCopyWith<$Res>
    implements $DNSOutboundConfigCopyWith<$Res> {
  factory _$DNSOutboundConfigCopyWith(
          _DNSOutboundConfig value, $Res Function(_DNSOutboundConfig) _then) =
      __$DNSOutboundConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {XrayNetwork? rewriteNetwork,
      XrayAddress? rewriteAddress,
      int? rewritePort,
      XrayNetwork? network,
      XrayAddress? address,
      int? port,
      int? userLevel,
      List<DNSOutboundRuleConfig>? rules,
      String? nonIPQuery,
      List<int>? blockTypes});
}

/// @nodoc
class __$DNSOutboundConfigCopyWithImpl<$Res>
    implements _$DNSOutboundConfigCopyWith<$Res> {
  __$DNSOutboundConfigCopyWithImpl(this._self, this._then);

  final _DNSOutboundConfig _self;
  final $Res Function(_DNSOutboundConfig) _then;

  /// Create a copy of DNSOutboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? rewriteNetwork = freezed,
    Object? rewriteAddress = freezed,
    Object? rewritePort = freezed,
    Object? network = freezed,
    Object? address = freezed,
    Object? port = freezed,
    Object? userLevel = freezed,
    Object? rules = freezed,
    Object? nonIPQuery = freezed,
    Object? blockTypes = freezed,
  }) {
    return _then(_DNSOutboundConfig(
      rewriteNetwork: freezed == rewriteNetwork
          ? _self.rewriteNetwork
          : rewriteNetwork // ignore: cast_nullable_to_non_nullable
              as XrayNetwork?,
      rewriteAddress: freezed == rewriteAddress
          ? _self.rewriteAddress
          : rewriteAddress // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      rewritePort: freezed == rewritePort
          ? _self.rewritePort
          : rewritePort // ignore: cast_nullable_to_non_nullable
              as int?,
      network: freezed == network
          ? _self.network
          : network // ignore: cast_nullable_to_non_nullable
              as XrayNetwork?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      userLevel: freezed == userLevel
          ? _self.userLevel
          : userLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      rules: freezed == rules
          ? _self._rules
          : rules // ignore: cast_nullable_to_non_nullable
              as List<DNSOutboundRuleConfig>?,
      nonIPQuery: freezed == nonIPQuery
          ? _self.nonIPQuery
          : nonIPQuery // ignore: cast_nullable_to_non_nullable
              as String?,
      blockTypes: freezed == blockTypes
          ? _self._blockTypes
          : blockTypes // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
mixin _$DNSOutboundRuleConfig {
  DNSOutboundRuleAction get action;
  XrayPortList? get qType;
  XrayStringList? get domain;
  int? get rCode;

  /// Create a copy of DNSOutboundRuleConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DNSOutboundRuleConfigCopyWith<DNSOutboundRuleConfig> get copyWith =>
      _$DNSOutboundRuleConfigCopyWithImpl<DNSOutboundRuleConfig>(
          this as DNSOutboundRuleConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DNSOutboundRuleConfig &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.qType, qType) || other.qType == qType) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.rCode, rCode) || other.rCode == rCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, action, qType, domain, rCode);

  @override
  String toString() {
    return 'DNSOutboundRuleConfig(action: $action, qType: $qType, domain: $domain, rCode: $rCode)';
  }
}

/// @nodoc
abstract mixin class $DNSOutboundRuleConfigCopyWith<$Res> {
  factory $DNSOutboundRuleConfigCopyWith(DNSOutboundRuleConfig value,
          $Res Function(DNSOutboundRuleConfig) _then) =
      _$DNSOutboundRuleConfigCopyWithImpl;
  @useResult
  $Res call(
      {DNSOutboundRuleAction action,
      XrayPortList? qType,
      XrayStringList? domain,
      int? rCode});
}

/// @nodoc
class _$DNSOutboundRuleConfigCopyWithImpl<$Res>
    implements $DNSOutboundRuleConfigCopyWith<$Res> {
  _$DNSOutboundRuleConfigCopyWithImpl(this._self, this._then);

  final DNSOutboundRuleConfig _self;
  final $Res Function(DNSOutboundRuleConfig) _then;

  /// Create a copy of DNSOutboundRuleConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? qType = freezed,
    Object? domain = freezed,
    Object? rCode = freezed,
  }) {
    return _then(_self.copyWith(
      action: null == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as DNSOutboundRuleAction,
      qType: freezed == qType
          ? _self.qType
          : qType // ignore: cast_nullable_to_non_nullable
              as XrayPortList?,
      domain: freezed == domain
          ? _self.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      rCode: freezed == rCode
          ? _self.rCode
          : rCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DNSOutboundRuleConfig].
extension DNSOutboundRuleConfigPatterns on DNSOutboundRuleConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DNSOutboundRuleConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DNSOutboundRuleConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DNSOutboundRuleConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DNSOutboundRuleConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DNSOutboundRuleConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DNSOutboundRuleConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(DNSOutboundRuleAction action, XrayPortList? qType,
            XrayStringList? domain, int? rCode)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DNSOutboundRuleConfig() when $default != null:
        return $default(_that.action, _that.qType, _that.domain, _that.rCode);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(DNSOutboundRuleAction action, XrayPortList? qType,
            XrayStringList? domain, int? rCode)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DNSOutboundRuleConfig():
        return $default(_that.action, _that.qType, _that.domain, _that.rCode);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(DNSOutboundRuleAction action, XrayPortList? qType,
            XrayStringList? domain, int? rCode)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DNSOutboundRuleConfig() when $default != null:
        return $default(_that.action, _that.qType, _that.domain, _that.rCode);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DNSOutboundRuleConfig extends DNSOutboundRuleConfig {
  const _DNSOutboundRuleConfig(
      {required this.action, this.qType, this.domain, this.rCode})
      : super._();

  @override
  final DNSOutboundRuleAction action;
  @override
  final XrayPortList? qType;
  @override
  final XrayStringList? domain;
  @override
  final int? rCode;

  /// Create a copy of DNSOutboundRuleConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DNSOutboundRuleConfigCopyWith<_DNSOutboundRuleConfig> get copyWith =>
      __$DNSOutboundRuleConfigCopyWithImpl<_DNSOutboundRuleConfig>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DNSOutboundRuleConfig &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.qType, qType) || other.qType == qType) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.rCode, rCode) || other.rCode == rCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, action, qType, domain, rCode);

  @override
  String toString() {
    return 'DNSOutboundRuleConfig(action: $action, qType: $qType, domain: $domain, rCode: $rCode)';
  }
}

/// @nodoc
abstract mixin class _$DNSOutboundRuleConfigCopyWith<$Res>
    implements $DNSOutboundRuleConfigCopyWith<$Res> {
  factory _$DNSOutboundRuleConfigCopyWith(_DNSOutboundRuleConfig value,
          $Res Function(_DNSOutboundRuleConfig) _then) =
      __$DNSOutboundRuleConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {DNSOutboundRuleAction action,
      XrayPortList? qType,
      XrayStringList? domain,
      int? rCode});
}

/// @nodoc
class __$DNSOutboundRuleConfigCopyWithImpl<$Res>
    implements _$DNSOutboundRuleConfigCopyWith<$Res> {
  __$DNSOutboundRuleConfigCopyWithImpl(this._self, this._then);

  final _DNSOutboundRuleConfig _self;
  final $Res Function(_DNSOutboundRuleConfig) _then;

  /// Create a copy of DNSOutboundRuleConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? action = null,
    Object? qType = freezed,
    Object? domain = freezed,
    Object? rCode = freezed,
  }) {
    return _then(_DNSOutboundRuleConfig(
      action: null == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as DNSOutboundRuleAction,
      qType: freezed == qType
          ? _self.qType
          : qType // ignore: cast_nullable_to_non_nullable
              as XrayPortList?,
      domain: freezed == domain
          ? _self.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      rCode: freezed == rCode
          ? _self.rCode
          : rCode // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$DokodemoConfig {
  XrayNetworkList? get allowedNetwork;
  XrayAddress? get rewriteAddress;
  int? get rewritePort;
  XrayAddress? get address;
  int? get port;
  Map<String, String>? get portMap;
  @JsonKey(name: 'network')
  XrayNetworkList? get network;
  bool? get followRedirect;
  int? get userLevel;

  /// Create a copy of DokodemoConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DokodemoConfigCopyWith<DokodemoConfig> get copyWith =>
      _$DokodemoConfigCopyWithImpl<DokodemoConfig>(
          this as DokodemoConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DokodemoConfig &&
            (identical(other.allowedNetwork, allowedNetwork) ||
                other.allowedNetwork == allowedNetwork) &&
            (identical(other.rewriteAddress, rewriteAddress) ||
                other.rewriteAddress == rewriteAddress) &&
            (identical(other.rewritePort, rewritePort) ||
                other.rewritePort == rewritePort) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            const DeepCollectionEquality().equals(other.portMap, portMap) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.followRedirect, followRedirect) ||
                other.followRedirect == followRedirect) &&
            (identical(other.userLevel, userLevel) ||
                other.userLevel == userLevel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      allowedNetwork,
      rewriteAddress,
      rewritePort,
      address,
      port,
      const DeepCollectionEquality().hash(portMap),
      network,
      followRedirect,
      userLevel);

  @override
  String toString() {
    return 'DokodemoConfig(allowedNetwork: $allowedNetwork, rewriteAddress: $rewriteAddress, rewritePort: $rewritePort, address: $address, port: $port, portMap: $portMap, network: $network, followRedirect: $followRedirect, userLevel: $userLevel)';
  }
}

/// @nodoc
abstract mixin class $DokodemoConfigCopyWith<$Res> {
  factory $DokodemoConfigCopyWith(
          DokodemoConfig value, $Res Function(DokodemoConfig) _then) =
      _$DokodemoConfigCopyWithImpl;
  @useResult
  $Res call(
      {XrayNetworkList? allowedNetwork,
      XrayAddress? rewriteAddress,
      int? rewritePort,
      XrayAddress? address,
      int? port,
      Map<String, String>? portMap,
      @JsonKey(name: 'network') XrayNetworkList? network,
      bool? followRedirect,
      int? userLevel});
}

/// @nodoc
class _$DokodemoConfigCopyWithImpl<$Res>
    implements $DokodemoConfigCopyWith<$Res> {
  _$DokodemoConfigCopyWithImpl(this._self, this._then);

  final DokodemoConfig _self;
  final $Res Function(DokodemoConfig) _then;

  /// Create a copy of DokodemoConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allowedNetwork = freezed,
    Object? rewriteAddress = freezed,
    Object? rewritePort = freezed,
    Object? address = freezed,
    Object? port = freezed,
    Object? portMap = freezed,
    Object? network = freezed,
    Object? followRedirect = freezed,
    Object? userLevel = freezed,
  }) {
    return _then(_self.copyWith(
      allowedNetwork: freezed == allowedNetwork
          ? _self.allowedNetwork
          : allowedNetwork // ignore: cast_nullable_to_non_nullable
              as XrayNetworkList?,
      rewriteAddress: freezed == rewriteAddress
          ? _self.rewriteAddress
          : rewriteAddress // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      rewritePort: freezed == rewritePort
          ? _self.rewritePort
          : rewritePort // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      portMap: freezed == portMap
          ? _self.portMap
          : portMap // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      network: freezed == network
          ? _self.network
          : network // ignore: cast_nullable_to_non_nullable
              as XrayNetworkList?,
      followRedirect: freezed == followRedirect
          ? _self.followRedirect
          : followRedirect // ignore: cast_nullable_to_non_nullable
              as bool?,
      userLevel: freezed == userLevel
          ? _self.userLevel
          : userLevel // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [DokodemoConfig].
extension DokodemoConfigPatterns on DokodemoConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DokodemoConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DokodemoConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DokodemoConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DokodemoConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DokodemoConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DokodemoConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            XrayNetworkList? allowedNetwork,
            XrayAddress? rewriteAddress,
            int? rewritePort,
            XrayAddress? address,
            int? port,
            Map<String, String>? portMap,
            @JsonKey(name: 'network') XrayNetworkList? network,
            bool? followRedirect,
            int? userLevel)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DokodemoConfig() when $default != null:
        return $default(
            _that.allowedNetwork,
            _that.rewriteAddress,
            _that.rewritePort,
            _that.address,
            _that.port,
            _that.portMap,
            _that.network,
            _that.followRedirect,
            _that.userLevel);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            XrayNetworkList? allowedNetwork,
            XrayAddress? rewriteAddress,
            int? rewritePort,
            XrayAddress? address,
            int? port,
            Map<String, String>? portMap,
            @JsonKey(name: 'network') XrayNetworkList? network,
            bool? followRedirect,
            int? userLevel)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DokodemoConfig():
        return $default(
            _that.allowedNetwork,
            _that.rewriteAddress,
            _that.rewritePort,
            _that.address,
            _that.port,
            _that.portMap,
            _that.network,
            _that.followRedirect,
            _that.userLevel);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            XrayNetworkList? allowedNetwork,
            XrayAddress? rewriteAddress,
            int? rewritePort,
            XrayAddress? address,
            int? port,
            Map<String, String>? portMap,
            @JsonKey(name: 'network') XrayNetworkList? network,
            bool? followRedirect,
            int? userLevel)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DokodemoConfig() when $default != null:
        return $default(
            _that.allowedNetwork,
            _that.rewriteAddress,
            _that.rewritePort,
            _that.address,
            _that.port,
            _that.portMap,
            _that.network,
            _that.followRedirect,
            _that.userLevel);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DokodemoConfig extends DokodemoConfig {
  const _DokodemoConfig(
      {this.allowedNetwork,
      this.rewriteAddress,
      this.rewritePort,
      this.address,
      this.port,
      final Map<String, String>? portMap,
      @JsonKey(name: 'network') this.network,
      this.followRedirect,
      this.userLevel})
      : _portMap = portMap,
        super._();

  @override
  final XrayNetworkList? allowedNetwork;
  @override
  final XrayAddress? rewriteAddress;
  @override
  final int? rewritePort;
  @override
  final XrayAddress? address;
  @override
  final int? port;
  final Map<String, String>? _portMap;
  @override
  Map<String, String>? get portMap {
    final value = _portMap;
    if (value == null) return null;
    if (_portMap is EqualUnmodifiableMapView) return _portMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'network')
  final XrayNetworkList? network;
  @override
  final bool? followRedirect;
  @override
  final int? userLevel;

  /// Create a copy of DokodemoConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DokodemoConfigCopyWith<_DokodemoConfig> get copyWith =>
      __$DokodemoConfigCopyWithImpl<_DokodemoConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DokodemoConfig &&
            (identical(other.allowedNetwork, allowedNetwork) ||
                other.allowedNetwork == allowedNetwork) &&
            (identical(other.rewriteAddress, rewriteAddress) ||
                other.rewriteAddress == rewriteAddress) &&
            (identical(other.rewritePort, rewritePort) ||
                other.rewritePort == rewritePort) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            const DeepCollectionEquality().equals(other._portMap, _portMap) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.followRedirect, followRedirect) ||
                other.followRedirect == followRedirect) &&
            (identical(other.userLevel, userLevel) ||
                other.userLevel == userLevel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      allowedNetwork,
      rewriteAddress,
      rewritePort,
      address,
      port,
      const DeepCollectionEquality().hash(_portMap),
      network,
      followRedirect,
      userLevel);

  @override
  String toString() {
    return 'DokodemoConfig(allowedNetwork: $allowedNetwork, rewriteAddress: $rewriteAddress, rewritePort: $rewritePort, address: $address, port: $port, portMap: $portMap, network: $network, followRedirect: $followRedirect, userLevel: $userLevel)';
  }
}

/// @nodoc
abstract mixin class _$DokodemoConfigCopyWith<$Res>
    implements $DokodemoConfigCopyWith<$Res> {
  factory _$DokodemoConfigCopyWith(
          _DokodemoConfig value, $Res Function(_DokodemoConfig) _then) =
      __$DokodemoConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {XrayNetworkList? allowedNetwork,
      XrayAddress? rewriteAddress,
      int? rewritePort,
      XrayAddress? address,
      int? port,
      Map<String, String>? portMap,
      @JsonKey(name: 'network') XrayNetworkList? network,
      bool? followRedirect,
      int? userLevel});
}

/// @nodoc
class __$DokodemoConfigCopyWithImpl<$Res>
    implements _$DokodemoConfigCopyWith<$Res> {
  __$DokodemoConfigCopyWithImpl(this._self, this._then);

  final _DokodemoConfig _self;
  final $Res Function(_DokodemoConfig) _then;

  /// Create a copy of DokodemoConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? allowedNetwork = freezed,
    Object? rewriteAddress = freezed,
    Object? rewritePort = freezed,
    Object? address = freezed,
    Object? port = freezed,
    Object? portMap = freezed,
    Object? network = freezed,
    Object? followRedirect = freezed,
    Object? userLevel = freezed,
  }) {
    return _then(_DokodemoConfig(
      allowedNetwork: freezed == allowedNetwork
          ? _self.allowedNetwork
          : allowedNetwork // ignore: cast_nullable_to_non_nullable
              as XrayNetworkList?,
      rewriteAddress: freezed == rewriteAddress
          ? _self.rewriteAddress
          : rewriteAddress // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      rewritePort: freezed == rewritePort
          ? _self.rewritePort
          : rewritePort // ignore: cast_nullable_to_non_nullable
              as int?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      portMap: freezed == portMap
          ? _self._portMap
          : portMap // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      network: freezed == network
          ? _self.network
          : network // ignore: cast_nullable_to_non_nullable
              as XrayNetworkList?,
      followRedirect: freezed == followRedirect
          ? _self.followRedirect
          : followRedirect // ignore: cast_nullable_to_non_nullable
              as bool?,
      userLevel: freezed == userLevel
          ? _self.userLevel
          : userLevel // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$Fragment {
  String? get packets;
  XrayInt32Range? get length;
  XrayInt32Range? get interval;
  XrayInt32Range? get maxSplit;

  /// Create a copy of Fragment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FragmentCopyWith<Fragment> get copyWith =>
      _$FragmentCopyWithImpl<Fragment>(this as Fragment, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Fragment &&
            (identical(other.packets, packets) || other.packets == packets) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.maxSplit, maxSplit) ||
                other.maxSplit == maxSplit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, packets, length, interval, maxSplit);

  @override
  String toString() {
    return 'Fragment(packets: $packets, length: $length, interval: $interval, maxSplit: $maxSplit)';
  }
}

/// @nodoc
abstract mixin class $FragmentCopyWith<$Res> {
  factory $FragmentCopyWith(Fragment value, $Res Function(Fragment) _then) =
      _$FragmentCopyWithImpl;
  @useResult
  $Res call(
      {String? packets,
      XrayInt32Range? length,
      XrayInt32Range? interval,
      XrayInt32Range? maxSplit});

  $XrayInt32RangeCopyWith<$Res>? get length;
  $XrayInt32RangeCopyWith<$Res>? get interval;
  $XrayInt32RangeCopyWith<$Res>? get maxSplit;
}

/// @nodoc
class _$FragmentCopyWithImpl<$Res> implements $FragmentCopyWith<$Res> {
  _$FragmentCopyWithImpl(this._self, this._then);

  final Fragment _self;
  final $Res Function(Fragment) _then;

  /// Create a copy of Fragment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packets = freezed,
    Object? length = freezed,
    Object? interval = freezed,
    Object? maxSplit = freezed,
  }) {
    return _then(_self.copyWith(
      packets: freezed == packets
          ? _self.packets
          : packets // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as XrayInt32Range?,
      interval: freezed == interval
          ? _self.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as XrayInt32Range?,
      maxSplit: freezed == maxSplit
          ? _self.maxSplit
          : maxSplit // ignore: cast_nullable_to_non_nullable
              as XrayInt32Range?,
    ));
  }

  /// Create a copy of Fragment
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
  }

  /// Create a copy of Fragment
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

  /// Create a copy of Fragment
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

/// Adds pattern-matching-related methods to [Fragment].
extension FragmentPatterns on Fragment {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Fragment value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Fragment() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Fragment value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Fragment():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Fragment value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Fragment() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? packets, XrayInt32Range? length,
            XrayInt32Range? interval, XrayInt32Range? maxSplit)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Fragment() when $default != null:
        return $default(
            _that.packets, _that.length, _that.interval, _that.maxSplit);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? packets, XrayInt32Range? length,
            XrayInt32Range? interval, XrayInt32Range? maxSplit)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Fragment():
        return $default(
            _that.packets, _that.length, _that.interval, _that.maxSplit);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? packets, XrayInt32Range? length,
            XrayInt32Range? interval, XrayInt32Range? maxSplit)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Fragment() when $default != null:
        return $default(
            _that.packets, _that.length, _that.interval, _that.maxSplit);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Fragment extends Fragment {
  const _Fragment({this.packets, this.length, this.interval, this.maxSplit})
      : super._();

  @override
  final String? packets;
  @override
  final XrayInt32Range? length;
  @override
  final XrayInt32Range? interval;
  @override
  final XrayInt32Range? maxSplit;

  /// Create a copy of Fragment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FragmentCopyWith<_Fragment> get copyWith =>
      __$FragmentCopyWithImpl<_Fragment>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Fragment &&
            (identical(other.packets, packets) || other.packets == packets) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.maxSplit, maxSplit) ||
                other.maxSplit == maxSplit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, packets, length, interval, maxSplit);

  @override
  String toString() {
    return 'Fragment(packets: $packets, length: $length, interval: $interval, maxSplit: $maxSplit)';
  }
}

/// @nodoc
abstract mixin class _$FragmentCopyWith<$Res>
    implements $FragmentCopyWith<$Res> {
  factory _$FragmentCopyWith(_Fragment value, $Res Function(_Fragment) _then) =
      __$FragmentCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? packets,
      XrayInt32Range? length,
      XrayInt32Range? interval,
      XrayInt32Range? maxSplit});

  @override
  $XrayInt32RangeCopyWith<$Res>? get length;
  @override
  $XrayInt32RangeCopyWith<$Res>? get interval;
  @override
  $XrayInt32RangeCopyWith<$Res>? get maxSplit;
}

/// @nodoc
class __$FragmentCopyWithImpl<$Res> implements _$FragmentCopyWith<$Res> {
  __$FragmentCopyWithImpl(this._self, this._then);

  final _Fragment _self;
  final $Res Function(_Fragment) _then;

  /// Create a copy of Fragment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? packets = freezed,
    Object? length = freezed,
    Object? interval = freezed,
    Object? maxSplit = freezed,
  }) {
    return _then(_Fragment(
      packets: freezed == packets
          ? _self.packets
          : packets // ignore: cast_nullable_to_non_nullable
              as String?,
      length: freezed == length
          ? _self.length
          : length // ignore: cast_nullable_to_non_nullable
              as XrayInt32Range?,
      interval: freezed == interval
          ? _self.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as XrayInt32Range?,
      maxSplit: freezed == maxSplit
          ? _self.maxSplit
          : maxSplit // ignore: cast_nullable_to_non_nullable
              as XrayInt32Range?,
    ));
  }

  /// Create a copy of Fragment
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
  }

  /// Create a copy of Fragment
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

  /// Create a copy of Fragment
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
mixin _$FreedomConfig {
  XrayTargetStrategy? get targetStrategy;
  XrayTargetStrategy? get domainStrategy;
  String? get redirect;
  int? get userLevel;
  Fragment? get fragment;
  Noise? get noise;
  List<Noise>? get noises;
  int? get proxyProtocol;
  XrayStringList? get ipsBlocked;
  List<FreedomFinalRuleConfig>? get finalRules;

  /// Create a copy of FreedomConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FreedomConfigCopyWith<FreedomConfig> get copyWith =>
      _$FreedomConfigCopyWithImpl<FreedomConfig>(
          this as FreedomConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FreedomConfig &&
            (identical(other.targetStrategy, targetStrategy) ||
                other.targetStrategy == targetStrategy) &&
            (identical(other.domainStrategy, domainStrategy) ||
                other.domainStrategy == domainStrategy) &&
            (identical(other.redirect, redirect) ||
                other.redirect == redirect) &&
            (identical(other.userLevel, userLevel) ||
                other.userLevel == userLevel) &&
            (identical(other.fragment, fragment) ||
                other.fragment == fragment) &&
            (identical(other.noise, noise) || other.noise == noise) &&
            const DeepCollectionEquality().equals(other.noises, noises) &&
            (identical(other.proxyProtocol, proxyProtocol) ||
                other.proxyProtocol == proxyProtocol) &&
            (identical(other.ipsBlocked, ipsBlocked) ||
                other.ipsBlocked == ipsBlocked) &&
            const DeepCollectionEquality()
                .equals(other.finalRules, finalRules));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      targetStrategy,
      domainStrategy,
      redirect,
      userLevel,
      fragment,
      noise,
      const DeepCollectionEquality().hash(noises),
      proxyProtocol,
      ipsBlocked,
      const DeepCollectionEquality().hash(finalRules));

  @override
  String toString() {
    return 'FreedomConfig(targetStrategy: $targetStrategy, domainStrategy: $domainStrategy, redirect: $redirect, userLevel: $userLevel, fragment: $fragment, noise: $noise, noises: $noises, proxyProtocol: $proxyProtocol, ipsBlocked: $ipsBlocked, finalRules: $finalRules)';
  }
}

/// @nodoc
abstract mixin class $FreedomConfigCopyWith<$Res> {
  factory $FreedomConfigCopyWith(
          FreedomConfig value, $Res Function(FreedomConfig) _then) =
      _$FreedomConfigCopyWithImpl;
  @useResult
  $Res call(
      {XrayTargetStrategy? targetStrategy,
      XrayTargetStrategy? domainStrategy,
      String? redirect,
      int? userLevel,
      Fragment? fragment,
      Noise? noise,
      List<Noise>? noises,
      int? proxyProtocol,
      XrayStringList? ipsBlocked,
      List<FreedomFinalRuleConfig>? finalRules});

  $FragmentCopyWith<$Res>? get fragment;
  $NoiseCopyWith<$Res>? get noise;
}

/// @nodoc
class _$FreedomConfigCopyWithImpl<$Res>
    implements $FreedomConfigCopyWith<$Res> {
  _$FreedomConfigCopyWithImpl(this._self, this._then);

  final FreedomConfig _self;
  final $Res Function(FreedomConfig) _then;

  /// Create a copy of FreedomConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetStrategy = freezed,
    Object? domainStrategy = freezed,
    Object? redirect = freezed,
    Object? userLevel = freezed,
    Object? fragment = freezed,
    Object? noise = freezed,
    Object? noises = freezed,
    Object? proxyProtocol = freezed,
    Object? ipsBlocked = freezed,
    Object? finalRules = freezed,
  }) {
    return _then(_self.copyWith(
      targetStrategy: freezed == targetStrategy
          ? _self.targetStrategy
          : targetStrategy // ignore: cast_nullable_to_non_nullable
              as XrayTargetStrategy?,
      domainStrategy: freezed == domainStrategy
          ? _self.domainStrategy
          : domainStrategy // ignore: cast_nullable_to_non_nullable
              as XrayTargetStrategy?,
      redirect: freezed == redirect
          ? _self.redirect
          : redirect // ignore: cast_nullable_to_non_nullable
              as String?,
      userLevel: freezed == userLevel
          ? _self.userLevel
          : userLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      fragment: freezed == fragment
          ? _self.fragment
          : fragment // ignore: cast_nullable_to_non_nullable
              as Fragment?,
      noise: freezed == noise
          ? _self.noise
          : noise // ignore: cast_nullable_to_non_nullable
              as Noise?,
      noises: freezed == noises
          ? _self.noises
          : noises // ignore: cast_nullable_to_non_nullable
              as List<Noise>?,
      proxyProtocol: freezed == proxyProtocol
          ? _self.proxyProtocol
          : proxyProtocol // ignore: cast_nullable_to_non_nullable
              as int?,
      ipsBlocked: freezed == ipsBlocked
          ? _self.ipsBlocked
          : ipsBlocked // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      finalRules: freezed == finalRules
          ? _self.finalRules
          : finalRules // ignore: cast_nullable_to_non_nullable
              as List<FreedomFinalRuleConfig>?,
    ));
  }

  /// Create a copy of FreedomConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FragmentCopyWith<$Res>? get fragment {
    if (_self.fragment == null) {
      return null;
    }

    return $FragmentCopyWith<$Res>(_self.fragment!, (value) {
      return _then(_self.copyWith(fragment: value));
    });
  }

  /// Create a copy of FreedomConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoiseCopyWith<$Res>? get noise {
    if (_self.noise == null) {
      return null;
    }

    return $NoiseCopyWith<$Res>(_self.noise!, (value) {
      return _then(_self.copyWith(noise: value));
    });
  }
}

/// Adds pattern-matching-related methods to [FreedomConfig].
extension FreedomConfigPatterns on FreedomConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FreedomConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FreedomConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FreedomConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FreedomConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FreedomConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FreedomConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            XrayTargetStrategy? targetStrategy,
            XrayTargetStrategy? domainStrategy,
            String? redirect,
            int? userLevel,
            Fragment? fragment,
            Noise? noise,
            List<Noise>? noises,
            int? proxyProtocol,
            XrayStringList? ipsBlocked,
            List<FreedomFinalRuleConfig>? finalRules)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FreedomConfig() when $default != null:
        return $default(
            _that.targetStrategy,
            _that.domainStrategy,
            _that.redirect,
            _that.userLevel,
            _that.fragment,
            _that.noise,
            _that.noises,
            _that.proxyProtocol,
            _that.ipsBlocked,
            _that.finalRules);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            XrayTargetStrategy? targetStrategy,
            XrayTargetStrategy? domainStrategy,
            String? redirect,
            int? userLevel,
            Fragment? fragment,
            Noise? noise,
            List<Noise>? noises,
            int? proxyProtocol,
            XrayStringList? ipsBlocked,
            List<FreedomFinalRuleConfig>? finalRules)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FreedomConfig():
        return $default(
            _that.targetStrategy,
            _that.domainStrategy,
            _that.redirect,
            _that.userLevel,
            _that.fragment,
            _that.noise,
            _that.noises,
            _that.proxyProtocol,
            _that.ipsBlocked,
            _that.finalRules);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            XrayTargetStrategy? targetStrategy,
            XrayTargetStrategy? domainStrategy,
            String? redirect,
            int? userLevel,
            Fragment? fragment,
            Noise? noise,
            List<Noise>? noises,
            int? proxyProtocol,
            XrayStringList? ipsBlocked,
            List<FreedomFinalRuleConfig>? finalRules)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FreedomConfig() when $default != null:
        return $default(
            _that.targetStrategy,
            _that.domainStrategy,
            _that.redirect,
            _that.userLevel,
            _that.fragment,
            _that.noise,
            _that.noises,
            _that.proxyProtocol,
            _that.ipsBlocked,
            _that.finalRules);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FreedomConfig extends FreedomConfig {
  const _FreedomConfig(
      {this.targetStrategy,
      this.domainStrategy,
      this.redirect,
      this.userLevel,
      this.fragment,
      this.noise,
      final List<Noise>? noises,
      this.proxyProtocol,
      this.ipsBlocked,
      final List<FreedomFinalRuleConfig>? finalRules})
      : _noises = noises,
        _finalRules = finalRules,
        super._();

  @override
  final XrayTargetStrategy? targetStrategy;
  @override
  final XrayTargetStrategy? domainStrategy;
  @override
  final String? redirect;
  @override
  final int? userLevel;
  @override
  final Fragment? fragment;
  @override
  final Noise? noise;
  final List<Noise>? _noises;
  @override
  List<Noise>? get noises {
    final value = _noises;
    if (value == null) return null;
    if (_noises is EqualUnmodifiableListView) return _noises;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? proxyProtocol;
  @override
  final XrayStringList? ipsBlocked;
  final List<FreedomFinalRuleConfig>? _finalRules;
  @override
  List<FreedomFinalRuleConfig>? get finalRules {
    final value = _finalRules;
    if (value == null) return null;
    if (_finalRules is EqualUnmodifiableListView) return _finalRules;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of FreedomConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FreedomConfigCopyWith<_FreedomConfig> get copyWith =>
      __$FreedomConfigCopyWithImpl<_FreedomConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FreedomConfig &&
            (identical(other.targetStrategy, targetStrategy) ||
                other.targetStrategy == targetStrategy) &&
            (identical(other.domainStrategy, domainStrategy) ||
                other.domainStrategy == domainStrategy) &&
            (identical(other.redirect, redirect) ||
                other.redirect == redirect) &&
            (identical(other.userLevel, userLevel) ||
                other.userLevel == userLevel) &&
            (identical(other.fragment, fragment) ||
                other.fragment == fragment) &&
            (identical(other.noise, noise) || other.noise == noise) &&
            const DeepCollectionEquality().equals(other._noises, _noises) &&
            (identical(other.proxyProtocol, proxyProtocol) ||
                other.proxyProtocol == proxyProtocol) &&
            (identical(other.ipsBlocked, ipsBlocked) ||
                other.ipsBlocked == ipsBlocked) &&
            const DeepCollectionEquality()
                .equals(other._finalRules, _finalRules));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      targetStrategy,
      domainStrategy,
      redirect,
      userLevel,
      fragment,
      noise,
      const DeepCollectionEquality().hash(_noises),
      proxyProtocol,
      ipsBlocked,
      const DeepCollectionEquality().hash(_finalRules));

  @override
  String toString() {
    return 'FreedomConfig(targetStrategy: $targetStrategy, domainStrategy: $domainStrategy, redirect: $redirect, userLevel: $userLevel, fragment: $fragment, noise: $noise, noises: $noises, proxyProtocol: $proxyProtocol, ipsBlocked: $ipsBlocked, finalRules: $finalRules)';
  }
}

/// @nodoc
abstract mixin class _$FreedomConfigCopyWith<$Res>
    implements $FreedomConfigCopyWith<$Res> {
  factory _$FreedomConfigCopyWith(
          _FreedomConfig value, $Res Function(_FreedomConfig) _then) =
      __$FreedomConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {XrayTargetStrategy? targetStrategy,
      XrayTargetStrategy? domainStrategy,
      String? redirect,
      int? userLevel,
      Fragment? fragment,
      Noise? noise,
      List<Noise>? noises,
      int? proxyProtocol,
      XrayStringList? ipsBlocked,
      List<FreedomFinalRuleConfig>? finalRules});

  @override
  $FragmentCopyWith<$Res>? get fragment;
  @override
  $NoiseCopyWith<$Res>? get noise;
}

/// @nodoc
class __$FreedomConfigCopyWithImpl<$Res>
    implements _$FreedomConfigCopyWith<$Res> {
  __$FreedomConfigCopyWithImpl(this._self, this._then);

  final _FreedomConfig _self;
  final $Res Function(_FreedomConfig) _then;

  /// Create a copy of FreedomConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? targetStrategy = freezed,
    Object? domainStrategy = freezed,
    Object? redirect = freezed,
    Object? userLevel = freezed,
    Object? fragment = freezed,
    Object? noise = freezed,
    Object? noises = freezed,
    Object? proxyProtocol = freezed,
    Object? ipsBlocked = freezed,
    Object? finalRules = freezed,
  }) {
    return _then(_FreedomConfig(
      targetStrategy: freezed == targetStrategy
          ? _self.targetStrategy
          : targetStrategy // ignore: cast_nullable_to_non_nullable
              as XrayTargetStrategy?,
      domainStrategy: freezed == domainStrategy
          ? _self.domainStrategy
          : domainStrategy // ignore: cast_nullable_to_non_nullable
              as XrayTargetStrategy?,
      redirect: freezed == redirect
          ? _self.redirect
          : redirect // ignore: cast_nullable_to_non_nullable
              as String?,
      userLevel: freezed == userLevel
          ? _self.userLevel
          : userLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      fragment: freezed == fragment
          ? _self.fragment
          : fragment // ignore: cast_nullable_to_non_nullable
              as Fragment?,
      noise: freezed == noise
          ? _self.noise
          : noise // ignore: cast_nullable_to_non_nullable
              as Noise?,
      noises: freezed == noises
          ? _self._noises
          : noises // ignore: cast_nullable_to_non_nullable
              as List<Noise>?,
      proxyProtocol: freezed == proxyProtocol
          ? _self.proxyProtocol
          : proxyProtocol // ignore: cast_nullable_to_non_nullable
              as int?,
      ipsBlocked: freezed == ipsBlocked
          ? _self.ipsBlocked
          : ipsBlocked // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      finalRules: freezed == finalRules
          ? _self._finalRules
          : finalRules // ignore: cast_nullable_to_non_nullable
              as List<FreedomFinalRuleConfig>?,
    ));
  }

  /// Create a copy of FreedomConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FragmentCopyWith<$Res>? get fragment {
    if (_self.fragment == null) {
      return null;
    }

    return $FragmentCopyWith<$Res>(_self.fragment!, (value) {
      return _then(_self.copyWith(fragment: value));
    });
  }

  /// Create a copy of FreedomConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NoiseCopyWith<$Res>? get noise {
    if (_self.noise == null) {
      return null;
    }

    return $NoiseCopyWith<$Res>(_self.noise!, (value) {
      return _then(_self.copyWith(noise: value));
    });
  }
}

/// @nodoc
mixin _$FreedomFinalRuleConfig {
  String? get action;
  XrayNetworkList? get network;
  XrayPortList? get port;
  XrayStringList? get ip;
  XrayInt32Range? get blockDelay;

  /// Create a copy of FreedomFinalRuleConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FreedomFinalRuleConfigCopyWith<FreedomFinalRuleConfig> get copyWith =>
      _$FreedomFinalRuleConfigCopyWithImpl<FreedomFinalRuleConfig>(
          this as FreedomFinalRuleConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FreedomFinalRuleConfig &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.blockDelay, blockDelay) ||
                other.blockDelay == blockDelay));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, action, network, port, ip, blockDelay);

  @override
  String toString() {
    return 'FreedomFinalRuleConfig(action: $action, network: $network, port: $port, ip: $ip, blockDelay: $blockDelay)';
  }
}

/// @nodoc
abstract mixin class $FreedomFinalRuleConfigCopyWith<$Res> {
  factory $FreedomFinalRuleConfigCopyWith(FreedomFinalRuleConfig value,
          $Res Function(FreedomFinalRuleConfig) _then) =
      _$FreedomFinalRuleConfigCopyWithImpl;
  @useResult
  $Res call(
      {String? action,
      XrayNetworkList? network,
      XrayPortList? port,
      XrayStringList? ip,
      XrayInt32Range? blockDelay});

  $XrayInt32RangeCopyWith<$Res>? get blockDelay;
}

/// @nodoc
class _$FreedomFinalRuleConfigCopyWithImpl<$Res>
    implements $FreedomFinalRuleConfigCopyWith<$Res> {
  _$FreedomFinalRuleConfigCopyWithImpl(this._self, this._then);

  final FreedomFinalRuleConfig _self;
  final $Res Function(FreedomFinalRuleConfig) _then;

  /// Create a copy of FreedomFinalRuleConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? network = freezed,
    Object? port = freezed,
    Object? ip = freezed,
    Object? blockDelay = freezed,
  }) {
    return _then(_self.copyWith(
      action: freezed == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      network: freezed == network
          ? _self.network
          : network // ignore: cast_nullable_to_non_nullable
              as XrayNetworkList?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as XrayPortList?,
      ip: freezed == ip
          ? _self.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      blockDelay: freezed == blockDelay
          ? _self.blockDelay
          : blockDelay // ignore: cast_nullable_to_non_nullable
              as XrayInt32Range?,
    ));
  }

  /// Create a copy of FreedomFinalRuleConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $XrayInt32RangeCopyWith<$Res>? get blockDelay {
    if (_self.blockDelay == null) {
      return null;
    }

    return $XrayInt32RangeCopyWith<$Res>(_self.blockDelay!, (value) {
      return _then(_self.copyWith(blockDelay: value));
    });
  }
}

/// Adds pattern-matching-related methods to [FreedomFinalRuleConfig].
extension FreedomFinalRuleConfigPatterns on FreedomFinalRuleConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FreedomFinalRuleConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FreedomFinalRuleConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FreedomFinalRuleConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FreedomFinalRuleConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FreedomFinalRuleConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FreedomFinalRuleConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? action, XrayNetworkList? network,
            XrayPortList? port, XrayStringList? ip, XrayInt32Range? blockDelay)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FreedomFinalRuleConfig() when $default != null:
        return $default(_that.action, _that.network, _that.port, _that.ip,
            _that.blockDelay);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? action, XrayNetworkList? network,
            XrayPortList? port, XrayStringList? ip, XrayInt32Range? blockDelay)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FreedomFinalRuleConfig():
        return $default(_that.action, _that.network, _that.port, _that.ip,
            _that.blockDelay);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? action, XrayNetworkList? network,
            XrayPortList? port, XrayStringList? ip, XrayInt32Range? blockDelay)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FreedomFinalRuleConfig() when $default != null:
        return $default(_that.action, _that.network, _that.port, _that.ip,
            _that.blockDelay);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FreedomFinalRuleConfig extends FreedomFinalRuleConfig {
  const _FreedomFinalRuleConfig(
      {this.action, this.network, this.port, this.ip, this.blockDelay})
      : super._();

  @override
  final String? action;
  @override
  final XrayNetworkList? network;
  @override
  final XrayPortList? port;
  @override
  final XrayStringList? ip;
  @override
  final XrayInt32Range? blockDelay;

  /// Create a copy of FreedomFinalRuleConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FreedomFinalRuleConfigCopyWith<_FreedomFinalRuleConfig> get copyWith =>
      __$FreedomFinalRuleConfigCopyWithImpl<_FreedomFinalRuleConfig>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FreedomFinalRuleConfig &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.blockDelay, blockDelay) ||
                other.blockDelay == blockDelay));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, action, network, port, ip, blockDelay);

  @override
  String toString() {
    return 'FreedomFinalRuleConfig(action: $action, network: $network, port: $port, ip: $ip, blockDelay: $blockDelay)';
  }
}

/// @nodoc
abstract mixin class _$FreedomFinalRuleConfigCopyWith<$Res>
    implements $FreedomFinalRuleConfigCopyWith<$Res> {
  factory _$FreedomFinalRuleConfigCopyWith(_FreedomFinalRuleConfig value,
          $Res Function(_FreedomFinalRuleConfig) _then) =
      __$FreedomFinalRuleConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? action,
      XrayNetworkList? network,
      XrayPortList? port,
      XrayStringList? ip,
      XrayInt32Range? blockDelay});

  @override
  $XrayInt32RangeCopyWith<$Res>? get blockDelay;
}

/// @nodoc
class __$FreedomFinalRuleConfigCopyWithImpl<$Res>
    implements _$FreedomFinalRuleConfigCopyWith<$Res> {
  __$FreedomFinalRuleConfigCopyWithImpl(this._self, this._then);

  final _FreedomFinalRuleConfig _self;
  final $Res Function(_FreedomFinalRuleConfig) _then;

  /// Create a copy of FreedomFinalRuleConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? action = freezed,
    Object? network = freezed,
    Object? port = freezed,
    Object? ip = freezed,
    Object? blockDelay = freezed,
  }) {
    return _then(_FreedomFinalRuleConfig(
      action: freezed == action
          ? _self.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      network: freezed == network
          ? _self.network
          : network // ignore: cast_nullable_to_non_nullable
              as XrayNetworkList?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as XrayPortList?,
      ip: freezed == ip
          ? _self.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      blockDelay: freezed == blockDelay
          ? _self.blockDelay
          : blockDelay // ignore: cast_nullable_to_non_nullable
              as XrayInt32Range?,
    ));
  }

  /// Create a copy of FreedomFinalRuleConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $XrayInt32RangeCopyWith<$Res>? get blockDelay {
    if (_self.blockDelay == null) {
      return null;
    }

    return $XrayInt32RangeCopyWith<$Res>(_self.blockDelay!, (value) {
      return _then(_self.copyWith(blockDelay: value));
    });
  }
}

/// @nodoc
mixin _$HTTPAccount {
  @JsonKey(name: 'user')
  String? get username;
  @JsonKey(name: 'pass')
  String? get password;

  /// Create a copy of HTTPAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HTTPAccountCopyWith<HTTPAccount> get copyWith =>
      _$HTTPAccountCopyWithImpl<HTTPAccount>(this as HTTPAccount, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HTTPAccount &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @override
  String toString() {
    return 'HTTPAccount(username: $username, password: $password)';
  }
}

/// @nodoc
abstract mixin class $HTTPAccountCopyWith<$Res> {
  factory $HTTPAccountCopyWith(
          HTTPAccount value, $Res Function(HTTPAccount) _then) =
      _$HTTPAccountCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'user') String? username,
      @JsonKey(name: 'pass') String? password});
}

/// @nodoc
class _$HTTPAccountCopyWithImpl<$Res> implements $HTTPAccountCopyWith<$Res> {
  _$HTTPAccountCopyWithImpl(this._self, this._then);

  final HTTPAccount _self;
  final $Res Function(HTTPAccount) _then;

  /// Create a copy of HTTPAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_self.copyWith(
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [HTTPAccount].
extension HTTPAccountPatterns on HTTPAccount {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_HTTPAccount value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HTTPAccount() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_HTTPAccount value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HTTPAccount():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_HTTPAccount value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HTTPAccount() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'user') String? username,
            @JsonKey(name: 'pass') String? password)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HTTPAccount() when $default != null:
        return $default(_that.username, _that.password);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'user') String? username,
            @JsonKey(name: 'pass') String? password)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HTTPAccount():
        return $default(_that.username, _that.password);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: 'user') String? username,
            @JsonKey(name: 'pass') String? password)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HTTPAccount() when $default != null:
        return $default(_that.username, _that.password);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _HTTPAccount extends HTTPAccount {
  const _HTTPAccount(
      {@JsonKey(name: 'user') this.username,
      @JsonKey(name: 'pass') this.password})
      : super._();

  @override
  @JsonKey(name: 'user')
  final String? username;
  @override
  @JsonKey(name: 'pass')
  final String? password;

  /// Create a copy of HTTPAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HTTPAccountCopyWith<_HTTPAccount> get copyWith =>
      __$HTTPAccountCopyWithImpl<_HTTPAccount>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HTTPAccount &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @override
  String toString() {
    return 'HTTPAccount(username: $username, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$HTTPAccountCopyWith<$Res>
    implements $HTTPAccountCopyWith<$Res> {
  factory _$HTTPAccountCopyWith(
          _HTTPAccount value, $Res Function(_HTTPAccount) _then) =
      __$HTTPAccountCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user') String? username,
      @JsonKey(name: 'pass') String? password});
}

/// @nodoc
class __$HTTPAccountCopyWithImpl<$Res> implements _$HTTPAccountCopyWith<$Res> {
  __$HTTPAccountCopyWithImpl(this._self, this._then);

  final _HTTPAccount _self;
  final $Res Function(_HTTPAccount) _then;

  /// Create a copy of HTTPAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_HTTPAccount(
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$HTTPClientConfig {
  XrayAddress? get address;
  int? get port;
  int? get level;
  String? get email;
  @JsonKey(name: 'user')
  String? get username;
  @JsonKey(name: 'pass')
  String? get password;
  List<HTTPRemoteConfig>? get servers;
  Map<String, String>? get headers;

  /// Create a copy of HTTPClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HTTPClientConfigCopyWith<HTTPClientConfig> get copyWith =>
      _$HTTPClientConfigCopyWithImpl<HTTPClientConfig>(
          this as HTTPClientConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HTTPClientConfig &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(other.servers, servers) &&
            const DeepCollectionEquality().equals(other.headers, headers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      address,
      port,
      level,
      email,
      username,
      password,
      const DeepCollectionEquality().hash(servers),
      const DeepCollectionEquality().hash(headers));

  @override
  String toString() {
    return 'HTTPClientConfig(address: $address, port: $port, level: $level, email: $email, username: $username, password: $password, servers: $servers, headers: $headers)';
  }
}

/// @nodoc
abstract mixin class $HTTPClientConfigCopyWith<$Res> {
  factory $HTTPClientConfigCopyWith(
          HTTPClientConfig value, $Res Function(HTTPClientConfig) _then) =
      _$HTTPClientConfigCopyWithImpl;
  @useResult
  $Res call(
      {XrayAddress? address,
      int? port,
      int? level,
      String? email,
      @JsonKey(name: 'user') String? username,
      @JsonKey(name: 'pass') String? password,
      List<HTTPRemoteConfig>? servers,
      Map<String, String>? headers});
}

/// @nodoc
class _$HTTPClientConfigCopyWithImpl<$Res>
    implements $HTTPClientConfigCopyWith<$Res> {
  _$HTTPClientConfigCopyWithImpl(this._self, this._then);

  final HTTPClientConfig _self;
  final $Res Function(HTTPClientConfig) _then;

  /// Create a copy of HTTPClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? port = freezed,
    Object? level = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? servers = freezed,
    Object? headers = freezed,
  }) {
    return _then(_self.copyWith(
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      servers: freezed == servers
          ? _self.servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<HTTPRemoteConfig>?,
      headers: freezed == headers
          ? _self.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [HTTPClientConfig].
extension HTTPClientConfigPatterns on HTTPClientConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_HTTPClientConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HTTPClientConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_HTTPClientConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HTTPClientConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_HTTPClientConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HTTPClientConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            XrayAddress? address,
            int? port,
            int? level,
            String? email,
            @JsonKey(name: 'user') String? username,
            @JsonKey(name: 'pass') String? password,
            List<HTTPRemoteConfig>? servers,
            Map<String, String>? headers)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HTTPClientConfig() when $default != null:
        return $default(_that.address, _that.port, _that.level, _that.email,
            _that.username, _that.password, _that.servers, _that.headers);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            XrayAddress? address,
            int? port,
            int? level,
            String? email,
            @JsonKey(name: 'user') String? username,
            @JsonKey(name: 'pass') String? password,
            List<HTTPRemoteConfig>? servers,
            Map<String, String>? headers)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HTTPClientConfig():
        return $default(_that.address, _that.port, _that.level, _that.email,
            _that.username, _that.password, _that.servers, _that.headers);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            XrayAddress? address,
            int? port,
            int? level,
            String? email,
            @JsonKey(name: 'user') String? username,
            @JsonKey(name: 'pass') String? password,
            List<HTTPRemoteConfig>? servers,
            Map<String, String>? headers)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HTTPClientConfig() when $default != null:
        return $default(_that.address, _that.port, _that.level, _that.email,
            _that.username, _that.password, _that.servers, _that.headers);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _HTTPClientConfig extends HTTPClientConfig {
  const _HTTPClientConfig(
      {this.address,
      this.port,
      this.level,
      this.email,
      @JsonKey(name: 'user') this.username,
      @JsonKey(name: 'pass') this.password,
      final List<HTTPRemoteConfig>? servers,
      final Map<String, String>? headers})
      : _servers = servers,
        _headers = headers,
        super._();

  @override
  final XrayAddress? address;
  @override
  final int? port;
  @override
  final int? level;
  @override
  final String? email;
  @override
  @JsonKey(name: 'user')
  final String? username;
  @override
  @JsonKey(name: 'pass')
  final String? password;
  final List<HTTPRemoteConfig>? _servers;
  @override
  List<HTTPRemoteConfig>? get servers {
    final value = _servers;
    if (value == null) return null;
    if (_servers is EqualUnmodifiableListView) return _servers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, String>? _headers;
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of HTTPClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HTTPClientConfigCopyWith<_HTTPClientConfig> get copyWith =>
      __$HTTPClientConfigCopyWithImpl<_HTTPClientConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HTTPClientConfig &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(other._servers, _servers) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      address,
      port,
      level,
      email,
      username,
      password,
      const DeepCollectionEquality().hash(_servers),
      const DeepCollectionEquality().hash(_headers));

  @override
  String toString() {
    return 'HTTPClientConfig(address: $address, port: $port, level: $level, email: $email, username: $username, password: $password, servers: $servers, headers: $headers)';
  }
}

/// @nodoc
abstract mixin class _$HTTPClientConfigCopyWith<$Res>
    implements $HTTPClientConfigCopyWith<$Res> {
  factory _$HTTPClientConfigCopyWith(
          _HTTPClientConfig value, $Res Function(_HTTPClientConfig) _then) =
      __$HTTPClientConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {XrayAddress? address,
      int? port,
      int? level,
      String? email,
      @JsonKey(name: 'user') String? username,
      @JsonKey(name: 'pass') String? password,
      List<HTTPRemoteConfig>? servers,
      Map<String, String>? headers});
}

/// @nodoc
class __$HTTPClientConfigCopyWithImpl<$Res>
    implements _$HTTPClientConfigCopyWith<$Res> {
  __$HTTPClientConfigCopyWithImpl(this._self, this._then);

  final _HTTPClientConfig _self;
  final $Res Function(_HTTPClientConfig) _then;

  /// Create a copy of HTTPClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = freezed,
    Object? port = freezed,
    Object? level = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? servers = freezed,
    Object? headers = freezed,
  }) {
    return _then(_HTTPClientConfig(
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      servers: freezed == servers
          ? _self._servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<HTTPRemoteConfig>?,
      headers: freezed == headers
          ? _self._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
mixin _$HTTPRemoteConfig {
  XrayAddress get address;
  int get port;
  List<HTTPAccount>? get users;

  /// Create a copy of HTTPRemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HTTPRemoteConfigCopyWith<HTTPRemoteConfig> get copyWith =>
      _$HTTPRemoteConfigCopyWithImpl<HTTPRemoteConfig>(
          this as HTTPRemoteConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HTTPRemoteConfig &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            const DeepCollectionEquality().equals(other.users, users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, address, port, const DeepCollectionEquality().hash(users));

  @override
  String toString() {
    return 'HTTPRemoteConfig(address: $address, port: $port, users: $users)';
  }
}

/// @nodoc
abstract mixin class $HTTPRemoteConfigCopyWith<$Res> {
  factory $HTTPRemoteConfigCopyWith(
          HTTPRemoteConfig value, $Res Function(HTTPRemoteConfig) _then) =
      _$HTTPRemoteConfigCopyWithImpl;
  @useResult
  $Res call({XrayAddress address, int port, List<HTTPAccount>? users});
}

/// @nodoc
class _$HTTPRemoteConfigCopyWithImpl<$Res>
    implements $HTTPRemoteConfigCopyWith<$Res> {
  _$HTTPRemoteConfigCopyWithImpl(this._self, this._then);

  final HTTPRemoteConfig _self;
  final $Res Function(HTTPRemoteConfig) _then;

  /// Create a copy of HTTPRemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? port = null,
    Object? users = freezed,
  }) {
    return _then(_self.copyWith(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress,
      port: null == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      users: freezed == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<HTTPAccount>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [HTTPRemoteConfig].
extension HTTPRemoteConfigPatterns on HTTPRemoteConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_HTTPRemoteConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HTTPRemoteConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_HTTPRemoteConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HTTPRemoteConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_HTTPRemoteConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HTTPRemoteConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(XrayAddress address, int port, List<HTTPAccount>? users)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HTTPRemoteConfig() when $default != null:
        return $default(_that.address, _that.port, _that.users);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(XrayAddress address, int port, List<HTTPAccount>? users)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HTTPRemoteConfig():
        return $default(_that.address, _that.port, _that.users);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(XrayAddress address, int port, List<HTTPAccount>? users)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HTTPRemoteConfig() when $default != null:
        return $default(_that.address, _that.port, _that.users);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _HTTPRemoteConfig extends HTTPRemoteConfig {
  const _HTTPRemoteConfig(
      {required this.address,
      required this.port,
      final List<HTTPAccount>? users})
      : _users = users,
        super._();

  @override
  final XrayAddress address;
  @override
  final int port;
  final List<HTTPAccount>? _users;
  @override
  List<HTTPAccount>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of HTTPRemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HTTPRemoteConfigCopyWith<_HTTPRemoteConfig> get copyWith =>
      __$HTTPRemoteConfigCopyWithImpl<_HTTPRemoteConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HTTPRemoteConfig &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, address, port, const DeepCollectionEquality().hash(_users));

  @override
  String toString() {
    return 'HTTPRemoteConfig(address: $address, port: $port, users: $users)';
  }
}

/// @nodoc
abstract mixin class _$HTTPRemoteConfigCopyWith<$Res>
    implements $HTTPRemoteConfigCopyWith<$Res> {
  factory _$HTTPRemoteConfigCopyWith(
          _HTTPRemoteConfig value, $Res Function(_HTTPRemoteConfig) _then) =
      __$HTTPRemoteConfigCopyWithImpl;
  @override
  @useResult
  $Res call({XrayAddress address, int port, List<HTTPAccount>? users});
}

/// @nodoc
class __$HTTPRemoteConfigCopyWithImpl<$Res>
    implements _$HTTPRemoteConfigCopyWith<$Res> {
  __$HTTPRemoteConfigCopyWithImpl(this._self, this._then);

  final _HTTPRemoteConfig _self;
  final $Res Function(_HTTPRemoteConfig) _then;

  /// Create a copy of HTTPRemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = null,
    Object? port = null,
    Object? users = freezed,
  }) {
    return _then(_HTTPRemoteConfig(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress,
      port: null == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      users: freezed == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<HTTPAccount>?,
    ));
  }
}

/// @nodoc
mixin _$HTTPServerConfig {
  List<HTTPAccount>? get users;
  List<HTTPAccount>? get accounts;
  @JsonKey(name: 'allowTransparent')
  bool? get transparent;
  int? get userLevel;

  /// Create a copy of HTTPServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HTTPServerConfigCopyWith<HTTPServerConfig> get copyWith =>
      _$HTTPServerConfigCopyWithImpl<HTTPServerConfig>(
          this as HTTPServerConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HTTPServerConfig &&
            const DeepCollectionEquality().equals(other.users, users) &&
            const DeepCollectionEquality().equals(other.accounts, accounts) &&
            (identical(other.transparent, transparent) ||
                other.transparent == transparent) &&
            (identical(other.userLevel, userLevel) ||
                other.userLevel == userLevel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(users),
      const DeepCollectionEquality().hash(accounts),
      transparent,
      userLevel);

  @override
  String toString() {
    return 'HTTPServerConfig(users: $users, accounts: $accounts, transparent: $transparent, userLevel: $userLevel)';
  }
}

/// @nodoc
abstract mixin class $HTTPServerConfigCopyWith<$Res> {
  factory $HTTPServerConfigCopyWith(
          HTTPServerConfig value, $Res Function(HTTPServerConfig) _then) =
      _$HTTPServerConfigCopyWithImpl;
  @useResult
  $Res call(
      {List<HTTPAccount>? users,
      List<HTTPAccount>? accounts,
      @JsonKey(name: 'allowTransparent') bool? transparent,
      int? userLevel});
}

/// @nodoc
class _$HTTPServerConfigCopyWithImpl<$Res>
    implements $HTTPServerConfigCopyWith<$Res> {
  _$HTTPServerConfigCopyWithImpl(this._self, this._then);

  final HTTPServerConfig _self;
  final $Res Function(HTTPServerConfig) _then;

  /// Create a copy of HTTPServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
    Object? accounts = freezed,
    Object? transparent = freezed,
    Object? userLevel = freezed,
  }) {
    return _then(_self.copyWith(
      users: freezed == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<HTTPAccount>?,
      accounts: freezed == accounts
          ? _self.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<HTTPAccount>?,
      transparent: freezed == transparent
          ? _self.transparent
          : transparent // ignore: cast_nullable_to_non_nullable
              as bool?,
      userLevel: freezed == userLevel
          ? _self.userLevel
          : userLevel // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [HTTPServerConfig].
extension HTTPServerConfigPatterns on HTTPServerConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_HTTPServerConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HTTPServerConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_HTTPServerConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HTTPServerConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_HTTPServerConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HTTPServerConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            List<HTTPAccount>? users,
            List<HTTPAccount>? accounts,
            @JsonKey(name: 'allowTransparent') bool? transparent,
            int? userLevel)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HTTPServerConfig() when $default != null:
        return $default(
            _that.users, _that.accounts, _that.transparent, _that.userLevel);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            List<HTTPAccount>? users,
            List<HTTPAccount>? accounts,
            @JsonKey(name: 'allowTransparent') bool? transparent,
            int? userLevel)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HTTPServerConfig():
        return $default(
            _that.users, _that.accounts, _that.transparent, _that.userLevel);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            List<HTTPAccount>? users,
            List<HTTPAccount>? accounts,
            @JsonKey(name: 'allowTransparent') bool? transparent,
            int? userLevel)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HTTPServerConfig() when $default != null:
        return $default(
            _that.users, _that.accounts, _that.transparent, _that.userLevel);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _HTTPServerConfig extends HTTPServerConfig {
  const _HTTPServerConfig(
      {final List<HTTPAccount>? users,
      final List<HTTPAccount>? accounts,
      @JsonKey(name: 'allowTransparent') this.transparent,
      this.userLevel})
      : _users = users,
        _accounts = accounts,
        super._();

  final List<HTTPAccount>? _users;
  @override
  List<HTTPAccount>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<HTTPAccount>? _accounts;
  @override
  List<HTTPAccount>? get accounts {
    final value = _accounts;
    if (value == null) return null;
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'allowTransparent')
  final bool? transparent;
  @override
  final int? userLevel;

  /// Create a copy of HTTPServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HTTPServerConfigCopyWith<_HTTPServerConfig> get copyWith =>
      __$HTTPServerConfigCopyWithImpl<_HTTPServerConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HTTPServerConfig &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            (identical(other.transparent, transparent) ||
                other.transparent == transparent) &&
            (identical(other.userLevel, userLevel) ||
                other.userLevel == userLevel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_accounts),
      transparent,
      userLevel);

  @override
  String toString() {
    return 'HTTPServerConfig(users: $users, accounts: $accounts, transparent: $transparent, userLevel: $userLevel)';
  }
}

/// @nodoc
abstract mixin class _$HTTPServerConfigCopyWith<$Res>
    implements $HTTPServerConfigCopyWith<$Res> {
  factory _$HTTPServerConfigCopyWith(
          _HTTPServerConfig value, $Res Function(_HTTPServerConfig) _then) =
      __$HTTPServerConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<HTTPAccount>? users,
      List<HTTPAccount>? accounts,
      @JsonKey(name: 'allowTransparent') bool? transparent,
      int? userLevel});
}

/// @nodoc
class __$HTTPServerConfigCopyWithImpl<$Res>
    implements _$HTTPServerConfigCopyWith<$Res> {
  __$HTTPServerConfigCopyWithImpl(this._self, this._then);

  final _HTTPServerConfig _self;
  final $Res Function(_HTTPServerConfig) _then;

  /// Create a copy of HTTPServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? users = freezed,
    Object? accounts = freezed,
    Object? transparent = freezed,
    Object? userLevel = freezed,
  }) {
    return _then(_HTTPServerConfig(
      users: freezed == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<HTTPAccount>?,
      accounts: freezed == accounts
          ? _self._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<HTTPAccount>?,
      transparent: freezed == transparent
          ? _self.transparent
          : transparent // ignore: cast_nullable_to_non_nullable
              as bool?,
      userLevel: freezed == userLevel
          ? _self.userLevel
          : userLevel // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$HysteriaClientConfig {
  int get version;
  XrayAddress get address;
  int get port;

  /// Create a copy of HysteriaClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HysteriaClientConfigCopyWith<HysteriaClientConfig> get copyWith =>
      _$HysteriaClientConfigCopyWithImpl<HysteriaClientConfig>(
          this as HysteriaClientConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HysteriaClientConfig &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port));
  }

  @override
  int get hashCode => Object.hash(runtimeType, version, address, port);

  @override
  String toString() {
    return 'HysteriaClientConfig(version: $version, address: $address, port: $port)';
  }
}

/// @nodoc
abstract mixin class $HysteriaClientConfigCopyWith<$Res> {
  factory $HysteriaClientConfigCopyWith(HysteriaClientConfig value,
          $Res Function(HysteriaClientConfig) _then) =
      _$HysteriaClientConfigCopyWithImpl;
  @useResult
  $Res call({int version, XrayAddress address, int port});
}

/// @nodoc
class _$HysteriaClientConfigCopyWithImpl<$Res>
    implements $HysteriaClientConfigCopyWith<$Res> {
  _$HysteriaClientConfigCopyWithImpl(this._self, this._then);

  final HysteriaClientConfig _self;
  final $Res Function(HysteriaClientConfig) _then;

  /// Create a copy of HysteriaClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = null,
    Object? address = null,
    Object? port = null,
  }) {
    return _then(_self.copyWith(
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress,
      port: null == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [HysteriaClientConfig].
extension HysteriaClientConfigPatterns on HysteriaClientConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_HysteriaClientConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HysteriaClientConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_HysteriaClientConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HysteriaClientConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_HysteriaClientConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HysteriaClientConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int version, XrayAddress address, int port)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HysteriaClientConfig() when $default != null:
        return $default(_that.version, _that.address, _that.port);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int version, XrayAddress address, int port) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HysteriaClientConfig():
        return $default(_that.version, _that.address, _that.port);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int version, XrayAddress address, int port)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HysteriaClientConfig() when $default != null:
        return $default(_that.version, _that.address, _that.port);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _HysteriaClientConfig extends HysteriaClientConfig {
  const _HysteriaClientConfig(
      {required this.version, required this.address, required this.port})
      : super._();

  @override
  final int version;
  @override
  final XrayAddress address;
  @override
  final int port;

  /// Create a copy of HysteriaClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HysteriaClientConfigCopyWith<_HysteriaClientConfig> get copyWith =>
      __$HysteriaClientConfigCopyWithImpl<_HysteriaClientConfig>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HysteriaClientConfig &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port));
  }

  @override
  int get hashCode => Object.hash(runtimeType, version, address, port);

  @override
  String toString() {
    return 'HysteriaClientConfig(version: $version, address: $address, port: $port)';
  }
}

/// @nodoc
abstract mixin class _$HysteriaClientConfigCopyWith<$Res>
    implements $HysteriaClientConfigCopyWith<$Res> {
  factory _$HysteriaClientConfigCopyWith(_HysteriaClientConfig value,
          $Res Function(_HysteriaClientConfig) _then) =
      __$HysteriaClientConfigCopyWithImpl;
  @override
  @useResult
  $Res call({int version, XrayAddress address, int port});
}

/// @nodoc
class __$HysteriaClientConfigCopyWithImpl<$Res>
    implements _$HysteriaClientConfigCopyWith<$Res> {
  __$HysteriaClientConfigCopyWithImpl(this._self, this._then);

  final _HysteriaClientConfig _self;
  final $Res Function(_HysteriaClientConfig) _then;

  /// Create a copy of HysteriaClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? version = null,
    Object? address = null,
    Object? port = null,
  }) {
    return _then(_HysteriaClientConfig(
      version: null == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress,
      port: null == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$HysteriaServerConfig {
  int? get version;
  List<HysteriaUserConfig>? get users;
  List<HysteriaUserConfig>? get clients;

  /// Create a copy of HysteriaServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HysteriaServerConfigCopyWith<HysteriaServerConfig> get copyWith =>
      _$HysteriaServerConfigCopyWithImpl<HysteriaServerConfig>(
          this as HysteriaServerConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HysteriaServerConfig &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality().equals(other.users, users) &&
            const DeepCollectionEquality().equals(other.clients, clients));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      version,
      const DeepCollectionEquality().hash(users),
      const DeepCollectionEquality().hash(clients));

  @override
  String toString() {
    return 'HysteriaServerConfig(version: $version, users: $users, clients: $clients)';
  }
}

/// @nodoc
abstract mixin class $HysteriaServerConfigCopyWith<$Res> {
  factory $HysteriaServerConfigCopyWith(HysteriaServerConfig value,
          $Res Function(HysteriaServerConfig) _then) =
      _$HysteriaServerConfigCopyWithImpl;
  @useResult
  $Res call(
      {int? version,
      List<HysteriaUserConfig>? users,
      List<HysteriaUserConfig>? clients});
}

/// @nodoc
class _$HysteriaServerConfigCopyWithImpl<$Res>
    implements $HysteriaServerConfigCopyWith<$Res> {
  _$HysteriaServerConfigCopyWithImpl(this._self, this._then);

  final HysteriaServerConfig _self;
  final $Res Function(HysteriaServerConfig) _then;

  /// Create a copy of HysteriaServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? version = freezed,
    Object? users = freezed,
    Object? clients = freezed,
  }) {
    return _then(_self.copyWith(
      version: freezed == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      users: freezed == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<HysteriaUserConfig>?,
      clients: freezed == clients
          ? _self.clients
          : clients // ignore: cast_nullable_to_non_nullable
              as List<HysteriaUserConfig>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [HysteriaServerConfig].
extension HysteriaServerConfigPatterns on HysteriaServerConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_HysteriaServerConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HysteriaServerConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_HysteriaServerConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HysteriaServerConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_HysteriaServerConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HysteriaServerConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int? version, List<HysteriaUserConfig>? users,
            List<HysteriaUserConfig>? clients)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HysteriaServerConfig() when $default != null:
        return $default(_that.version, _that.users, _that.clients);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int? version, List<HysteriaUserConfig>? users,
            List<HysteriaUserConfig>? clients)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HysteriaServerConfig():
        return $default(_that.version, _that.users, _that.clients);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int? version, List<HysteriaUserConfig>? users,
            List<HysteriaUserConfig>? clients)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HysteriaServerConfig() when $default != null:
        return $default(_that.version, _that.users, _that.clients);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _HysteriaServerConfig extends HysteriaServerConfig {
  const _HysteriaServerConfig(
      {this.version,
      final List<HysteriaUserConfig>? users,
      final List<HysteriaUserConfig>? clients})
      : _users = users,
        _clients = clients,
        super._();

  @override
  final int? version;
  final List<HysteriaUserConfig>? _users;
  @override
  List<HysteriaUserConfig>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<HysteriaUserConfig>? _clients;
  @override
  List<HysteriaUserConfig>? get clients {
    final value = _clients;
    if (value == null) return null;
    if (_clients is EqualUnmodifiableListView) return _clients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of HysteriaServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HysteriaServerConfigCopyWith<_HysteriaServerConfig> get copyWith =>
      __$HysteriaServerConfigCopyWithImpl<_HysteriaServerConfig>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HysteriaServerConfig &&
            (identical(other.version, version) || other.version == version) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._clients, _clients));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      version,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_clients));

  @override
  String toString() {
    return 'HysteriaServerConfig(version: $version, users: $users, clients: $clients)';
  }
}

/// @nodoc
abstract mixin class _$HysteriaServerConfigCopyWith<$Res>
    implements $HysteriaServerConfigCopyWith<$Res> {
  factory _$HysteriaServerConfigCopyWith(_HysteriaServerConfig value,
          $Res Function(_HysteriaServerConfig) _then) =
      __$HysteriaServerConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? version,
      List<HysteriaUserConfig>? users,
      List<HysteriaUserConfig>? clients});
}

/// @nodoc
class __$HysteriaServerConfigCopyWithImpl<$Res>
    implements _$HysteriaServerConfigCopyWith<$Res> {
  __$HysteriaServerConfigCopyWithImpl(this._self, this._then);

  final _HysteriaServerConfig _self;
  final $Res Function(_HysteriaServerConfig) _then;

  /// Create a copy of HysteriaServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? version = freezed,
    Object? users = freezed,
    Object? clients = freezed,
  }) {
    return _then(_HysteriaServerConfig(
      version: freezed == version
          ? _self.version
          : version // ignore: cast_nullable_to_non_nullable
              as int?,
      users: freezed == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<HysteriaUserConfig>?,
      clients: freezed == clients
          ? _self._clients
          : clients // ignore: cast_nullable_to_non_nullable
              as List<HysteriaUserConfig>?,
    ));
  }
}

/// @nodoc
mixin _$HysteriaUserConfig {
  String get auth;
  int? get level;
  String? get email;

  /// Create a copy of HysteriaUserConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HysteriaUserConfigCopyWith<HysteriaUserConfig> get copyWith =>
      _$HysteriaUserConfigCopyWithImpl<HysteriaUserConfig>(
          this as HysteriaUserConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HysteriaUserConfig &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auth, level, email);

  @override
  String toString() {
    return 'HysteriaUserConfig(auth: $auth, level: $level, email: $email)';
  }
}

/// @nodoc
abstract mixin class $HysteriaUserConfigCopyWith<$Res> {
  factory $HysteriaUserConfigCopyWith(
          HysteriaUserConfig value, $Res Function(HysteriaUserConfig) _then) =
      _$HysteriaUserConfigCopyWithImpl;
  @useResult
  $Res call({String auth, int? level, String? email});
}

/// @nodoc
class _$HysteriaUserConfigCopyWithImpl<$Res>
    implements $HysteriaUserConfigCopyWith<$Res> {
  _$HysteriaUserConfigCopyWithImpl(this._self, this._then);

  final HysteriaUserConfig _self;
  final $Res Function(HysteriaUserConfig) _then;

  /// Create a copy of HysteriaUserConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? auth = null,
    Object? level = freezed,
    Object? email = freezed,
  }) {
    return _then(_self.copyWith(
      auth: null == auth
          ? _self.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as String,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [HysteriaUserConfig].
extension HysteriaUserConfigPatterns on HysteriaUserConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_HysteriaUserConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HysteriaUserConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_HysteriaUserConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HysteriaUserConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_HysteriaUserConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HysteriaUserConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String auth, int? level, String? email)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HysteriaUserConfig() when $default != null:
        return $default(_that.auth, _that.level, _that.email);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String auth, int? level, String? email) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HysteriaUserConfig():
        return $default(_that.auth, _that.level, _that.email);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String auth, int? level, String? email)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HysteriaUserConfig() when $default != null:
        return $default(_that.auth, _that.level, _that.email);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _HysteriaUserConfig extends HysteriaUserConfig {
  const _HysteriaUserConfig({required this.auth, this.level, this.email})
      : super._();

  @override
  final String auth;
  @override
  final int? level;
  @override
  final String? email;

  /// Create a copy of HysteriaUserConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HysteriaUserConfigCopyWith<_HysteriaUserConfig> get copyWith =>
      __$HysteriaUserConfigCopyWithImpl<_HysteriaUserConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HysteriaUserConfig &&
            (identical(other.auth, auth) || other.auth == auth) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, auth, level, email);

  @override
  String toString() {
    return 'HysteriaUserConfig(auth: $auth, level: $level, email: $email)';
  }
}

/// @nodoc
abstract mixin class _$HysteriaUserConfigCopyWith<$Res>
    implements $HysteriaUserConfigCopyWith<$Res> {
  factory _$HysteriaUserConfigCopyWith(
          _HysteriaUserConfig value, $Res Function(_HysteriaUserConfig) _then) =
      __$HysteriaUserConfigCopyWithImpl;
  @override
  @useResult
  $Res call({String auth, int? level, String? email});
}

/// @nodoc
class __$HysteriaUserConfigCopyWithImpl<$Res>
    implements _$HysteriaUserConfigCopyWith<$Res> {
  __$HysteriaUserConfigCopyWithImpl(this._self, this._then);

  final _HysteriaUserConfig _self;
  final $Res Function(_HysteriaUserConfig) _then;

  /// Create a copy of HysteriaUserConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? auth = null,
    Object? level = freezed,
    Object? email = freezed,
  }) {
    return _then(_HysteriaUserConfig(
      auth: null == auth
          ? _self.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as String,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$LoopbackConfig {
  String? get inboundTag;
  SniffingConfig? get sniffing;

  /// Create a copy of LoopbackConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoopbackConfigCopyWith<LoopbackConfig> get copyWith =>
      _$LoopbackConfigCopyWithImpl<LoopbackConfig>(
          this as LoopbackConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoopbackConfig &&
            (identical(other.inboundTag, inboundTag) ||
                other.inboundTag == inboundTag) &&
            (identical(other.sniffing, sniffing) ||
                other.sniffing == sniffing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inboundTag, sniffing);

  @override
  String toString() {
    return 'LoopbackConfig(inboundTag: $inboundTag, sniffing: $sniffing)';
  }
}

/// @nodoc
abstract mixin class $LoopbackConfigCopyWith<$Res> {
  factory $LoopbackConfigCopyWith(
          LoopbackConfig value, $Res Function(LoopbackConfig) _then) =
      _$LoopbackConfigCopyWithImpl;
  @useResult
  $Res call({String? inboundTag, SniffingConfig? sniffing});

  $SniffingConfigCopyWith<$Res>? get sniffing;
}

/// @nodoc
class _$LoopbackConfigCopyWithImpl<$Res>
    implements $LoopbackConfigCopyWith<$Res> {
  _$LoopbackConfigCopyWithImpl(this._self, this._then);

  final LoopbackConfig _self;
  final $Res Function(LoopbackConfig) _then;

  /// Create a copy of LoopbackConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? inboundTag = freezed,
    Object? sniffing = freezed,
  }) {
    return _then(_self.copyWith(
      inboundTag: freezed == inboundTag
          ? _self.inboundTag
          : inboundTag // ignore: cast_nullable_to_non_nullable
              as String?,
      sniffing: freezed == sniffing
          ? _self.sniffing
          : sniffing // ignore: cast_nullable_to_non_nullable
              as SniffingConfig?,
    ));
  }

  /// Create a copy of LoopbackConfig
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

/// Adds pattern-matching-related methods to [LoopbackConfig].
extension LoopbackConfigPatterns on LoopbackConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LoopbackConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoopbackConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LoopbackConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoopbackConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LoopbackConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoopbackConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? inboundTag, SniffingConfig? sniffing)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _LoopbackConfig() when $default != null:
        return $default(_that.inboundTag, _that.sniffing);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? inboundTag, SniffingConfig? sniffing) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoopbackConfig():
        return $default(_that.inboundTag, _that.sniffing);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? inboundTag, SniffingConfig? sniffing)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _LoopbackConfig() when $default != null:
        return $default(_that.inboundTag, _that.sniffing);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _LoopbackConfig extends LoopbackConfig {
  const _LoopbackConfig({this.inboundTag, this.sniffing}) : super._();

  @override
  final String? inboundTag;
  @override
  final SniffingConfig? sniffing;

  /// Create a copy of LoopbackConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoopbackConfigCopyWith<_LoopbackConfig> get copyWith =>
      __$LoopbackConfigCopyWithImpl<_LoopbackConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoopbackConfig &&
            (identical(other.inboundTag, inboundTag) ||
                other.inboundTag == inboundTag) &&
            (identical(other.sniffing, sniffing) ||
                other.sniffing == sniffing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, inboundTag, sniffing);

  @override
  String toString() {
    return 'LoopbackConfig(inboundTag: $inboundTag, sniffing: $sniffing)';
  }
}

/// @nodoc
abstract mixin class _$LoopbackConfigCopyWith<$Res>
    implements $LoopbackConfigCopyWith<$Res> {
  factory _$LoopbackConfigCopyWith(
          _LoopbackConfig value, $Res Function(_LoopbackConfig) _then) =
      __$LoopbackConfigCopyWithImpl;
  @override
  @useResult
  $Res call({String? inboundTag, SniffingConfig? sniffing});

  @override
  $SniffingConfigCopyWith<$Res>? get sniffing;
}

/// @nodoc
class __$LoopbackConfigCopyWithImpl<$Res>
    implements _$LoopbackConfigCopyWith<$Res> {
  __$LoopbackConfigCopyWithImpl(this._self, this._then);

  final _LoopbackConfig _self;
  final $Res Function(_LoopbackConfig) _then;

  /// Create a copy of LoopbackConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? inboundTag = freezed,
    Object? sniffing = freezed,
  }) {
    return _then(_LoopbackConfig(
      inboundTag: freezed == inboundTag
          ? _self.inboundTag
          : inboundTag // ignore: cast_nullable_to_non_nullable
              as String?,
      sniffing: freezed == sniffing
          ? _self.sniffing
          : sniffing // ignore: cast_nullable_to_non_nullable
              as SniffingConfig?,
    ));
  }

  /// Create a copy of LoopbackConfig
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
mixin _$Noise {
  String? get type;
  String? get packet;
  XrayInt32Range? get delay;
  String? get applyTo;

  /// Create a copy of Noise
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NoiseCopyWith<Noise> get copyWith =>
      _$NoiseCopyWithImpl<Noise>(this as Noise, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Noise &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.packet, packet) || other.packet == packet) &&
            (identical(other.delay, delay) || other.delay == delay) &&
            (identical(other.applyTo, applyTo) || other.applyTo == applyTo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, packet, delay, applyTo);

  @override
  String toString() {
    return 'Noise(type: $type, packet: $packet, delay: $delay, applyTo: $applyTo)';
  }
}

/// @nodoc
abstract mixin class $NoiseCopyWith<$Res> {
  factory $NoiseCopyWith(Noise value, $Res Function(Noise) _then) =
      _$NoiseCopyWithImpl;
  @useResult
  $Res call(
      {String? type, String? packet, XrayInt32Range? delay, String? applyTo});

  $XrayInt32RangeCopyWith<$Res>? get delay;
}

/// @nodoc
class _$NoiseCopyWithImpl<$Res> implements $NoiseCopyWith<$Res> {
  _$NoiseCopyWithImpl(this._self, this._then);

  final Noise _self;
  final $Res Function(Noise) _then;

  /// Create a copy of Noise
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? packet = freezed,
    Object? delay = freezed,
    Object? applyTo = freezed,
  }) {
    return _then(_self.copyWith(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      packet: freezed == packet
          ? _self.packet
          : packet // ignore: cast_nullable_to_non_nullable
              as String?,
      delay: freezed == delay
          ? _self.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as XrayInt32Range?,
      applyTo: freezed == applyTo
          ? _self.applyTo
          : applyTo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Noise
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

/// Adds pattern-matching-related methods to [Noise].
extension NoisePatterns on Noise {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_Noise value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Noise() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Noise value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Noise():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_Noise value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Noise() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? type, String? packet, XrayInt32Range? delay,
            String? applyTo)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Noise() when $default != null:
        return $default(_that.type, _that.packet, _that.delay, _that.applyTo);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? type, String? packet, XrayInt32Range? delay,
            String? applyTo)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Noise():
        return $default(_that.type, _that.packet, _that.delay, _that.applyTo);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? type, String? packet, XrayInt32Range? delay,
            String? applyTo)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Noise() when $default != null:
        return $default(_that.type, _that.packet, _that.delay, _that.applyTo);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Noise extends Noise {
  const _Noise({this.type, this.packet, this.delay, this.applyTo}) : super._();

  @override
  final String? type;
  @override
  final String? packet;
  @override
  final XrayInt32Range? delay;
  @override
  final String? applyTo;

  /// Create a copy of Noise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NoiseCopyWith<_Noise> get copyWith =>
      __$NoiseCopyWithImpl<_Noise>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Noise &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.packet, packet) || other.packet == packet) &&
            (identical(other.delay, delay) || other.delay == delay) &&
            (identical(other.applyTo, applyTo) || other.applyTo == applyTo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, packet, delay, applyTo);

  @override
  String toString() {
    return 'Noise(type: $type, packet: $packet, delay: $delay, applyTo: $applyTo)';
  }
}

/// @nodoc
abstract mixin class _$NoiseCopyWith<$Res> implements $NoiseCopyWith<$Res> {
  factory _$NoiseCopyWith(_Noise value, $Res Function(_Noise) _then) =
      __$NoiseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? type, String? packet, XrayInt32Range? delay, String? applyTo});

  @override
  $XrayInt32RangeCopyWith<$Res>? get delay;
}

/// @nodoc
class __$NoiseCopyWithImpl<$Res> implements _$NoiseCopyWith<$Res> {
  __$NoiseCopyWithImpl(this._self, this._then);

  final _Noise _self;
  final $Res Function(_Noise) _then;

  /// Create a copy of Noise
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = freezed,
    Object? packet = freezed,
    Object? delay = freezed,
    Object? applyTo = freezed,
  }) {
    return _then(_Noise(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      packet: freezed == packet
          ? _self.packet
          : packet // ignore: cast_nullable_to_non_nullable
              as String?,
      delay: freezed == delay
          ? _self.delay
          : delay // ignore: cast_nullable_to_non_nullable
              as XrayInt32Range?,
      applyTo: freezed == applyTo
          ? _self.applyTo
          : applyTo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of Noise
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
mixin _$ShadowsocksClientConfig {
  XrayAddress? get address;
  int? get port;
  int? get level;
  String? get email;
  @JsonKey(name: 'method')
  String? get cipher;
  String? get password;
  List<ShadowsocksServerTarget>? get servers;

  /// Create a copy of ShadowsocksClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShadowsocksClientConfigCopyWith<ShadowsocksClientConfig> get copyWith =>
      _$ShadowsocksClientConfigCopyWithImpl<ShadowsocksClientConfig>(
          this as ShadowsocksClientConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShadowsocksClientConfig &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.cipher, cipher) || other.cipher == cipher) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(other.servers, servers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, port, level, email,
      cipher, password, const DeepCollectionEquality().hash(servers));

  @override
  String toString() {
    return 'ShadowsocksClientConfig(address: $address, port: $port, level: $level, email: $email, cipher: $cipher, password: $password, servers: $servers)';
  }
}

/// @nodoc
abstract mixin class $ShadowsocksClientConfigCopyWith<$Res> {
  factory $ShadowsocksClientConfigCopyWith(ShadowsocksClientConfig value,
          $Res Function(ShadowsocksClientConfig) _then) =
      _$ShadowsocksClientConfigCopyWithImpl;
  @useResult
  $Res call(
      {XrayAddress? address,
      int? port,
      int? level,
      String? email,
      @JsonKey(name: 'method') String? cipher,
      String? password,
      List<ShadowsocksServerTarget>? servers});
}

/// @nodoc
class _$ShadowsocksClientConfigCopyWithImpl<$Res>
    implements $ShadowsocksClientConfigCopyWith<$Res> {
  _$ShadowsocksClientConfigCopyWithImpl(this._self, this._then);

  final ShadowsocksClientConfig _self;
  final $Res Function(ShadowsocksClientConfig) _then;

  /// Create a copy of ShadowsocksClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? port = freezed,
    Object? level = freezed,
    Object? email = freezed,
    Object? cipher = freezed,
    Object? password = freezed,
    Object? servers = freezed,
  }) {
    return _then(_self.copyWith(
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      cipher: freezed == cipher
          ? _self.cipher
          : cipher // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      servers: freezed == servers
          ? _self.servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<ShadowsocksServerTarget>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ShadowsocksClientConfig].
extension ShadowsocksClientConfigPatterns on ShadowsocksClientConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ShadowsocksClientConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksClientConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ShadowsocksClientConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksClientConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ShadowsocksClientConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksClientConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            XrayAddress? address,
            int? port,
            int? level,
            String? email,
            @JsonKey(name: 'method') String? cipher,
            String? password,
            List<ShadowsocksServerTarget>? servers)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksClientConfig() when $default != null:
        return $default(_that.address, _that.port, _that.level, _that.email,
            _that.cipher, _that.password, _that.servers);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            XrayAddress? address,
            int? port,
            int? level,
            String? email,
            @JsonKey(name: 'method') String? cipher,
            String? password,
            List<ShadowsocksServerTarget>? servers)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksClientConfig():
        return $default(_that.address, _that.port, _that.level, _that.email,
            _that.cipher, _that.password, _that.servers);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            XrayAddress? address,
            int? port,
            int? level,
            String? email,
            @JsonKey(name: 'method') String? cipher,
            String? password,
            List<ShadowsocksServerTarget>? servers)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksClientConfig() when $default != null:
        return $default(_that.address, _that.port, _that.level, _that.email,
            _that.cipher, _that.password, _that.servers);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ShadowsocksClientConfig extends ShadowsocksClientConfig {
  const _ShadowsocksClientConfig(
      {this.address,
      this.port,
      this.level,
      this.email,
      @JsonKey(name: 'method') this.cipher,
      this.password,
      final List<ShadowsocksServerTarget>? servers})
      : _servers = servers,
        super._();

  @override
  final XrayAddress? address;
  @override
  final int? port;
  @override
  final int? level;
  @override
  final String? email;
  @override
  @JsonKey(name: 'method')
  final String? cipher;
  @override
  final String? password;
  final List<ShadowsocksServerTarget>? _servers;
  @override
  List<ShadowsocksServerTarget>? get servers {
    final value = _servers;
    if (value == null) return null;
    if (_servers is EqualUnmodifiableListView) return _servers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of ShadowsocksClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ShadowsocksClientConfigCopyWith<_ShadowsocksClientConfig> get copyWith =>
      __$ShadowsocksClientConfigCopyWithImpl<_ShadowsocksClientConfig>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShadowsocksClientConfig &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.cipher, cipher) || other.cipher == cipher) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(other._servers, _servers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, port, level, email,
      cipher, password, const DeepCollectionEquality().hash(_servers));

  @override
  String toString() {
    return 'ShadowsocksClientConfig(address: $address, port: $port, level: $level, email: $email, cipher: $cipher, password: $password, servers: $servers)';
  }
}

/// @nodoc
abstract mixin class _$ShadowsocksClientConfigCopyWith<$Res>
    implements $ShadowsocksClientConfigCopyWith<$Res> {
  factory _$ShadowsocksClientConfigCopyWith(_ShadowsocksClientConfig value,
          $Res Function(_ShadowsocksClientConfig) _then) =
      __$ShadowsocksClientConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {XrayAddress? address,
      int? port,
      int? level,
      String? email,
      @JsonKey(name: 'method') String? cipher,
      String? password,
      List<ShadowsocksServerTarget>? servers});
}

/// @nodoc
class __$ShadowsocksClientConfigCopyWithImpl<$Res>
    implements _$ShadowsocksClientConfigCopyWith<$Res> {
  __$ShadowsocksClientConfigCopyWithImpl(this._self, this._then);

  final _ShadowsocksClientConfig _self;
  final $Res Function(_ShadowsocksClientConfig) _then;

  /// Create a copy of ShadowsocksClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = freezed,
    Object? port = freezed,
    Object? level = freezed,
    Object? email = freezed,
    Object? cipher = freezed,
    Object? password = freezed,
    Object? servers = freezed,
  }) {
    return _then(_ShadowsocksClientConfig(
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      cipher: freezed == cipher
          ? _self.cipher
          : cipher // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      servers: freezed == servers
          ? _self._servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<ShadowsocksServerTarget>?,
    ));
  }
}

/// @nodoc
mixin _$ShadowsocksServerConfig {
  @JsonKey(name: 'method')
  String? get cipher;
  String? get password;
  int? get level;
  String? get email;
  List<ShadowsocksUserConfig>? get users;
  List<ShadowsocksUserConfig>? get clients;
  @JsonKey(name: 'network')
  XrayNetworkList? get networkList;

  /// Create a copy of ShadowsocksServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShadowsocksServerConfigCopyWith<ShadowsocksServerConfig> get copyWith =>
      _$ShadowsocksServerConfigCopyWithImpl<ShadowsocksServerConfig>(
          this as ShadowsocksServerConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShadowsocksServerConfig &&
            (identical(other.cipher, cipher) || other.cipher == cipher) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other.users, users) &&
            const DeepCollectionEquality().equals(other.clients, clients) &&
            (identical(other.networkList, networkList) ||
                other.networkList == networkList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      cipher,
      password,
      level,
      email,
      const DeepCollectionEquality().hash(users),
      const DeepCollectionEquality().hash(clients),
      networkList);

  @override
  String toString() {
    return 'ShadowsocksServerConfig(cipher: $cipher, password: $password, level: $level, email: $email, users: $users, clients: $clients, networkList: $networkList)';
  }
}

/// @nodoc
abstract mixin class $ShadowsocksServerConfigCopyWith<$Res> {
  factory $ShadowsocksServerConfigCopyWith(ShadowsocksServerConfig value,
          $Res Function(ShadowsocksServerConfig) _then) =
      _$ShadowsocksServerConfigCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'method') String? cipher,
      String? password,
      int? level,
      String? email,
      List<ShadowsocksUserConfig>? users,
      List<ShadowsocksUserConfig>? clients,
      @JsonKey(name: 'network') XrayNetworkList? networkList});
}

/// @nodoc
class _$ShadowsocksServerConfigCopyWithImpl<$Res>
    implements $ShadowsocksServerConfigCopyWith<$Res> {
  _$ShadowsocksServerConfigCopyWithImpl(this._self, this._then);

  final ShadowsocksServerConfig _self;
  final $Res Function(ShadowsocksServerConfig) _then;

  /// Create a copy of ShadowsocksServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cipher = freezed,
    Object? password = freezed,
    Object? level = freezed,
    Object? email = freezed,
    Object? users = freezed,
    Object? clients = freezed,
    Object? networkList = freezed,
  }) {
    return _then(_self.copyWith(
      cipher: freezed == cipher
          ? _self.cipher
          : cipher // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      users: freezed == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<ShadowsocksUserConfig>?,
      clients: freezed == clients
          ? _self.clients
          : clients // ignore: cast_nullable_to_non_nullable
              as List<ShadowsocksUserConfig>?,
      networkList: freezed == networkList
          ? _self.networkList
          : networkList // ignore: cast_nullable_to_non_nullable
              as XrayNetworkList?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ShadowsocksServerConfig].
extension ShadowsocksServerConfigPatterns on ShadowsocksServerConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ShadowsocksServerConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksServerConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ShadowsocksServerConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksServerConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ShadowsocksServerConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksServerConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'method') String? cipher,
            String? password,
            int? level,
            String? email,
            List<ShadowsocksUserConfig>? users,
            List<ShadowsocksUserConfig>? clients,
            @JsonKey(name: 'network') XrayNetworkList? networkList)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksServerConfig() when $default != null:
        return $default(_that.cipher, _that.password, _that.level, _that.email,
            _that.users, _that.clients, _that.networkList);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'method') String? cipher,
            String? password,
            int? level,
            String? email,
            List<ShadowsocksUserConfig>? users,
            List<ShadowsocksUserConfig>? clients,
            @JsonKey(name: 'network') XrayNetworkList? networkList)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksServerConfig():
        return $default(_that.cipher, _that.password, _that.level, _that.email,
            _that.users, _that.clients, _that.networkList);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'method') String? cipher,
            String? password,
            int? level,
            String? email,
            List<ShadowsocksUserConfig>? users,
            List<ShadowsocksUserConfig>? clients,
            @JsonKey(name: 'network') XrayNetworkList? networkList)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksServerConfig() when $default != null:
        return $default(_that.cipher, _that.password, _that.level, _that.email,
            _that.users, _that.clients, _that.networkList);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ShadowsocksServerConfig extends ShadowsocksServerConfig {
  const _ShadowsocksServerConfig(
      {@JsonKey(name: 'method') this.cipher,
      this.password,
      this.level,
      this.email,
      final List<ShadowsocksUserConfig>? users,
      final List<ShadowsocksUserConfig>? clients,
      @JsonKey(name: 'network') this.networkList})
      : _users = users,
        _clients = clients,
        super._();

  @override
  @JsonKey(name: 'method')
  final String? cipher;
  @override
  final String? password;
  @override
  final int? level;
  @override
  final String? email;
  final List<ShadowsocksUserConfig>? _users;
  @override
  List<ShadowsocksUserConfig>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ShadowsocksUserConfig>? _clients;
  @override
  List<ShadowsocksUserConfig>? get clients {
    final value = _clients;
    if (value == null) return null;
    if (_clients is EqualUnmodifiableListView) return _clients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'network')
  final XrayNetworkList? networkList;

  /// Create a copy of ShadowsocksServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ShadowsocksServerConfigCopyWith<_ShadowsocksServerConfig> get copyWith =>
      __$ShadowsocksServerConfigCopyWithImpl<_ShadowsocksServerConfig>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShadowsocksServerConfig &&
            (identical(other.cipher, cipher) || other.cipher == cipher) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._clients, _clients) &&
            (identical(other.networkList, networkList) ||
                other.networkList == networkList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      cipher,
      password,
      level,
      email,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_clients),
      networkList);

  @override
  String toString() {
    return 'ShadowsocksServerConfig(cipher: $cipher, password: $password, level: $level, email: $email, users: $users, clients: $clients, networkList: $networkList)';
  }
}

/// @nodoc
abstract mixin class _$ShadowsocksServerConfigCopyWith<$Res>
    implements $ShadowsocksServerConfigCopyWith<$Res> {
  factory _$ShadowsocksServerConfigCopyWith(_ShadowsocksServerConfig value,
          $Res Function(_ShadowsocksServerConfig) _then) =
      __$ShadowsocksServerConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'method') String? cipher,
      String? password,
      int? level,
      String? email,
      List<ShadowsocksUserConfig>? users,
      List<ShadowsocksUserConfig>? clients,
      @JsonKey(name: 'network') XrayNetworkList? networkList});
}

/// @nodoc
class __$ShadowsocksServerConfigCopyWithImpl<$Res>
    implements _$ShadowsocksServerConfigCopyWith<$Res> {
  __$ShadowsocksServerConfigCopyWithImpl(this._self, this._then);

  final _ShadowsocksServerConfig _self;
  final $Res Function(_ShadowsocksServerConfig) _then;

  /// Create a copy of ShadowsocksServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cipher = freezed,
    Object? password = freezed,
    Object? level = freezed,
    Object? email = freezed,
    Object? users = freezed,
    Object? clients = freezed,
    Object? networkList = freezed,
  }) {
    return _then(_ShadowsocksServerConfig(
      cipher: freezed == cipher
          ? _self.cipher
          : cipher // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      users: freezed == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<ShadowsocksUserConfig>?,
      clients: freezed == clients
          ? _self._clients
          : clients // ignore: cast_nullable_to_non_nullable
              as List<ShadowsocksUserConfig>?,
      networkList: freezed == networkList
          ? _self.networkList
          : networkList // ignore: cast_nullable_to_non_nullable
              as XrayNetworkList?,
    ));
  }
}

/// @nodoc
mixin _$ShadowsocksServerTarget {
  XrayAddress get address;
  int get port;
  int? get level;
  String? get email;
  @JsonKey(name: 'method')
  String? get cipher;
  String get password;

  /// Create a copy of ShadowsocksServerTarget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShadowsocksServerTargetCopyWith<ShadowsocksServerTarget> get copyWith =>
      _$ShadowsocksServerTargetCopyWithImpl<ShadowsocksServerTarget>(
          this as ShadowsocksServerTarget, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShadowsocksServerTarget &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.cipher, cipher) || other.cipher == cipher) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, address, port, level, email, cipher, password);

  @override
  String toString() {
    return 'ShadowsocksServerTarget(address: $address, port: $port, level: $level, email: $email, cipher: $cipher, password: $password)';
  }
}

/// @nodoc
abstract mixin class $ShadowsocksServerTargetCopyWith<$Res> {
  factory $ShadowsocksServerTargetCopyWith(ShadowsocksServerTarget value,
          $Res Function(ShadowsocksServerTarget) _then) =
      _$ShadowsocksServerTargetCopyWithImpl;
  @useResult
  $Res call(
      {XrayAddress address,
      int port,
      int? level,
      String? email,
      @JsonKey(name: 'method') String? cipher,
      String password});
}

/// @nodoc
class _$ShadowsocksServerTargetCopyWithImpl<$Res>
    implements $ShadowsocksServerTargetCopyWith<$Res> {
  _$ShadowsocksServerTargetCopyWithImpl(this._self, this._then);

  final ShadowsocksServerTarget _self;
  final $Res Function(ShadowsocksServerTarget) _then;

  /// Create a copy of ShadowsocksServerTarget
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? port = null,
    Object? level = freezed,
    Object? email = freezed,
    Object? cipher = freezed,
    Object? password = null,
  }) {
    return _then(_self.copyWith(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress,
      port: null == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      cipher: freezed == cipher
          ? _self.cipher
          : cipher // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ShadowsocksServerTarget].
extension ShadowsocksServerTargetPatterns on ShadowsocksServerTarget {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ShadowsocksServerTarget value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksServerTarget() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ShadowsocksServerTarget value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksServerTarget():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ShadowsocksServerTarget value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksServerTarget() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(XrayAddress address, int port, int? level, String? email,
            @JsonKey(name: 'method') String? cipher, String password)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksServerTarget() when $default != null:
        return $default(_that.address, _that.port, _that.level, _that.email,
            _that.cipher, _that.password);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(XrayAddress address, int port, int? level, String? email,
            @JsonKey(name: 'method') String? cipher, String password)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksServerTarget():
        return $default(_that.address, _that.port, _that.level, _that.email,
            _that.cipher, _that.password);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(XrayAddress address, int port, int? level, String? email,
            @JsonKey(name: 'method') String? cipher, String password)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksServerTarget() when $default != null:
        return $default(_that.address, _that.port, _that.level, _that.email,
            _that.cipher, _that.password);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ShadowsocksServerTarget extends ShadowsocksServerTarget {
  const _ShadowsocksServerTarget(
      {required this.address,
      required this.port,
      this.level,
      this.email,
      @JsonKey(name: 'method') this.cipher,
      required this.password})
      : super._();

  @override
  final XrayAddress address;
  @override
  final int port;
  @override
  final int? level;
  @override
  final String? email;
  @override
  @JsonKey(name: 'method')
  final String? cipher;
  @override
  final String password;

  /// Create a copy of ShadowsocksServerTarget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ShadowsocksServerTargetCopyWith<_ShadowsocksServerTarget> get copyWith =>
      __$ShadowsocksServerTargetCopyWithImpl<_ShadowsocksServerTarget>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShadowsocksServerTarget &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.cipher, cipher) || other.cipher == cipher) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, address, port, level, email, cipher, password);

  @override
  String toString() {
    return 'ShadowsocksServerTarget(address: $address, port: $port, level: $level, email: $email, cipher: $cipher, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$ShadowsocksServerTargetCopyWith<$Res>
    implements $ShadowsocksServerTargetCopyWith<$Res> {
  factory _$ShadowsocksServerTargetCopyWith(_ShadowsocksServerTarget value,
          $Res Function(_ShadowsocksServerTarget) _then) =
      __$ShadowsocksServerTargetCopyWithImpl;
  @override
  @useResult
  $Res call(
      {XrayAddress address,
      int port,
      int? level,
      String? email,
      @JsonKey(name: 'method') String? cipher,
      String password});
}

/// @nodoc
class __$ShadowsocksServerTargetCopyWithImpl<$Res>
    implements _$ShadowsocksServerTargetCopyWith<$Res> {
  __$ShadowsocksServerTargetCopyWithImpl(this._self, this._then);

  final _ShadowsocksServerTarget _self;
  final $Res Function(_ShadowsocksServerTarget) _then;

  /// Create a copy of ShadowsocksServerTarget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = null,
    Object? port = null,
    Object? level = freezed,
    Object? email = freezed,
    Object? cipher = freezed,
    Object? password = null,
  }) {
    return _then(_ShadowsocksServerTarget(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress,
      port: null == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      cipher: freezed == cipher
          ? _self.cipher
          : cipher // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$ShadowsocksUserConfig {
  @JsonKey(name: 'method')
  String? get cipher;
  String get password;
  int? get level;
  String? get email;
  XrayAddress? get address;
  int? get port;

  /// Create a copy of ShadowsocksUserConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ShadowsocksUserConfigCopyWith<ShadowsocksUserConfig> get copyWith =>
      _$ShadowsocksUserConfigCopyWithImpl<ShadowsocksUserConfig>(
          this as ShadowsocksUserConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ShadowsocksUserConfig &&
            (identical(other.cipher, cipher) || other.cipher == cipher) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, cipher, password, level, email, address, port);

  @override
  String toString() {
    return 'ShadowsocksUserConfig(cipher: $cipher, password: $password, level: $level, email: $email, address: $address, port: $port)';
  }
}

/// @nodoc
abstract mixin class $ShadowsocksUserConfigCopyWith<$Res> {
  factory $ShadowsocksUserConfigCopyWith(ShadowsocksUserConfig value,
          $Res Function(ShadowsocksUserConfig) _then) =
      _$ShadowsocksUserConfigCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'method') String? cipher,
      String password,
      int? level,
      String? email,
      XrayAddress? address,
      int? port});
}

/// @nodoc
class _$ShadowsocksUserConfigCopyWithImpl<$Res>
    implements $ShadowsocksUserConfigCopyWith<$Res> {
  _$ShadowsocksUserConfigCopyWithImpl(this._self, this._then);

  final ShadowsocksUserConfig _self;
  final $Res Function(ShadowsocksUserConfig) _then;

  /// Create a copy of ShadowsocksUserConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cipher = freezed,
    Object? password = null,
    Object? level = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? port = freezed,
  }) {
    return _then(_self.copyWith(
      cipher: freezed == cipher
          ? _self.cipher
          : cipher // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ShadowsocksUserConfig].
extension ShadowsocksUserConfigPatterns on ShadowsocksUserConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ShadowsocksUserConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksUserConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ShadowsocksUserConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksUserConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ShadowsocksUserConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksUserConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'method') String? cipher, String password,
            int? level, String? email, XrayAddress? address, int? port)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksUserConfig() when $default != null:
        return $default(_that.cipher, _that.password, _that.level, _that.email,
            _that.address, _that.port);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'method') String? cipher, String password,
            int? level, String? email, XrayAddress? address, int? port)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksUserConfig():
        return $default(_that.cipher, _that.password, _that.level, _that.email,
            _that.address, _that.port);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: 'method') String? cipher, String password,
            int? level, String? email, XrayAddress? address, int? port)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ShadowsocksUserConfig() when $default != null:
        return $default(_that.cipher, _that.password, _that.level, _that.email,
            _that.address, _that.port);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ShadowsocksUserConfig extends ShadowsocksUserConfig {
  const _ShadowsocksUserConfig(
      {@JsonKey(name: 'method') this.cipher,
      required this.password,
      this.level,
      this.email,
      this.address,
      this.port})
      : super._();

  @override
  @JsonKey(name: 'method')
  final String? cipher;
  @override
  final String password;
  @override
  final int? level;
  @override
  final String? email;
  @override
  final XrayAddress? address;
  @override
  final int? port;

  /// Create a copy of ShadowsocksUserConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ShadowsocksUserConfigCopyWith<_ShadowsocksUserConfig> get copyWith =>
      __$ShadowsocksUserConfigCopyWithImpl<_ShadowsocksUserConfig>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ShadowsocksUserConfig &&
            (identical(other.cipher, cipher) || other.cipher == cipher) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, cipher, password, level, email, address, port);

  @override
  String toString() {
    return 'ShadowsocksUserConfig(cipher: $cipher, password: $password, level: $level, email: $email, address: $address, port: $port)';
  }
}

/// @nodoc
abstract mixin class _$ShadowsocksUserConfigCopyWith<$Res>
    implements $ShadowsocksUserConfigCopyWith<$Res> {
  factory _$ShadowsocksUserConfigCopyWith(_ShadowsocksUserConfig value,
          $Res Function(_ShadowsocksUserConfig) _then) =
      __$ShadowsocksUserConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'method') String? cipher,
      String password,
      int? level,
      String? email,
      XrayAddress? address,
      int? port});
}

/// @nodoc
class __$ShadowsocksUserConfigCopyWithImpl<$Res>
    implements _$ShadowsocksUserConfigCopyWith<$Res> {
  __$ShadowsocksUserConfigCopyWithImpl(this._self, this._then);

  final _ShadowsocksUserConfig _self;
  final $Res Function(_ShadowsocksUserConfig) _then;

  /// Create a copy of ShadowsocksUserConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cipher = freezed,
    Object? password = null,
    Object? level = freezed,
    Object? email = freezed,
    Object? address = freezed,
    Object? port = freezed,
  }) {
    return _then(_ShadowsocksUserConfig(
      cipher: freezed == cipher
          ? _self.cipher
          : cipher // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$SocksAccount {
  @JsonKey(name: 'user')
  String? get username;
  @JsonKey(name: 'pass')
  String? get password;

  /// Create a copy of SocksAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SocksAccountCopyWith<SocksAccount> get copyWith =>
      _$SocksAccountCopyWithImpl<SocksAccount>(
          this as SocksAccount, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SocksAccount &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @override
  String toString() {
    return 'SocksAccount(username: $username, password: $password)';
  }
}

/// @nodoc
abstract mixin class $SocksAccountCopyWith<$Res> {
  factory $SocksAccountCopyWith(
          SocksAccount value, $Res Function(SocksAccount) _then) =
      _$SocksAccountCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'user') String? username,
      @JsonKey(name: 'pass') String? password});
}

/// @nodoc
class _$SocksAccountCopyWithImpl<$Res> implements $SocksAccountCopyWith<$Res> {
  _$SocksAccountCopyWithImpl(this._self, this._then);

  final SocksAccount _self;
  final $Res Function(SocksAccount) _then;

  /// Create a copy of SocksAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_self.copyWith(
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SocksAccount].
extension SocksAccountPatterns on SocksAccount {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SocksAccount value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SocksAccount() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SocksAccount value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocksAccount():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SocksAccount value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocksAccount() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'user') String? username,
            @JsonKey(name: 'pass') String? password)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SocksAccount() when $default != null:
        return $default(_that.username, _that.password);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@JsonKey(name: 'user') String? username,
            @JsonKey(name: 'pass') String? password)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocksAccount():
        return $default(_that.username, _that.password);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@JsonKey(name: 'user') String? username,
            @JsonKey(name: 'pass') String? password)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocksAccount() when $default != null:
        return $default(_that.username, _that.password);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SocksAccount extends SocksAccount {
  const _SocksAccount(
      {@JsonKey(name: 'user') this.username,
      @JsonKey(name: 'pass') this.password})
      : super._();

  @override
  @JsonKey(name: 'user')
  final String? username;
  @override
  @JsonKey(name: 'pass')
  final String? password;

  /// Create a copy of SocksAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SocksAccountCopyWith<_SocksAccount> get copyWith =>
      __$SocksAccountCopyWithImpl<_SocksAccount>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocksAccount &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  @override
  String toString() {
    return 'SocksAccount(username: $username, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$SocksAccountCopyWith<$Res>
    implements $SocksAccountCopyWith<$Res> {
  factory _$SocksAccountCopyWith(
          _SocksAccount value, $Res Function(_SocksAccount) _then) =
      __$SocksAccountCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'user') String? username,
      @JsonKey(name: 'pass') String? password});
}

/// @nodoc
class __$SocksAccountCopyWithImpl<$Res>
    implements _$SocksAccountCopyWith<$Res> {
  __$SocksAccountCopyWithImpl(this._self, this._then);

  final _SocksAccount _self;
  final $Res Function(_SocksAccount) _then;

  /// Create a copy of SocksAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_SocksAccount(
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$SocksClientConfig {
  XrayAddress? get address;
  int? get port;
  int? get level;
  String? get email;
  @JsonKey(name: 'user')
  String? get username;
  @JsonKey(name: 'pass')
  String? get password;
  List<SocksRemoteConfig>? get servers;

  /// Create a copy of SocksClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SocksClientConfigCopyWith<SocksClientConfig> get copyWith =>
      _$SocksClientConfigCopyWithImpl<SocksClientConfig>(
          this as SocksClientConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SocksClientConfig &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(other.servers, servers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, port, level, email,
      username, password, const DeepCollectionEquality().hash(servers));

  @override
  String toString() {
    return 'SocksClientConfig(address: $address, port: $port, level: $level, email: $email, username: $username, password: $password, servers: $servers)';
  }
}

/// @nodoc
abstract mixin class $SocksClientConfigCopyWith<$Res> {
  factory $SocksClientConfigCopyWith(
          SocksClientConfig value, $Res Function(SocksClientConfig) _then) =
      _$SocksClientConfigCopyWithImpl;
  @useResult
  $Res call(
      {XrayAddress? address,
      int? port,
      int? level,
      String? email,
      @JsonKey(name: 'user') String? username,
      @JsonKey(name: 'pass') String? password,
      List<SocksRemoteConfig>? servers});
}

/// @nodoc
class _$SocksClientConfigCopyWithImpl<$Res>
    implements $SocksClientConfigCopyWith<$Res> {
  _$SocksClientConfigCopyWithImpl(this._self, this._then);

  final SocksClientConfig _self;
  final $Res Function(SocksClientConfig) _then;

  /// Create a copy of SocksClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? port = freezed,
    Object? level = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? servers = freezed,
  }) {
    return _then(_self.copyWith(
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      servers: freezed == servers
          ? _self.servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<SocksRemoteConfig>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SocksClientConfig].
extension SocksClientConfigPatterns on SocksClientConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SocksClientConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SocksClientConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SocksClientConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocksClientConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SocksClientConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocksClientConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            XrayAddress? address,
            int? port,
            int? level,
            String? email,
            @JsonKey(name: 'user') String? username,
            @JsonKey(name: 'pass') String? password,
            List<SocksRemoteConfig>? servers)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SocksClientConfig() when $default != null:
        return $default(_that.address, _that.port, _that.level, _that.email,
            _that.username, _that.password, _that.servers);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            XrayAddress? address,
            int? port,
            int? level,
            String? email,
            @JsonKey(name: 'user') String? username,
            @JsonKey(name: 'pass') String? password,
            List<SocksRemoteConfig>? servers)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocksClientConfig():
        return $default(_that.address, _that.port, _that.level, _that.email,
            _that.username, _that.password, _that.servers);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            XrayAddress? address,
            int? port,
            int? level,
            String? email,
            @JsonKey(name: 'user') String? username,
            @JsonKey(name: 'pass') String? password,
            List<SocksRemoteConfig>? servers)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocksClientConfig() when $default != null:
        return $default(_that.address, _that.port, _that.level, _that.email,
            _that.username, _that.password, _that.servers);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SocksClientConfig extends SocksClientConfig {
  const _SocksClientConfig(
      {this.address,
      this.port,
      this.level,
      this.email,
      @JsonKey(name: 'user') this.username,
      @JsonKey(name: 'pass') this.password,
      final List<SocksRemoteConfig>? servers})
      : _servers = servers,
        super._();

  @override
  final XrayAddress? address;
  @override
  final int? port;
  @override
  final int? level;
  @override
  final String? email;
  @override
  @JsonKey(name: 'user')
  final String? username;
  @override
  @JsonKey(name: 'pass')
  final String? password;
  final List<SocksRemoteConfig>? _servers;
  @override
  List<SocksRemoteConfig>? get servers {
    final value = _servers;
    if (value == null) return null;
    if (_servers is EqualUnmodifiableListView) return _servers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of SocksClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SocksClientConfigCopyWith<_SocksClientConfig> get copyWith =>
      __$SocksClientConfigCopyWithImpl<_SocksClientConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocksClientConfig &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            const DeepCollectionEquality().equals(other._servers, _servers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, port, level, email,
      username, password, const DeepCollectionEquality().hash(_servers));

  @override
  String toString() {
    return 'SocksClientConfig(address: $address, port: $port, level: $level, email: $email, username: $username, password: $password, servers: $servers)';
  }
}

/// @nodoc
abstract mixin class _$SocksClientConfigCopyWith<$Res>
    implements $SocksClientConfigCopyWith<$Res> {
  factory _$SocksClientConfigCopyWith(
          _SocksClientConfig value, $Res Function(_SocksClientConfig) _then) =
      __$SocksClientConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {XrayAddress? address,
      int? port,
      int? level,
      String? email,
      @JsonKey(name: 'user') String? username,
      @JsonKey(name: 'pass') String? password,
      List<SocksRemoteConfig>? servers});
}

/// @nodoc
class __$SocksClientConfigCopyWithImpl<$Res>
    implements _$SocksClientConfigCopyWith<$Res> {
  __$SocksClientConfigCopyWithImpl(this._self, this._then);

  final _SocksClientConfig _self;
  final $Res Function(_SocksClientConfig) _then;

  /// Create a copy of SocksClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = freezed,
    Object? port = freezed,
    Object? level = freezed,
    Object? email = freezed,
    Object? username = freezed,
    Object? password = freezed,
    Object? servers = freezed,
  }) {
    return _then(_SocksClientConfig(
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      username: freezed == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      servers: freezed == servers
          ? _self._servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<SocksRemoteConfig>?,
    ));
  }
}

/// @nodoc
mixin _$SocksRemoteConfig {
  XrayAddress get address;
  int get port;
  List<SocksAccount>? get users;

  /// Create a copy of SocksRemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SocksRemoteConfigCopyWith<SocksRemoteConfig> get copyWith =>
      _$SocksRemoteConfigCopyWithImpl<SocksRemoteConfig>(
          this as SocksRemoteConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SocksRemoteConfig &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            const DeepCollectionEquality().equals(other.users, users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, address, port, const DeepCollectionEquality().hash(users));

  @override
  String toString() {
    return 'SocksRemoteConfig(address: $address, port: $port, users: $users)';
  }
}

/// @nodoc
abstract mixin class $SocksRemoteConfigCopyWith<$Res> {
  factory $SocksRemoteConfigCopyWith(
          SocksRemoteConfig value, $Res Function(SocksRemoteConfig) _then) =
      _$SocksRemoteConfigCopyWithImpl;
  @useResult
  $Res call({XrayAddress address, int port, List<SocksAccount>? users});
}

/// @nodoc
class _$SocksRemoteConfigCopyWithImpl<$Res>
    implements $SocksRemoteConfigCopyWith<$Res> {
  _$SocksRemoteConfigCopyWithImpl(this._self, this._then);

  final SocksRemoteConfig _self;
  final $Res Function(SocksRemoteConfig) _then;

  /// Create a copy of SocksRemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? port = null,
    Object? users = freezed,
  }) {
    return _then(_self.copyWith(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress,
      port: null == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      users: freezed == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<SocksAccount>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SocksRemoteConfig].
extension SocksRemoteConfigPatterns on SocksRemoteConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SocksRemoteConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SocksRemoteConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SocksRemoteConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocksRemoteConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SocksRemoteConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocksRemoteConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(XrayAddress address, int port, List<SocksAccount>? users)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SocksRemoteConfig() when $default != null:
        return $default(_that.address, _that.port, _that.users);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(XrayAddress address, int port, List<SocksAccount>? users)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocksRemoteConfig():
        return $default(_that.address, _that.port, _that.users);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(XrayAddress address, int port, List<SocksAccount>? users)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocksRemoteConfig() when $default != null:
        return $default(_that.address, _that.port, _that.users);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SocksRemoteConfig extends SocksRemoteConfig {
  const _SocksRemoteConfig(
      {required this.address,
      required this.port,
      final List<SocksAccount>? users})
      : _users = users,
        super._();

  @override
  final XrayAddress address;
  @override
  final int port;
  final List<SocksAccount>? _users;
  @override
  List<SocksAccount>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of SocksRemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SocksRemoteConfigCopyWith<_SocksRemoteConfig> get copyWith =>
      __$SocksRemoteConfigCopyWithImpl<_SocksRemoteConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocksRemoteConfig &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, address, port, const DeepCollectionEquality().hash(_users));

  @override
  String toString() {
    return 'SocksRemoteConfig(address: $address, port: $port, users: $users)';
  }
}

/// @nodoc
abstract mixin class _$SocksRemoteConfigCopyWith<$Res>
    implements $SocksRemoteConfigCopyWith<$Res> {
  factory _$SocksRemoteConfigCopyWith(
          _SocksRemoteConfig value, $Res Function(_SocksRemoteConfig) _then) =
      __$SocksRemoteConfigCopyWithImpl;
  @override
  @useResult
  $Res call({XrayAddress address, int port, List<SocksAccount>? users});
}

/// @nodoc
class __$SocksRemoteConfigCopyWithImpl<$Res>
    implements _$SocksRemoteConfigCopyWith<$Res> {
  __$SocksRemoteConfigCopyWithImpl(this._self, this._then);

  final _SocksRemoteConfig _self;
  final $Res Function(_SocksRemoteConfig) _then;

  /// Create a copy of SocksRemoteConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = null,
    Object? port = null,
    Object? users = freezed,
  }) {
    return _then(_SocksRemoteConfig(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress,
      port: null == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      users: freezed == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<SocksAccount>?,
    ));
  }
}

/// @nodoc
mixin _$SocksServerConfig {
  @JsonKey(name: 'auth')
  SocksAuthMethod? get authMethod;
  List<SocksAccount>? get users;
  List<SocksAccount>? get accounts;
  bool? get udp;
  @JsonKey(name: 'ip')
  XrayAddress? get host;
  int? get userLevel;

  /// Create a copy of SocksServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SocksServerConfigCopyWith<SocksServerConfig> get copyWith =>
      _$SocksServerConfigCopyWithImpl<SocksServerConfig>(
          this as SocksServerConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SocksServerConfig &&
            (identical(other.authMethod, authMethod) ||
                other.authMethod == authMethod) &&
            const DeepCollectionEquality().equals(other.users, users) &&
            const DeepCollectionEquality().equals(other.accounts, accounts) &&
            (identical(other.udp, udp) || other.udp == udp) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.userLevel, userLevel) ||
                other.userLevel == userLevel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      authMethod,
      const DeepCollectionEquality().hash(users),
      const DeepCollectionEquality().hash(accounts),
      udp,
      host,
      userLevel);

  @override
  String toString() {
    return 'SocksServerConfig(authMethod: $authMethod, users: $users, accounts: $accounts, udp: $udp, host: $host, userLevel: $userLevel)';
  }
}

/// @nodoc
abstract mixin class $SocksServerConfigCopyWith<$Res> {
  factory $SocksServerConfigCopyWith(
          SocksServerConfig value, $Res Function(SocksServerConfig) _then) =
      _$SocksServerConfigCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'auth') SocksAuthMethod? authMethod,
      List<SocksAccount>? users,
      List<SocksAccount>? accounts,
      bool? udp,
      @JsonKey(name: 'ip') XrayAddress? host,
      int? userLevel});
}

/// @nodoc
class _$SocksServerConfigCopyWithImpl<$Res>
    implements $SocksServerConfigCopyWith<$Res> {
  _$SocksServerConfigCopyWithImpl(this._self, this._then);

  final SocksServerConfig _self;
  final $Res Function(SocksServerConfig) _then;

  /// Create a copy of SocksServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authMethod = freezed,
    Object? users = freezed,
    Object? accounts = freezed,
    Object? udp = freezed,
    Object? host = freezed,
    Object? userLevel = freezed,
  }) {
    return _then(_self.copyWith(
      authMethod: freezed == authMethod
          ? _self.authMethod
          : authMethod // ignore: cast_nullable_to_non_nullable
              as SocksAuthMethod?,
      users: freezed == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<SocksAccount>?,
      accounts: freezed == accounts
          ? _self.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<SocksAccount>?,
      udp: freezed == udp
          ? _self.udp
          : udp // ignore: cast_nullable_to_non_nullable
              as bool?,
      host: freezed == host
          ? _self.host
          : host // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      userLevel: freezed == userLevel
          ? _self.userLevel
          : userLevel // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SocksServerConfig].
extension SocksServerConfigPatterns on SocksServerConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_SocksServerConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SocksServerConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SocksServerConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocksServerConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_SocksServerConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocksServerConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'auth') SocksAuthMethod? authMethod,
            List<SocksAccount>? users,
            List<SocksAccount>? accounts,
            bool? udp,
            @JsonKey(name: 'ip') XrayAddress? host,
            int? userLevel)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SocksServerConfig() when $default != null:
        return $default(_that.authMethod, _that.users, _that.accounts,
            _that.udp, _that.host, _that.userLevel);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'auth') SocksAuthMethod? authMethod,
            List<SocksAccount>? users,
            List<SocksAccount>? accounts,
            bool? udp,
            @JsonKey(name: 'ip') XrayAddress? host,
            int? userLevel)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocksServerConfig():
        return $default(_that.authMethod, _that.users, _that.accounts,
            _that.udp, _that.host, _that.userLevel);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'auth') SocksAuthMethod? authMethod,
            List<SocksAccount>? users,
            List<SocksAccount>? accounts,
            bool? udp,
            @JsonKey(name: 'ip') XrayAddress? host,
            int? userLevel)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SocksServerConfig() when $default != null:
        return $default(_that.authMethod, _that.users, _that.accounts,
            _that.udp, _that.host, _that.userLevel);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SocksServerConfig extends SocksServerConfig {
  const _SocksServerConfig(
      {@JsonKey(name: 'auth') this.authMethod,
      final List<SocksAccount>? users,
      final List<SocksAccount>? accounts,
      this.udp,
      @JsonKey(name: 'ip') this.host,
      this.userLevel})
      : _users = users,
        _accounts = accounts,
        super._();

  @override
  @JsonKey(name: 'auth')
  final SocksAuthMethod? authMethod;
  final List<SocksAccount>? _users;
  @override
  List<SocksAccount>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SocksAccount>? _accounts;
  @override
  List<SocksAccount>? get accounts {
    final value = _accounts;
    if (value == null) return null;
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? udp;
  @override
  @JsonKey(name: 'ip')
  final XrayAddress? host;
  @override
  final int? userLevel;

  /// Create a copy of SocksServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SocksServerConfigCopyWith<_SocksServerConfig> get copyWith =>
      __$SocksServerConfigCopyWithImpl<_SocksServerConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SocksServerConfig &&
            (identical(other.authMethod, authMethod) ||
                other.authMethod == authMethod) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            (identical(other.udp, udp) || other.udp == udp) &&
            (identical(other.host, host) || other.host == host) &&
            (identical(other.userLevel, userLevel) ||
                other.userLevel == userLevel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      authMethod,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_accounts),
      udp,
      host,
      userLevel);

  @override
  String toString() {
    return 'SocksServerConfig(authMethod: $authMethod, users: $users, accounts: $accounts, udp: $udp, host: $host, userLevel: $userLevel)';
  }
}

/// @nodoc
abstract mixin class _$SocksServerConfigCopyWith<$Res>
    implements $SocksServerConfigCopyWith<$Res> {
  factory _$SocksServerConfigCopyWith(
          _SocksServerConfig value, $Res Function(_SocksServerConfig) _then) =
      __$SocksServerConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'auth') SocksAuthMethod? authMethod,
      List<SocksAccount>? users,
      List<SocksAccount>? accounts,
      bool? udp,
      @JsonKey(name: 'ip') XrayAddress? host,
      int? userLevel});
}

/// @nodoc
class __$SocksServerConfigCopyWithImpl<$Res>
    implements _$SocksServerConfigCopyWith<$Res> {
  __$SocksServerConfigCopyWithImpl(this._self, this._then);

  final _SocksServerConfig _self;
  final $Res Function(_SocksServerConfig) _then;

  /// Create a copy of SocksServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? authMethod = freezed,
    Object? users = freezed,
    Object? accounts = freezed,
    Object? udp = freezed,
    Object? host = freezed,
    Object? userLevel = freezed,
  }) {
    return _then(_SocksServerConfig(
      authMethod: freezed == authMethod
          ? _self.authMethod
          : authMethod // ignore: cast_nullable_to_non_nullable
              as SocksAuthMethod?,
      users: freezed == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<SocksAccount>?,
      accounts: freezed == accounts
          ? _self._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<SocksAccount>?,
      udp: freezed == udp
          ? _self.udp
          : udp // ignore: cast_nullable_to_non_nullable
              as bool?,
      host: freezed == host
          ? _self.host
          : host // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      userLevel: freezed == userLevel
          ? _self.userLevel
          : userLevel // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$TrojanClientConfig {
  XrayAddress? get address;
  int? get port;
  int? get level;
  String? get email;
  String? get password;
  String? get flow;
  List<TrojanServerTarget>? get servers;

  /// Create a copy of TrojanClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TrojanClientConfigCopyWith<TrojanClientConfig> get copyWith =>
      _$TrojanClientConfigCopyWithImpl<TrojanClientConfig>(
          this as TrojanClientConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TrojanClientConfig &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.flow, flow) || other.flow == flow) &&
            const DeepCollectionEquality().equals(other.servers, servers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, port, level, email,
      password, flow, const DeepCollectionEquality().hash(servers));

  @override
  String toString() {
    return 'TrojanClientConfig(address: $address, port: $port, level: $level, email: $email, password: $password, flow: $flow, servers: $servers)';
  }
}

/// @nodoc
abstract mixin class $TrojanClientConfigCopyWith<$Res> {
  factory $TrojanClientConfigCopyWith(
          TrojanClientConfig value, $Res Function(TrojanClientConfig) _then) =
      _$TrojanClientConfigCopyWithImpl;
  @useResult
  $Res call(
      {XrayAddress? address,
      int? port,
      int? level,
      String? email,
      String? password,
      String? flow,
      List<TrojanServerTarget>? servers});
}

/// @nodoc
class _$TrojanClientConfigCopyWithImpl<$Res>
    implements $TrojanClientConfigCopyWith<$Res> {
  _$TrojanClientConfigCopyWithImpl(this._self, this._then);

  final TrojanClientConfig _self;
  final $Res Function(TrojanClientConfig) _then;

  /// Create a copy of TrojanClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? port = freezed,
    Object? level = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? flow = freezed,
    Object? servers = freezed,
  }) {
    return _then(_self.copyWith(
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      flow: freezed == flow
          ? _self.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as String?,
      servers: freezed == servers
          ? _self.servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<TrojanServerTarget>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TrojanClientConfig].
extension TrojanClientConfigPatterns on TrojanClientConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TrojanClientConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TrojanClientConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TrojanClientConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrojanClientConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TrojanClientConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrojanClientConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(XrayAddress? address, int? port, int? level, String? email,
            String? password, String? flow, List<TrojanServerTarget>? servers)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TrojanClientConfig() when $default != null:
        return $default(_that.address, _that.port, _that.level, _that.email,
            _that.password, _that.flow, _that.servers);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(XrayAddress? address, int? port, int? level, String? email,
            String? password, String? flow, List<TrojanServerTarget>? servers)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrojanClientConfig():
        return $default(_that.address, _that.port, _that.level, _that.email,
            _that.password, _that.flow, _that.servers);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            XrayAddress? address,
            int? port,
            int? level,
            String? email,
            String? password,
            String? flow,
            List<TrojanServerTarget>? servers)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrojanClientConfig() when $default != null:
        return $default(_that.address, _that.port, _that.level, _that.email,
            _that.password, _that.flow, _that.servers);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _TrojanClientConfig extends TrojanClientConfig {
  const _TrojanClientConfig(
      {this.address,
      this.port,
      this.level,
      this.email,
      this.password,
      this.flow,
      final List<TrojanServerTarget>? servers})
      : _servers = servers,
        super._();

  @override
  final XrayAddress? address;
  @override
  final int? port;
  @override
  final int? level;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final String? flow;
  final List<TrojanServerTarget>? _servers;
  @override
  List<TrojanServerTarget>? get servers {
    final value = _servers;
    if (value == null) return null;
    if (_servers is EqualUnmodifiableListView) return _servers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of TrojanClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TrojanClientConfigCopyWith<_TrojanClientConfig> get copyWith =>
      __$TrojanClientConfigCopyWithImpl<_TrojanClientConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrojanClientConfig &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.flow, flow) || other.flow == flow) &&
            const DeepCollectionEquality().equals(other._servers, _servers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, port, level, email,
      password, flow, const DeepCollectionEquality().hash(_servers));

  @override
  String toString() {
    return 'TrojanClientConfig(address: $address, port: $port, level: $level, email: $email, password: $password, flow: $flow, servers: $servers)';
  }
}

/// @nodoc
abstract mixin class _$TrojanClientConfigCopyWith<$Res>
    implements $TrojanClientConfigCopyWith<$Res> {
  factory _$TrojanClientConfigCopyWith(
          _TrojanClientConfig value, $Res Function(_TrojanClientConfig) _then) =
      __$TrojanClientConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {XrayAddress? address,
      int? port,
      int? level,
      String? email,
      String? password,
      String? flow,
      List<TrojanServerTarget>? servers});
}

/// @nodoc
class __$TrojanClientConfigCopyWithImpl<$Res>
    implements _$TrojanClientConfigCopyWith<$Res> {
  __$TrojanClientConfigCopyWithImpl(this._self, this._then);

  final _TrojanClientConfig _self;
  final $Res Function(_TrojanClientConfig) _then;

  /// Create a copy of TrojanClientConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = freezed,
    Object? port = freezed,
    Object? level = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? flow = freezed,
    Object? servers = freezed,
  }) {
    return _then(_TrojanClientConfig(
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      flow: freezed == flow
          ? _self.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as String?,
      servers: freezed == servers
          ? _self._servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<TrojanServerTarget>?,
    ));
  }
}

/// @nodoc
mixin _$TrojanInboundFallback {
  String? get name;
  String? get alpn;
  String? get path;
  XrayFallbackType? get type;
  Object? get dest;
  int? get xver;

  /// Create a copy of TrojanInboundFallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TrojanInboundFallbackCopyWith<TrojanInboundFallback> get copyWith =>
      _$TrojanInboundFallbackCopyWithImpl<TrojanInboundFallback>(
          this as TrojanInboundFallback, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TrojanInboundFallback &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.alpn, alpn) || other.alpn == alpn) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.dest, dest) &&
            (identical(other.xver, xver) || other.xver == xver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, alpn, path, type,
      const DeepCollectionEquality().hash(dest), xver);

  @override
  String toString() {
    return 'TrojanInboundFallback(name: $name, alpn: $alpn, path: $path, type: $type, dest: $dest, xver: $xver)';
  }
}

/// @nodoc
abstract mixin class $TrojanInboundFallbackCopyWith<$Res> {
  factory $TrojanInboundFallbackCopyWith(TrojanInboundFallback value,
          $Res Function(TrojanInboundFallback) _then) =
      _$TrojanInboundFallbackCopyWithImpl;
  @useResult
  $Res call(
      {String? name,
      String? alpn,
      String? path,
      XrayFallbackType? type,
      Object? dest,
      int? xver});
}

/// @nodoc
class _$TrojanInboundFallbackCopyWithImpl<$Res>
    implements $TrojanInboundFallbackCopyWith<$Res> {
  _$TrojanInboundFallbackCopyWithImpl(this._self, this._then);

  final TrojanInboundFallback _self;
  final $Res Function(TrojanInboundFallback) _then;

  /// Create a copy of TrojanInboundFallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? alpn = freezed,
    Object? path = freezed,
    Object? type = freezed,
    Object? dest = freezed,
    Object? xver = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      alpn: freezed == alpn
          ? _self.alpn
          : alpn // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as XrayFallbackType?,
      dest: freezed == dest ? _self.dest : dest,
      xver: freezed == xver
          ? _self.xver
          : xver // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TrojanInboundFallback].
extension TrojanInboundFallbackPatterns on TrojanInboundFallback {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TrojanInboundFallback value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TrojanInboundFallback() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TrojanInboundFallback value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrojanInboundFallback():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TrojanInboundFallback value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrojanInboundFallback() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? name, String? alpn, String? path,
            XrayFallbackType? type, Object? dest, int? xver)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TrojanInboundFallback() when $default != null:
        return $default(_that.name, _that.alpn, _that.path, _that.type,
            _that.dest, _that.xver);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? name, String? alpn, String? path,
            XrayFallbackType? type, Object? dest, int? xver)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrojanInboundFallback():
        return $default(_that.name, _that.alpn, _that.path, _that.type,
            _that.dest, _that.xver);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? name, String? alpn, String? path,
            XrayFallbackType? type, Object? dest, int? xver)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrojanInboundFallback() when $default != null:
        return $default(_that.name, _that.alpn, _that.path, _that.type,
            _that.dest, _that.xver);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _TrojanInboundFallback extends TrojanInboundFallback {
  const _TrojanInboundFallback(
      {this.name, this.alpn, this.path, this.type, this.dest, this.xver})
      : super._();

  @override
  final String? name;
  @override
  final String? alpn;
  @override
  final String? path;
  @override
  final XrayFallbackType? type;
  @override
  final Object? dest;
  @override
  final int? xver;

  /// Create a copy of TrojanInboundFallback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TrojanInboundFallbackCopyWith<_TrojanInboundFallback> get copyWith =>
      __$TrojanInboundFallbackCopyWithImpl<_TrojanInboundFallback>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrojanInboundFallback &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.alpn, alpn) || other.alpn == alpn) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.dest, dest) &&
            (identical(other.xver, xver) || other.xver == xver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, alpn, path, type,
      const DeepCollectionEquality().hash(dest), xver);

  @override
  String toString() {
    return 'TrojanInboundFallback(name: $name, alpn: $alpn, path: $path, type: $type, dest: $dest, xver: $xver)';
  }
}

/// @nodoc
abstract mixin class _$TrojanInboundFallbackCopyWith<$Res>
    implements $TrojanInboundFallbackCopyWith<$Res> {
  factory _$TrojanInboundFallbackCopyWith(_TrojanInboundFallback value,
          $Res Function(_TrojanInboundFallback) _then) =
      __$TrojanInboundFallbackCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? name,
      String? alpn,
      String? path,
      XrayFallbackType? type,
      Object? dest,
      int? xver});
}

/// @nodoc
class __$TrojanInboundFallbackCopyWithImpl<$Res>
    implements _$TrojanInboundFallbackCopyWith<$Res> {
  __$TrojanInboundFallbackCopyWithImpl(this._self, this._then);

  final _TrojanInboundFallback _self;
  final $Res Function(_TrojanInboundFallback) _then;

  /// Create a copy of TrojanInboundFallback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? alpn = freezed,
    Object? path = freezed,
    Object? type = freezed,
    Object? dest = freezed,
    Object? xver = freezed,
  }) {
    return _then(_TrojanInboundFallback(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      alpn: freezed == alpn
          ? _self.alpn
          : alpn // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as XrayFallbackType?,
      dest: freezed == dest ? _self.dest : dest,
      xver: freezed == xver
          ? _self.xver
          : xver // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$TrojanServerConfig {
  List<TrojanUserConfig>? get users;
  List<TrojanUserConfig>? get clients;
  List<TrojanInboundFallback>? get fallbacks;

  /// Create a copy of TrojanServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TrojanServerConfigCopyWith<TrojanServerConfig> get copyWith =>
      _$TrojanServerConfigCopyWithImpl<TrojanServerConfig>(
          this as TrojanServerConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TrojanServerConfig &&
            const DeepCollectionEquality().equals(other.users, users) &&
            const DeepCollectionEquality().equals(other.clients, clients) &&
            const DeepCollectionEquality().equals(other.fallbacks, fallbacks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(users),
      const DeepCollectionEquality().hash(clients),
      const DeepCollectionEquality().hash(fallbacks));

  @override
  String toString() {
    return 'TrojanServerConfig(users: $users, clients: $clients, fallbacks: $fallbacks)';
  }
}

/// @nodoc
abstract mixin class $TrojanServerConfigCopyWith<$Res> {
  factory $TrojanServerConfigCopyWith(
          TrojanServerConfig value, $Res Function(TrojanServerConfig) _then) =
      _$TrojanServerConfigCopyWithImpl;
  @useResult
  $Res call(
      {List<TrojanUserConfig>? users,
      List<TrojanUserConfig>? clients,
      List<TrojanInboundFallback>? fallbacks});
}

/// @nodoc
class _$TrojanServerConfigCopyWithImpl<$Res>
    implements $TrojanServerConfigCopyWith<$Res> {
  _$TrojanServerConfigCopyWithImpl(this._self, this._then);

  final TrojanServerConfig _self;
  final $Res Function(TrojanServerConfig) _then;

  /// Create a copy of TrojanServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
    Object? clients = freezed,
    Object? fallbacks = freezed,
  }) {
    return _then(_self.copyWith(
      users: freezed == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<TrojanUserConfig>?,
      clients: freezed == clients
          ? _self.clients
          : clients // ignore: cast_nullable_to_non_nullable
              as List<TrojanUserConfig>?,
      fallbacks: freezed == fallbacks
          ? _self.fallbacks
          : fallbacks // ignore: cast_nullable_to_non_nullable
              as List<TrojanInboundFallback>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TrojanServerConfig].
extension TrojanServerConfigPatterns on TrojanServerConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TrojanServerConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TrojanServerConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TrojanServerConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrojanServerConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TrojanServerConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrojanServerConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            List<TrojanUserConfig>? users,
            List<TrojanUserConfig>? clients,
            List<TrojanInboundFallback>? fallbacks)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TrojanServerConfig() when $default != null:
        return $default(_that.users, _that.clients, _that.fallbacks);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            List<TrojanUserConfig>? users,
            List<TrojanUserConfig>? clients,
            List<TrojanInboundFallback>? fallbacks)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrojanServerConfig():
        return $default(_that.users, _that.clients, _that.fallbacks);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            List<TrojanUserConfig>? users,
            List<TrojanUserConfig>? clients,
            List<TrojanInboundFallback>? fallbacks)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrojanServerConfig() when $default != null:
        return $default(_that.users, _that.clients, _that.fallbacks);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _TrojanServerConfig extends TrojanServerConfig {
  const _TrojanServerConfig(
      {final List<TrojanUserConfig>? users,
      final List<TrojanUserConfig>? clients,
      final List<TrojanInboundFallback>? fallbacks})
      : _users = users,
        _clients = clients,
        _fallbacks = fallbacks,
        super._();

  final List<TrojanUserConfig>? _users;
  @override
  List<TrojanUserConfig>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TrojanUserConfig>? _clients;
  @override
  List<TrojanUserConfig>? get clients {
    final value = _clients;
    if (value == null) return null;
    if (_clients is EqualUnmodifiableListView) return _clients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TrojanInboundFallback>? _fallbacks;
  @override
  List<TrojanInboundFallback>? get fallbacks {
    final value = _fallbacks;
    if (value == null) return null;
    if (_fallbacks is EqualUnmodifiableListView) return _fallbacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of TrojanServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TrojanServerConfigCopyWith<_TrojanServerConfig> get copyWith =>
      __$TrojanServerConfigCopyWithImpl<_TrojanServerConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrojanServerConfig &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._clients, _clients) &&
            const DeepCollectionEquality()
                .equals(other._fallbacks, _fallbacks));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_clients),
      const DeepCollectionEquality().hash(_fallbacks));

  @override
  String toString() {
    return 'TrojanServerConfig(users: $users, clients: $clients, fallbacks: $fallbacks)';
  }
}

/// @nodoc
abstract mixin class _$TrojanServerConfigCopyWith<$Res>
    implements $TrojanServerConfigCopyWith<$Res> {
  factory _$TrojanServerConfigCopyWith(
          _TrojanServerConfig value, $Res Function(_TrojanServerConfig) _then) =
      __$TrojanServerConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<TrojanUserConfig>? users,
      List<TrojanUserConfig>? clients,
      List<TrojanInboundFallback>? fallbacks});
}

/// @nodoc
class __$TrojanServerConfigCopyWithImpl<$Res>
    implements _$TrojanServerConfigCopyWith<$Res> {
  __$TrojanServerConfigCopyWithImpl(this._self, this._then);

  final _TrojanServerConfig _self;
  final $Res Function(_TrojanServerConfig) _then;

  /// Create a copy of TrojanServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? users = freezed,
    Object? clients = freezed,
    Object? fallbacks = freezed,
  }) {
    return _then(_TrojanServerConfig(
      users: freezed == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<TrojanUserConfig>?,
      clients: freezed == clients
          ? _self._clients
          : clients // ignore: cast_nullable_to_non_nullable
              as List<TrojanUserConfig>?,
      fallbacks: freezed == fallbacks
          ? _self._fallbacks
          : fallbacks // ignore: cast_nullable_to_non_nullable
              as List<TrojanInboundFallback>?,
    ));
  }
}

/// @nodoc
mixin _$TrojanServerTarget {
  XrayAddress get address;
  int get port;
  int? get level;
  String? get email;
  String get password;
  String? get flow;

  /// Create a copy of TrojanServerTarget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TrojanServerTargetCopyWith<TrojanServerTarget> get copyWith =>
      _$TrojanServerTargetCopyWithImpl<TrojanServerTarget>(
          this as TrojanServerTarget, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TrojanServerTarget &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.flow, flow) || other.flow == flow));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, address, port, level, email, password, flow);

  @override
  String toString() {
    return 'TrojanServerTarget(address: $address, port: $port, level: $level, email: $email, password: $password, flow: $flow)';
  }
}

/// @nodoc
abstract mixin class $TrojanServerTargetCopyWith<$Res> {
  factory $TrojanServerTargetCopyWith(
          TrojanServerTarget value, $Res Function(TrojanServerTarget) _then) =
      _$TrojanServerTargetCopyWithImpl;
  @useResult
  $Res call(
      {XrayAddress address,
      int port,
      int? level,
      String? email,
      String password,
      String? flow});
}

/// @nodoc
class _$TrojanServerTargetCopyWithImpl<$Res>
    implements $TrojanServerTargetCopyWith<$Res> {
  _$TrojanServerTargetCopyWithImpl(this._self, this._then);

  final TrojanServerTarget _self;
  final $Res Function(TrojanServerTarget) _then;

  /// Create a copy of TrojanServerTarget
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? port = null,
    Object? level = freezed,
    Object? email = freezed,
    Object? password = null,
    Object? flow = freezed,
  }) {
    return _then(_self.copyWith(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress,
      port: null == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      flow: freezed == flow
          ? _self.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TrojanServerTarget].
extension TrojanServerTargetPatterns on TrojanServerTarget {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TrojanServerTarget value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TrojanServerTarget() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TrojanServerTarget value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrojanServerTarget():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TrojanServerTarget value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrojanServerTarget() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(XrayAddress address, int port, int? level, String? email,
            String password, String? flow)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TrojanServerTarget() when $default != null:
        return $default(_that.address, _that.port, _that.level, _that.email,
            _that.password, _that.flow);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(XrayAddress address, int port, int? level, String? email,
            String password, String? flow)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrojanServerTarget():
        return $default(_that.address, _that.port, _that.level, _that.email,
            _that.password, _that.flow);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(XrayAddress address, int port, int? level, String? email,
            String password, String? flow)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrojanServerTarget() when $default != null:
        return $default(_that.address, _that.port, _that.level, _that.email,
            _that.password, _that.flow);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _TrojanServerTarget extends TrojanServerTarget {
  const _TrojanServerTarget(
      {required this.address,
      required this.port,
      this.level,
      this.email,
      required this.password,
      this.flow})
      : super._();

  @override
  final XrayAddress address;
  @override
  final int port;
  @override
  final int? level;
  @override
  final String? email;
  @override
  final String password;
  @override
  final String? flow;

  /// Create a copy of TrojanServerTarget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TrojanServerTargetCopyWith<_TrojanServerTarget> get copyWith =>
      __$TrojanServerTargetCopyWithImpl<_TrojanServerTarget>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrojanServerTarget &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.flow, flow) || other.flow == flow));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, address, port, level, email, password, flow);

  @override
  String toString() {
    return 'TrojanServerTarget(address: $address, port: $port, level: $level, email: $email, password: $password, flow: $flow)';
  }
}

/// @nodoc
abstract mixin class _$TrojanServerTargetCopyWith<$Res>
    implements $TrojanServerTargetCopyWith<$Res> {
  factory _$TrojanServerTargetCopyWith(
          _TrojanServerTarget value, $Res Function(_TrojanServerTarget) _then) =
      __$TrojanServerTargetCopyWithImpl;
  @override
  @useResult
  $Res call(
      {XrayAddress address,
      int port,
      int? level,
      String? email,
      String password,
      String? flow});
}

/// @nodoc
class __$TrojanServerTargetCopyWithImpl<$Res>
    implements _$TrojanServerTargetCopyWith<$Res> {
  __$TrojanServerTargetCopyWithImpl(this._self, this._then);

  final _TrojanServerTarget _self;
  final $Res Function(_TrojanServerTarget) _then;

  /// Create a copy of TrojanServerTarget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = null,
    Object? port = null,
    Object? level = freezed,
    Object? email = freezed,
    Object? password = null,
    Object? flow = freezed,
  }) {
    return _then(_TrojanServerTarget(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress,
      port: null == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      flow: freezed == flow
          ? _self.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$TrojanUserConfig {
  String get password;
  int? get level;
  String? get email;
  String? get flow;

  /// Create a copy of TrojanUserConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TrojanUserConfigCopyWith<TrojanUserConfig> get copyWith =>
      _$TrojanUserConfigCopyWithImpl<TrojanUserConfig>(
          this as TrojanUserConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TrojanUserConfig &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.flow, flow) || other.flow == flow));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, level, email, flow);

  @override
  String toString() {
    return 'TrojanUserConfig(password: $password, level: $level, email: $email, flow: $flow)';
  }
}

/// @nodoc
abstract mixin class $TrojanUserConfigCopyWith<$Res> {
  factory $TrojanUserConfigCopyWith(
          TrojanUserConfig value, $Res Function(TrojanUserConfig) _then) =
      _$TrojanUserConfigCopyWithImpl;
  @useResult
  $Res call({String password, int? level, String? email, String? flow});
}

/// @nodoc
class _$TrojanUserConfigCopyWithImpl<$Res>
    implements $TrojanUserConfigCopyWith<$Res> {
  _$TrojanUserConfigCopyWithImpl(this._self, this._then);

  final TrojanUserConfig _self;
  final $Res Function(TrojanUserConfig) _then;

  /// Create a copy of TrojanUserConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? level = freezed,
    Object? email = freezed,
    Object? flow = freezed,
  }) {
    return _then(_self.copyWith(
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      flow: freezed == flow
          ? _self.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TrojanUserConfig].
extension TrojanUserConfigPatterns on TrojanUserConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TrojanUserConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TrojanUserConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TrojanUserConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrojanUserConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TrojanUserConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrojanUserConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String password, int? level, String? email, String? flow)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TrojanUserConfig() when $default != null:
        return $default(_that.password, _that.level, _that.email, _that.flow);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String password, int? level, String? email, String? flow)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrojanUserConfig():
        return $default(_that.password, _that.level, _that.email, _that.flow);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String password, int? level, String? email, String? flow)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TrojanUserConfig() when $default != null:
        return $default(_that.password, _that.level, _that.email, _that.flow);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _TrojanUserConfig extends TrojanUserConfig {
  const _TrojanUserConfig(
      {required this.password, this.level, this.email, this.flow})
      : super._();

  @override
  final String password;
  @override
  final int? level;
  @override
  final String? email;
  @override
  final String? flow;

  /// Create a copy of TrojanUserConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TrojanUserConfigCopyWith<_TrojanUserConfig> get copyWith =>
      __$TrojanUserConfigCopyWithImpl<_TrojanUserConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TrojanUserConfig &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.flow, flow) || other.flow == flow));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password, level, email, flow);

  @override
  String toString() {
    return 'TrojanUserConfig(password: $password, level: $level, email: $email, flow: $flow)';
  }
}

/// @nodoc
abstract mixin class _$TrojanUserConfigCopyWith<$Res>
    implements $TrojanUserConfigCopyWith<$Res> {
  factory _$TrojanUserConfigCopyWith(
          _TrojanUserConfig value, $Res Function(_TrojanUserConfig) _then) =
      __$TrojanUserConfigCopyWithImpl;
  @override
  @useResult
  $Res call({String password, int? level, String? email, String? flow});
}

/// @nodoc
class __$TrojanUserConfigCopyWithImpl<$Res>
    implements _$TrojanUserConfigCopyWith<$Res> {
  __$TrojanUserConfigCopyWithImpl(this._self, this._then);

  final _TrojanUserConfig _self;
  final $Res Function(_TrojanUserConfig) _then;

  /// Create a copy of TrojanUserConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
    Object? level = freezed,
    Object? email = freezed,
    Object? flow = freezed,
  }) {
    return _then(_TrojanUserConfig(
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      flow: freezed == flow
          ? _self.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$TunConfig {
  String? get name;
  String? get desc;
  @JsonKey(name: 'mtu')
  int? get mtu;
  List<String>? get gateway;
  @JsonKey(name: 'dns')
  List<String>? get dns;
  int? get userLevel;
  List<String>? get autoSystemRoutingTable;
  String? get autoOutboundsInterface;

  /// Create a copy of TunConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TunConfigCopyWith<TunConfig> get copyWith =>
      _$TunConfigCopyWithImpl<TunConfig>(this as TunConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TunConfig &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.mtu, mtu) || other.mtu == mtu) &&
            const DeepCollectionEquality().equals(other.gateway, gateway) &&
            const DeepCollectionEquality().equals(other.dns, dns) &&
            (identical(other.userLevel, userLevel) ||
                other.userLevel == userLevel) &&
            const DeepCollectionEquality()
                .equals(other.autoSystemRoutingTable, autoSystemRoutingTable) &&
            (identical(other.autoOutboundsInterface, autoOutboundsInterface) ||
                other.autoOutboundsInterface == autoOutboundsInterface));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      desc,
      mtu,
      const DeepCollectionEquality().hash(gateway),
      const DeepCollectionEquality().hash(dns),
      userLevel,
      const DeepCollectionEquality().hash(autoSystemRoutingTable),
      autoOutboundsInterface);

  @override
  String toString() {
    return 'TunConfig(name: $name, desc: $desc, mtu: $mtu, gateway: $gateway, dns: $dns, userLevel: $userLevel, autoSystemRoutingTable: $autoSystemRoutingTable, autoOutboundsInterface: $autoOutboundsInterface)';
  }
}

/// @nodoc
abstract mixin class $TunConfigCopyWith<$Res> {
  factory $TunConfigCopyWith(TunConfig value, $Res Function(TunConfig) _then) =
      _$TunConfigCopyWithImpl;
  @useResult
  $Res call(
      {String? name,
      String? desc,
      @JsonKey(name: 'mtu') int? mtu,
      List<String>? gateway,
      @JsonKey(name: 'dns') List<String>? dns,
      int? userLevel,
      List<String>? autoSystemRoutingTable,
      String? autoOutboundsInterface});
}

/// @nodoc
class _$TunConfigCopyWithImpl<$Res> implements $TunConfigCopyWith<$Res> {
  _$TunConfigCopyWithImpl(this._self, this._then);

  final TunConfig _self;
  final $Res Function(TunConfig) _then;

  /// Create a copy of TunConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? desc = freezed,
    Object? mtu = freezed,
    Object? gateway = freezed,
    Object? dns = freezed,
    Object? userLevel = freezed,
    Object? autoSystemRoutingTable = freezed,
    Object? autoOutboundsInterface = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _self.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      mtu: freezed == mtu
          ? _self.mtu
          : mtu // ignore: cast_nullable_to_non_nullable
              as int?,
      gateway: freezed == gateway
          ? _self.gateway
          : gateway // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      dns: freezed == dns
          ? _self.dns
          : dns // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      userLevel: freezed == userLevel
          ? _self.userLevel
          : userLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      autoSystemRoutingTable: freezed == autoSystemRoutingTable
          ? _self.autoSystemRoutingTable
          : autoSystemRoutingTable // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      autoOutboundsInterface: freezed == autoOutboundsInterface
          ? _self.autoOutboundsInterface
          : autoOutboundsInterface // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [TunConfig].
extension TunConfigPatterns on TunConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TunConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TunConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TunConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TunConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TunConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TunConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? name,
            String? desc,
            @JsonKey(name: 'mtu') int? mtu,
            List<String>? gateway,
            @JsonKey(name: 'dns') List<String>? dns,
            int? userLevel,
            List<String>? autoSystemRoutingTable,
            String? autoOutboundsInterface)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _TunConfig() when $default != null:
        return $default(
            _that.name,
            _that.desc,
            _that.mtu,
            _that.gateway,
            _that.dns,
            _that.userLevel,
            _that.autoSystemRoutingTable,
            _that.autoOutboundsInterface);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? name,
            String? desc,
            @JsonKey(name: 'mtu') int? mtu,
            List<String>? gateway,
            @JsonKey(name: 'dns') List<String>? dns,
            int? userLevel,
            List<String>? autoSystemRoutingTable,
            String? autoOutboundsInterface)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TunConfig():
        return $default(
            _that.name,
            _that.desc,
            _that.mtu,
            _that.gateway,
            _that.dns,
            _that.userLevel,
            _that.autoSystemRoutingTable,
            _that.autoOutboundsInterface);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? name,
            String? desc,
            @JsonKey(name: 'mtu') int? mtu,
            List<String>? gateway,
            @JsonKey(name: 'dns') List<String>? dns,
            int? userLevel,
            List<String>? autoSystemRoutingTable,
            String? autoOutboundsInterface)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _TunConfig() when $default != null:
        return $default(
            _that.name,
            _that.desc,
            _that.mtu,
            _that.gateway,
            _that.dns,
            _that.userLevel,
            _that.autoSystemRoutingTable,
            _that.autoOutboundsInterface);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _TunConfig extends TunConfig {
  const _TunConfig(
      {this.name,
      this.desc,
      @JsonKey(name: 'mtu') this.mtu,
      final List<String>? gateway,
      @JsonKey(name: 'dns') final List<String>? dns,
      this.userLevel,
      final List<String>? autoSystemRoutingTable,
      this.autoOutboundsInterface})
      : _gateway = gateway,
        _dns = dns,
        _autoSystemRoutingTable = autoSystemRoutingTable,
        super._();

  @override
  final String? name;
  @override
  final String? desc;
  @override
  @JsonKey(name: 'mtu')
  final int? mtu;
  final List<String>? _gateway;
  @override
  List<String>? get gateway {
    final value = _gateway;
    if (value == null) return null;
    if (_gateway is EqualUnmodifiableListView) return _gateway;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _dns;
  @override
  @JsonKey(name: 'dns')
  List<String>? get dns {
    final value = _dns;
    if (value == null) return null;
    if (_dns is EqualUnmodifiableListView) return _dns;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? userLevel;
  final List<String>? _autoSystemRoutingTable;
  @override
  List<String>? get autoSystemRoutingTable {
    final value = _autoSystemRoutingTable;
    if (value == null) return null;
    if (_autoSystemRoutingTable is EqualUnmodifiableListView)
      return _autoSystemRoutingTable;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? autoOutboundsInterface;

  /// Create a copy of TunConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TunConfigCopyWith<_TunConfig> get copyWith =>
      __$TunConfigCopyWithImpl<_TunConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TunConfig &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.desc, desc) || other.desc == desc) &&
            (identical(other.mtu, mtu) || other.mtu == mtu) &&
            const DeepCollectionEquality().equals(other._gateway, _gateway) &&
            const DeepCollectionEquality().equals(other._dns, _dns) &&
            (identical(other.userLevel, userLevel) ||
                other.userLevel == userLevel) &&
            const DeepCollectionEquality().equals(
                other._autoSystemRoutingTable, _autoSystemRoutingTable) &&
            (identical(other.autoOutboundsInterface, autoOutboundsInterface) ||
                other.autoOutboundsInterface == autoOutboundsInterface));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      desc,
      mtu,
      const DeepCollectionEquality().hash(_gateway),
      const DeepCollectionEquality().hash(_dns),
      userLevel,
      const DeepCollectionEquality().hash(_autoSystemRoutingTable),
      autoOutboundsInterface);

  @override
  String toString() {
    return 'TunConfig(name: $name, desc: $desc, mtu: $mtu, gateway: $gateway, dns: $dns, userLevel: $userLevel, autoSystemRoutingTable: $autoSystemRoutingTable, autoOutboundsInterface: $autoOutboundsInterface)';
  }
}

/// @nodoc
abstract mixin class _$TunConfigCopyWith<$Res>
    implements $TunConfigCopyWith<$Res> {
  factory _$TunConfigCopyWith(
          _TunConfig value, $Res Function(_TunConfig) _then) =
      __$TunConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? name,
      String? desc,
      @JsonKey(name: 'mtu') int? mtu,
      List<String>? gateway,
      @JsonKey(name: 'dns') List<String>? dns,
      int? userLevel,
      List<String>? autoSystemRoutingTable,
      String? autoOutboundsInterface});
}

/// @nodoc
class __$TunConfigCopyWithImpl<$Res> implements _$TunConfigCopyWith<$Res> {
  __$TunConfigCopyWithImpl(this._self, this._then);

  final _TunConfig _self;
  final $Res Function(_TunConfig) _then;

  /// Create a copy of TunConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? desc = freezed,
    Object? mtu = freezed,
    Object? gateway = freezed,
    Object? dns = freezed,
    Object? userLevel = freezed,
    Object? autoSystemRoutingTable = freezed,
    Object? autoOutboundsInterface = freezed,
  }) {
    return _then(_TunConfig(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      desc: freezed == desc
          ? _self.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String?,
      mtu: freezed == mtu
          ? _self.mtu
          : mtu // ignore: cast_nullable_to_non_nullable
              as int?,
      gateway: freezed == gateway
          ? _self._gateway
          : gateway // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      dns: freezed == dns
          ? _self._dns
          : dns // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      userLevel: freezed == userLevel
          ? _self.userLevel
          : userLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      autoSystemRoutingTable: freezed == autoSystemRoutingTable
          ? _self._autoSystemRoutingTable
          : autoSystemRoutingTable // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      autoOutboundsInterface: freezed == autoOutboundsInterface
          ? _self.autoOutboundsInterface
          : autoOutboundsInterface // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$VLessInboundConfig {
  List<VLessUser>? get users;
  List<VLessUser>? get clients;
  String get decryption;
  List<VLessInboundFallback>? get fallbacks;
  String? get flow;
  List<int>? get testseed;

  /// Create a copy of VLessInboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VLessInboundConfigCopyWith<VLessInboundConfig> get copyWith =>
      _$VLessInboundConfigCopyWithImpl<VLessInboundConfig>(
          this as VLessInboundConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VLessInboundConfig &&
            const DeepCollectionEquality().equals(other.users, users) &&
            const DeepCollectionEquality().equals(other.clients, clients) &&
            (identical(other.decryption, decryption) ||
                other.decryption == decryption) &&
            const DeepCollectionEquality().equals(other.fallbacks, fallbacks) &&
            (identical(other.flow, flow) || other.flow == flow) &&
            const DeepCollectionEquality().equals(other.testseed, testseed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(users),
      const DeepCollectionEquality().hash(clients),
      decryption,
      const DeepCollectionEquality().hash(fallbacks),
      flow,
      const DeepCollectionEquality().hash(testseed));

  @override
  String toString() {
    return 'VLessInboundConfig(users: $users, clients: $clients, decryption: $decryption, fallbacks: $fallbacks, flow: $flow, testseed: $testseed)';
  }
}

/// @nodoc
abstract mixin class $VLessInboundConfigCopyWith<$Res> {
  factory $VLessInboundConfigCopyWith(
          VLessInboundConfig value, $Res Function(VLessInboundConfig) _then) =
      _$VLessInboundConfigCopyWithImpl;
  @useResult
  $Res call(
      {List<VLessUser>? users,
      List<VLessUser>? clients,
      String decryption,
      List<VLessInboundFallback>? fallbacks,
      String? flow,
      List<int>? testseed});
}

/// @nodoc
class _$VLessInboundConfigCopyWithImpl<$Res>
    implements $VLessInboundConfigCopyWith<$Res> {
  _$VLessInboundConfigCopyWithImpl(this._self, this._then);

  final VLessInboundConfig _self;
  final $Res Function(VLessInboundConfig) _then;

  /// Create a copy of VLessInboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
    Object? clients = freezed,
    Object? decryption = null,
    Object? fallbacks = freezed,
    Object? flow = freezed,
    Object? testseed = freezed,
  }) {
    return _then(_self.copyWith(
      users: freezed == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<VLessUser>?,
      clients: freezed == clients
          ? _self.clients
          : clients // ignore: cast_nullable_to_non_nullable
              as List<VLessUser>?,
      decryption: null == decryption
          ? _self.decryption
          : decryption // ignore: cast_nullable_to_non_nullable
              as String,
      fallbacks: freezed == fallbacks
          ? _self.fallbacks
          : fallbacks // ignore: cast_nullable_to_non_nullable
              as List<VLessInboundFallback>?,
      flow: freezed == flow
          ? _self.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as String?,
      testseed: freezed == testseed
          ? _self.testseed
          : testseed // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [VLessInboundConfig].
extension VLessInboundConfigPatterns on VLessInboundConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VLessInboundConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VLessInboundConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VLessInboundConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessInboundConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VLessInboundConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessInboundConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            List<VLessUser>? users,
            List<VLessUser>? clients,
            String decryption,
            List<VLessInboundFallback>? fallbacks,
            String? flow,
            List<int>? testseed)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VLessInboundConfig() when $default != null:
        return $default(_that.users, _that.clients, _that.decryption,
            _that.fallbacks, _that.flow, _that.testseed);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            List<VLessUser>? users,
            List<VLessUser>? clients,
            String decryption,
            List<VLessInboundFallback>? fallbacks,
            String? flow,
            List<int>? testseed)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessInboundConfig():
        return $default(_that.users, _that.clients, _that.decryption,
            _that.fallbacks, _that.flow, _that.testseed);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            List<VLessUser>? users,
            List<VLessUser>? clients,
            String decryption,
            List<VLessInboundFallback>? fallbacks,
            String? flow,
            List<int>? testseed)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessInboundConfig() when $default != null:
        return $default(_that.users, _that.clients, _that.decryption,
            _that.fallbacks, _that.flow, _that.testseed);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _VLessInboundConfig extends VLessInboundConfig {
  const _VLessInboundConfig(
      {final List<VLessUser>? users,
      final List<VLessUser>? clients,
      required this.decryption,
      final List<VLessInboundFallback>? fallbacks,
      this.flow,
      final List<int>? testseed})
      : _users = users,
        _clients = clients,
        _fallbacks = fallbacks,
        _testseed = testseed,
        super._();

  final List<VLessUser>? _users;
  @override
  List<VLessUser>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<VLessUser>? _clients;
  @override
  List<VLessUser>? get clients {
    final value = _clients;
    if (value == null) return null;
    if (_clients is EqualUnmodifiableListView) return _clients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String decryption;
  final List<VLessInboundFallback>? _fallbacks;
  @override
  List<VLessInboundFallback>? get fallbacks {
    final value = _fallbacks;
    if (value == null) return null;
    if (_fallbacks is EqualUnmodifiableListView) return _fallbacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? flow;
  final List<int>? _testseed;
  @override
  List<int>? get testseed {
    final value = _testseed;
    if (value == null) return null;
    if (_testseed is EqualUnmodifiableListView) return _testseed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of VLessInboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VLessInboundConfigCopyWith<_VLessInboundConfig> get copyWith =>
      __$VLessInboundConfigCopyWithImpl<_VLessInboundConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VLessInboundConfig &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._clients, _clients) &&
            (identical(other.decryption, decryption) ||
                other.decryption == decryption) &&
            const DeepCollectionEquality()
                .equals(other._fallbacks, _fallbacks) &&
            (identical(other.flow, flow) || other.flow == flow) &&
            const DeepCollectionEquality().equals(other._testseed, _testseed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_clients),
      decryption,
      const DeepCollectionEquality().hash(_fallbacks),
      flow,
      const DeepCollectionEquality().hash(_testseed));

  @override
  String toString() {
    return 'VLessInboundConfig(users: $users, clients: $clients, decryption: $decryption, fallbacks: $fallbacks, flow: $flow, testseed: $testseed)';
  }
}

/// @nodoc
abstract mixin class _$VLessInboundConfigCopyWith<$Res>
    implements $VLessInboundConfigCopyWith<$Res> {
  factory _$VLessInboundConfigCopyWith(
          _VLessInboundConfig value, $Res Function(_VLessInboundConfig) _then) =
      __$VLessInboundConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<VLessUser>? users,
      List<VLessUser>? clients,
      String decryption,
      List<VLessInboundFallback>? fallbacks,
      String? flow,
      List<int>? testseed});
}

/// @nodoc
class __$VLessInboundConfigCopyWithImpl<$Res>
    implements _$VLessInboundConfigCopyWith<$Res> {
  __$VLessInboundConfigCopyWithImpl(this._self, this._then);

  final _VLessInboundConfig _self;
  final $Res Function(_VLessInboundConfig) _then;

  /// Create a copy of VLessInboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? users = freezed,
    Object? clients = freezed,
    Object? decryption = null,
    Object? fallbacks = freezed,
    Object? flow = freezed,
    Object? testseed = freezed,
  }) {
    return _then(_VLessInboundConfig(
      users: freezed == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<VLessUser>?,
      clients: freezed == clients
          ? _self._clients
          : clients // ignore: cast_nullable_to_non_nullable
              as List<VLessUser>?,
      decryption: null == decryption
          ? _self.decryption
          : decryption // ignore: cast_nullable_to_non_nullable
              as String,
      fallbacks: freezed == fallbacks
          ? _self._fallbacks
          : fallbacks // ignore: cast_nullable_to_non_nullable
              as List<VLessInboundFallback>?,
      flow: freezed == flow
          ? _self.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as String?,
      testseed: freezed == testseed
          ? _self._testseed
          : testseed // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
mixin _$VLessInboundFallback {
  String? get name;
  String? get alpn;
  String? get path;
  XrayFallbackType? get type;
  Object? get dest;
  int? get xver;

  /// Create a copy of VLessInboundFallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VLessInboundFallbackCopyWith<VLessInboundFallback> get copyWith =>
      _$VLessInboundFallbackCopyWithImpl<VLessInboundFallback>(
          this as VLessInboundFallback, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VLessInboundFallback &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.alpn, alpn) || other.alpn == alpn) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.dest, dest) &&
            (identical(other.xver, xver) || other.xver == xver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, alpn, path, type,
      const DeepCollectionEquality().hash(dest), xver);

  @override
  String toString() {
    return 'VLessInboundFallback(name: $name, alpn: $alpn, path: $path, type: $type, dest: $dest, xver: $xver)';
  }
}

/// @nodoc
abstract mixin class $VLessInboundFallbackCopyWith<$Res> {
  factory $VLessInboundFallbackCopyWith(VLessInboundFallback value,
          $Res Function(VLessInboundFallback) _then) =
      _$VLessInboundFallbackCopyWithImpl;
  @useResult
  $Res call(
      {String? name,
      String? alpn,
      String? path,
      XrayFallbackType? type,
      Object? dest,
      int? xver});
}

/// @nodoc
class _$VLessInboundFallbackCopyWithImpl<$Res>
    implements $VLessInboundFallbackCopyWith<$Res> {
  _$VLessInboundFallbackCopyWithImpl(this._self, this._then);

  final VLessInboundFallback _self;
  final $Res Function(VLessInboundFallback) _then;

  /// Create a copy of VLessInboundFallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? alpn = freezed,
    Object? path = freezed,
    Object? type = freezed,
    Object? dest = freezed,
    Object? xver = freezed,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      alpn: freezed == alpn
          ? _self.alpn
          : alpn // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as XrayFallbackType?,
      dest: freezed == dest ? _self.dest : dest,
      xver: freezed == xver
          ? _self.xver
          : xver // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [VLessInboundFallback].
extension VLessInboundFallbackPatterns on VLessInboundFallback {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VLessInboundFallback value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VLessInboundFallback() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VLessInboundFallback value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessInboundFallback():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VLessInboundFallback value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessInboundFallback() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? name, String? alpn, String? path,
            XrayFallbackType? type, Object? dest, int? xver)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VLessInboundFallback() when $default != null:
        return $default(_that.name, _that.alpn, _that.path, _that.type,
            _that.dest, _that.xver);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? name, String? alpn, String? path,
            XrayFallbackType? type, Object? dest, int? xver)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessInboundFallback():
        return $default(_that.name, _that.alpn, _that.path, _that.type,
            _that.dest, _that.xver);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? name, String? alpn, String? path,
            XrayFallbackType? type, Object? dest, int? xver)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessInboundFallback() when $default != null:
        return $default(_that.name, _that.alpn, _that.path, _that.type,
            _that.dest, _that.xver);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _VLessInboundFallback extends VLessInboundFallback {
  const _VLessInboundFallback(
      {this.name, this.alpn, this.path, this.type, this.dest, this.xver})
      : super._();

  @override
  final String? name;
  @override
  final String? alpn;
  @override
  final String? path;
  @override
  final XrayFallbackType? type;
  @override
  final Object? dest;
  @override
  final int? xver;

  /// Create a copy of VLessInboundFallback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VLessInboundFallbackCopyWith<_VLessInboundFallback> get copyWith =>
      __$VLessInboundFallbackCopyWithImpl<_VLessInboundFallback>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VLessInboundFallback &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.alpn, alpn) || other.alpn == alpn) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.dest, dest) &&
            (identical(other.xver, xver) || other.xver == xver));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, alpn, path, type,
      const DeepCollectionEquality().hash(dest), xver);

  @override
  String toString() {
    return 'VLessInboundFallback(name: $name, alpn: $alpn, path: $path, type: $type, dest: $dest, xver: $xver)';
  }
}

/// @nodoc
abstract mixin class _$VLessInboundFallbackCopyWith<$Res>
    implements $VLessInboundFallbackCopyWith<$Res> {
  factory _$VLessInboundFallbackCopyWith(_VLessInboundFallback value,
          $Res Function(_VLessInboundFallback) _then) =
      __$VLessInboundFallbackCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? name,
      String? alpn,
      String? path,
      XrayFallbackType? type,
      Object? dest,
      int? xver});
}

/// @nodoc
class __$VLessInboundFallbackCopyWithImpl<$Res>
    implements _$VLessInboundFallbackCopyWith<$Res> {
  __$VLessInboundFallbackCopyWithImpl(this._self, this._then);

  final _VLessInboundFallback _self;
  final $Res Function(_VLessInboundFallback) _then;

  /// Create a copy of VLessInboundFallback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? alpn = freezed,
    Object? path = freezed,
    Object? type = freezed,
    Object? dest = freezed,
    Object? xver = freezed,
  }) {
    return _then(_VLessInboundFallback(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      alpn: freezed == alpn
          ? _self.alpn
          : alpn // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _self.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as XrayFallbackType?,
      dest: freezed == dest ? _self.dest : dest,
      xver: freezed == xver
          ? _self.xver
          : xver // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$VLessOutboundConfig {
  XrayAddress? get address;
  int? get port;
  int? get level;
  String? get email;
  @JsonKey(name: 'id')
  String? get id;
  String? get flow;
  String? get seed;
  String? get encryption;
  VLessReverseConfig? get reverse;
  int? get testpre;
  List<int>? get testseed;
  @JsonKey(name: 'vnext')
  List<VLessOutboundVnext>? get vnext;

  /// Create a copy of VLessOutboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VLessOutboundConfigCopyWith<VLessOutboundConfig> get copyWith =>
      _$VLessOutboundConfigCopyWithImpl<VLessOutboundConfig>(
          this as VLessOutboundConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VLessOutboundConfig &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.flow, flow) || other.flow == flow) &&
            (identical(other.seed, seed) || other.seed == seed) &&
            (identical(other.encryption, encryption) ||
                other.encryption == encryption) &&
            (identical(other.reverse, reverse) || other.reverse == reverse) &&
            (identical(other.testpre, testpre) || other.testpre == testpre) &&
            const DeepCollectionEquality().equals(other.testseed, testseed) &&
            const DeepCollectionEquality().equals(other.vnext, vnext));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      address,
      port,
      level,
      email,
      id,
      flow,
      seed,
      encryption,
      reverse,
      testpre,
      const DeepCollectionEquality().hash(testseed),
      const DeepCollectionEquality().hash(vnext));

  @override
  String toString() {
    return 'VLessOutboundConfig(address: $address, port: $port, level: $level, email: $email, id: $id, flow: $flow, seed: $seed, encryption: $encryption, reverse: $reverse, testpre: $testpre, testseed: $testseed, vnext: $vnext)';
  }
}

/// @nodoc
abstract mixin class $VLessOutboundConfigCopyWith<$Res> {
  factory $VLessOutboundConfigCopyWith(
          VLessOutboundConfig value, $Res Function(VLessOutboundConfig) _then) =
      _$VLessOutboundConfigCopyWithImpl;
  @useResult
  $Res call(
      {XrayAddress? address,
      int? port,
      int? level,
      String? email,
      @JsonKey(name: 'id') String? id,
      String? flow,
      String? seed,
      String? encryption,
      VLessReverseConfig? reverse,
      int? testpre,
      List<int>? testseed,
      @JsonKey(name: 'vnext') List<VLessOutboundVnext>? vnext});

  $VLessReverseConfigCopyWith<$Res>? get reverse;
}

/// @nodoc
class _$VLessOutboundConfigCopyWithImpl<$Res>
    implements $VLessOutboundConfigCopyWith<$Res> {
  _$VLessOutboundConfigCopyWithImpl(this._self, this._then);

  final VLessOutboundConfig _self;
  final $Res Function(VLessOutboundConfig) _then;

  /// Create a copy of VLessOutboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? port = freezed,
    Object? level = freezed,
    Object? email = freezed,
    Object? id = freezed,
    Object? flow = freezed,
    Object? seed = freezed,
    Object? encryption = freezed,
    Object? reverse = freezed,
    Object? testpre = freezed,
    Object? testseed = freezed,
    Object? vnext = freezed,
  }) {
    return _then(_self.copyWith(
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      flow: freezed == flow
          ? _self.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as String?,
      seed: freezed == seed
          ? _self.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as String?,
      encryption: freezed == encryption
          ? _self.encryption
          : encryption // ignore: cast_nullable_to_non_nullable
              as String?,
      reverse: freezed == reverse
          ? _self.reverse
          : reverse // ignore: cast_nullable_to_non_nullable
              as VLessReverseConfig?,
      testpre: freezed == testpre
          ? _self.testpre
          : testpre // ignore: cast_nullable_to_non_nullable
              as int?,
      testseed: freezed == testseed
          ? _self.testseed
          : testseed // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      vnext: freezed == vnext
          ? _self.vnext
          : vnext // ignore: cast_nullable_to_non_nullable
              as List<VLessOutboundVnext>?,
    ));
  }

  /// Create a copy of VLessOutboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VLessReverseConfigCopyWith<$Res>? get reverse {
    if (_self.reverse == null) {
      return null;
    }

    return $VLessReverseConfigCopyWith<$Res>(_self.reverse!, (value) {
      return _then(_self.copyWith(reverse: value));
    });
  }
}

/// Adds pattern-matching-related methods to [VLessOutboundConfig].
extension VLessOutboundConfigPatterns on VLessOutboundConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VLessOutboundConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VLessOutboundConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VLessOutboundConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessOutboundConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VLessOutboundConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessOutboundConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            XrayAddress? address,
            int? port,
            int? level,
            String? email,
            @JsonKey(name: 'id') String? id,
            String? flow,
            String? seed,
            String? encryption,
            VLessReverseConfig? reverse,
            int? testpre,
            List<int>? testseed,
            @JsonKey(name: 'vnext') List<VLessOutboundVnext>? vnext)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VLessOutboundConfig() when $default != null:
        return $default(
            _that.address,
            _that.port,
            _that.level,
            _that.email,
            _that.id,
            _that.flow,
            _that.seed,
            _that.encryption,
            _that.reverse,
            _that.testpre,
            _that.testseed,
            _that.vnext);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            XrayAddress? address,
            int? port,
            int? level,
            String? email,
            @JsonKey(name: 'id') String? id,
            String? flow,
            String? seed,
            String? encryption,
            VLessReverseConfig? reverse,
            int? testpre,
            List<int>? testseed,
            @JsonKey(name: 'vnext') List<VLessOutboundVnext>? vnext)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessOutboundConfig():
        return $default(
            _that.address,
            _that.port,
            _that.level,
            _that.email,
            _that.id,
            _that.flow,
            _that.seed,
            _that.encryption,
            _that.reverse,
            _that.testpre,
            _that.testseed,
            _that.vnext);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            XrayAddress? address,
            int? port,
            int? level,
            String? email,
            @JsonKey(name: 'id') String? id,
            String? flow,
            String? seed,
            String? encryption,
            VLessReverseConfig? reverse,
            int? testpre,
            List<int>? testseed,
            @JsonKey(name: 'vnext') List<VLessOutboundVnext>? vnext)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessOutboundConfig() when $default != null:
        return $default(
            _that.address,
            _that.port,
            _that.level,
            _that.email,
            _that.id,
            _that.flow,
            _that.seed,
            _that.encryption,
            _that.reverse,
            _that.testpre,
            _that.testseed,
            _that.vnext);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _VLessOutboundConfig extends VLessOutboundConfig {
  const _VLessOutboundConfig(
      {this.address,
      this.port,
      this.level,
      this.email,
      @JsonKey(name: 'id') this.id,
      this.flow,
      this.seed,
      this.encryption,
      this.reverse,
      this.testpre,
      final List<int>? testseed,
      @JsonKey(name: 'vnext') final List<VLessOutboundVnext>? vnext})
      : _testseed = testseed,
        _vnext = vnext,
        super._();

  @override
  final XrayAddress? address;
  @override
  final int? port;
  @override
  final int? level;
  @override
  final String? email;
  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  final String? flow;
  @override
  final String? seed;
  @override
  final String? encryption;
  @override
  final VLessReverseConfig? reverse;
  @override
  final int? testpre;
  final List<int>? _testseed;
  @override
  List<int>? get testseed {
    final value = _testseed;
    if (value == null) return null;
    if (_testseed is EqualUnmodifiableListView) return _testseed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<VLessOutboundVnext>? _vnext;
  @override
  @JsonKey(name: 'vnext')
  List<VLessOutboundVnext>? get vnext {
    final value = _vnext;
    if (value == null) return null;
    if (_vnext is EqualUnmodifiableListView) return _vnext;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of VLessOutboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VLessOutboundConfigCopyWith<_VLessOutboundConfig> get copyWith =>
      __$VLessOutboundConfigCopyWithImpl<_VLessOutboundConfig>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VLessOutboundConfig &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.flow, flow) || other.flow == flow) &&
            (identical(other.seed, seed) || other.seed == seed) &&
            (identical(other.encryption, encryption) ||
                other.encryption == encryption) &&
            (identical(other.reverse, reverse) || other.reverse == reverse) &&
            (identical(other.testpre, testpre) || other.testpre == testpre) &&
            const DeepCollectionEquality().equals(other._testseed, _testseed) &&
            const DeepCollectionEquality().equals(other._vnext, _vnext));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      address,
      port,
      level,
      email,
      id,
      flow,
      seed,
      encryption,
      reverse,
      testpre,
      const DeepCollectionEquality().hash(_testseed),
      const DeepCollectionEquality().hash(_vnext));

  @override
  String toString() {
    return 'VLessOutboundConfig(address: $address, port: $port, level: $level, email: $email, id: $id, flow: $flow, seed: $seed, encryption: $encryption, reverse: $reverse, testpre: $testpre, testseed: $testseed, vnext: $vnext)';
  }
}

/// @nodoc
abstract mixin class _$VLessOutboundConfigCopyWith<$Res>
    implements $VLessOutboundConfigCopyWith<$Res> {
  factory _$VLessOutboundConfigCopyWith(_VLessOutboundConfig value,
          $Res Function(_VLessOutboundConfig) _then) =
      __$VLessOutboundConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {XrayAddress? address,
      int? port,
      int? level,
      String? email,
      @JsonKey(name: 'id') String? id,
      String? flow,
      String? seed,
      String? encryption,
      VLessReverseConfig? reverse,
      int? testpre,
      List<int>? testseed,
      @JsonKey(name: 'vnext') List<VLessOutboundVnext>? vnext});

  @override
  $VLessReverseConfigCopyWith<$Res>? get reverse;
}

/// @nodoc
class __$VLessOutboundConfigCopyWithImpl<$Res>
    implements _$VLessOutboundConfigCopyWith<$Res> {
  __$VLessOutboundConfigCopyWithImpl(this._self, this._then);

  final _VLessOutboundConfig _self;
  final $Res Function(_VLessOutboundConfig) _then;

  /// Create a copy of VLessOutboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = freezed,
    Object? port = freezed,
    Object? level = freezed,
    Object? email = freezed,
    Object? id = freezed,
    Object? flow = freezed,
    Object? seed = freezed,
    Object? encryption = freezed,
    Object? reverse = freezed,
    Object? testpre = freezed,
    Object? testseed = freezed,
    Object? vnext = freezed,
  }) {
    return _then(_VLessOutboundConfig(
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      flow: freezed == flow
          ? _self.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as String?,
      seed: freezed == seed
          ? _self.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as String?,
      encryption: freezed == encryption
          ? _self.encryption
          : encryption // ignore: cast_nullable_to_non_nullable
              as String?,
      reverse: freezed == reverse
          ? _self.reverse
          : reverse // ignore: cast_nullable_to_non_nullable
              as VLessReverseConfig?,
      testpre: freezed == testpre
          ? _self.testpre
          : testpre // ignore: cast_nullable_to_non_nullable
              as int?,
      testseed: freezed == testseed
          ? _self._testseed
          : testseed // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      vnext: freezed == vnext
          ? _self._vnext
          : vnext // ignore: cast_nullable_to_non_nullable
              as List<VLessOutboundVnext>?,
    ));
  }

  /// Create a copy of VLessOutboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VLessReverseConfigCopyWith<$Res>? get reverse {
    if (_self.reverse == null) {
      return null;
    }

    return $VLessReverseConfigCopyWith<$Res>(_self.reverse!, (value) {
      return _then(_self.copyWith(reverse: value));
    });
  }
}

/// @nodoc
mixin _$VLessOutboundVnext {
  XrayAddress get address;
  int get port;
  List<VLessUser> get users;

  /// Create a copy of VLessOutboundVnext
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VLessOutboundVnextCopyWith<VLessOutboundVnext> get copyWith =>
      _$VLessOutboundVnextCopyWithImpl<VLessOutboundVnext>(
          this as VLessOutboundVnext, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VLessOutboundVnext &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            const DeepCollectionEquality().equals(other.users, users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, address, port, const DeepCollectionEquality().hash(users));

  @override
  String toString() {
    return 'VLessOutboundVnext(address: $address, port: $port, users: $users)';
  }
}

/// @nodoc
abstract mixin class $VLessOutboundVnextCopyWith<$Res> {
  factory $VLessOutboundVnextCopyWith(
          VLessOutboundVnext value, $Res Function(VLessOutboundVnext) _then) =
      _$VLessOutboundVnextCopyWithImpl;
  @useResult
  $Res call({XrayAddress address, int port, List<VLessUser> users});
}

/// @nodoc
class _$VLessOutboundVnextCopyWithImpl<$Res>
    implements $VLessOutboundVnextCopyWith<$Res> {
  _$VLessOutboundVnextCopyWithImpl(this._self, this._then);

  final VLessOutboundVnext _self;
  final $Res Function(VLessOutboundVnext) _then;

  /// Create a copy of VLessOutboundVnext
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? port = null,
    Object? users = null,
  }) {
    return _then(_self.copyWith(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress,
      port: null == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      users: null == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<VLessUser>,
    ));
  }
}

/// Adds pattern-matching-related methods to [VLessOutboundVnext].
extension VLessOutboundVnextPatterns on VLessOutboundVnext {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VLessOutboundVnext value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VLessOutboundVnext() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VLessOutboundVnext value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessOutboundVnext():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VLessOutboundVnext value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessOutboundVnext() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(XrayAddress address, int port, List<VLessUser> users)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VLessOutboundVnext() when $default != null:
        return $default(_that.address, _that.port, _that.users);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(XrayAddress address, int port, List<VLessUser> users)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessOutboundVnext():
        return $default(_that.address, _that.port, _that.users);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(XrayAddress address, int port, List<VLessUser> users)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessOutboundVnext() when $default != null:
        return $default(_that.address, _that.port, _that.users);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _VLessOutboundVnext extends VLessOutboundVnext {
  const _VLessOutboundVnext(
      {required this.address,
      required this.port,
      required final List<VLessUser> users})
      : _users = users,
        super._();

  @override
  final XrayAddress address;
  @override
  final int port;
  final List<VLessUser> _users;
  @override
  List<VLessUser> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  /// Create a copy of VLessOutboundVnext
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VLessOutboundVnextCopyWith<_VLessOutboundVnext> get copyWith =>
      __$VLessOutboundVnextCopyWithImpl<_VLessOutboundVnext>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VLessOutboundVnext &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, address, port, const DeepCollectionEquality().hash(_users));

  @override
  String toString() {
    return 'VLessOutboundVnext(address: $address, port: $port, users: $users)';
  }
}

/// @nodoc
abstract mixin class _$VLessOutboundVnextCopyWith<$Res>
    implements $VLessOutboundVnextCopyWith<$Res> {
  factory _$VLessOutboundVnextCopyWith(
          _VLessOutboundVnext value, $Res Function(_VLessOutboundVnext) _then) =
      __$VLessOutboundVnextCopyWithImpl;
  @override
  @useResult
  $Res call({XrayAddress address, int port, List<VLessUser> users});
}

/// @nodoc
class __$VLessOutboundVnextCopyWithImpl<$Res>
    implements _$VLessOutboundVnextCopyWith<$Res> {
  __$VLessOutboundVnextCopyWithImpl(this._self, this._then);

  final _VLessOutboundVnext _self;
  final $Res Function(_VLessOutboundVnext) _then;

  /// Create a copy of VLessOutboundVnext
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = null,
    Object? port = null,
    Object? users = null,
  }) {
    return _then(_VLessOutboundVnext(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress,
      port: null == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      users: null == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<VLessUser>,
    ));
  }
}

/// @nodoc
mixin _$VLessReverseConfig {
  String get tag;
  SniffingConfig? get sniffing;

  /// Create a copy of VLessReverseConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VLessReverseConfigCopyWith<VLessReverseConfig> get copyWith =>
      _$VLessReverseConfigCopyWithImpl<VLessReverseConfig>(
          this as VLessReverseConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VLessReverseConfig &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.sniffing, sniffing) ||
                other.sniffing == sniffing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag, sniffing);

  @override
  String toString() {
    return 'VLessReverseConfig(tag: $tag, sniffing: $sniffing)';
  }
}

/// @nodoc
abstract mixin class $VLessReverseConfigCopyWith<$Res> {
  factory $VLessReverseConfigCopyWith(
          VLessReverseConfig value, $Res Function(VLessReverseConfig) _then) =
      _$VLessReverseConfigCopyWithImpl;
  @useResult
  $Res call({String tag, SniffingConfig? sniffing});

  $SniffingConfigCopyWith<$Res>? get sniffing;
}

/// @nodoc
class _$VLessReverseConfigCopyWithImpl<$Res>
    implements $VLessReverseConfigCopyWith<$Res> {
  _$VLessReverseConfigCopyWithImpl(this._self, this._then);

  final VLessReverseConfig _self;
  final $Res Function(VLessReverseConfig) _then;

  /// Create a copy of VLessReverseConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? sniffing = freezed,
  }) {
    return _then(_self.copyWith(
      tag: null == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      sniffing: freezed == sniffing
          ? _self.sniffing
          : sniffing // ignore: cast_nullable_to_non_nullable
              as SniffingConfig?,
    ));
  }

  /// Create a copy of VLessReverseConfig
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

/// Adds pattern-matching-related methods to [VLessReverseConfig].
extension VLessReverseConfigPatterns on VLessReverseConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VLessReverseConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VLessReverseConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VLessReverseConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessReverseConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VLessReverseConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessReverseConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String tag, SniffingConfig? sniffing)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VLessReverseConfig() when $default != null:
        return $default(_that.tag, _that.sniffing);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String tag, SniffingConfig? sniffing) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessReverseConfig():
        return $default(_that.tag, _that.sniffing);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String tag, SniffingConfig? sniffing)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessReverseConfig() when $default != null:
        return $default(_that.tag, _that.sniffing);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _VLessReverseConfig extends VLessReverseConfig {
  const _VLessReverseConfig({required this.tag, this.sniffing}) : super._();

  @override
  final String tag;
  @override
  final SniffingConfig? sniffing;

  /// Create a copy of VLessReverseConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VLessReverseConfigCopyWith<_VLessReverseConfig> get copyWith =>
      __$VLessReverseConfigCopyWithImpl<_VLessReverseConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VLessReverseConfig &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.sniffing, sniffing) ||
                other.sniffing == sniffing));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag, sniffing);

  @override
  String toString() {
    return 'VLessReverseConfig(tag: $tag, sniffing: $sniffing)';
  }
}

/// @nodoc
abstract mixin class _$VLessReverseConfigCopyWith<$Res>
    implements $VLessReverseConfigCopyWith<$Res> {
  factory _$VLessReverseConfigCopyWith(
          _VLessReverseConfig value, $Res Function(_VLessReverseConfig) _then) =
      __$VLessReverseConfigCopyWithImpl;
  @override
  @useResult
  $Res call({String tag, SniffingConfig? sniffing});

  @override
  $SniffingConfigCopyWith<$Res>? get sniffing;
}

/// @nodoc
class __$VLessReverseConfigCopyWithImpl<$Res>
    implements _$VLessReverseConfigCopyWith<$Res> {
  __$VLessReverseConfigCopyWithImpl(this._self, this._then);

  final _VLessReverseConfig _self;
  final $Res Function(_VLessReverseConfig) _then;

  /// Create a copy of VLessReverseConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tag = null,
    Object? sniffing = freezed,
  }) {
    return _then(_VLessReverseConfig(
      tag: null == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      sniffing: freezed == sniffing
          ? _self.sniffing
          : sniffing // ignore: cast_nullable_to_non_nullable
              as SniffingConfig?,
    ));
  }

  /// Create a copy of VLessReverseConfig
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
mixin _$VLessUser {
  String? get email;
  int? get level;
  String get id;
  String? get flow;
  String? get seed;
  String? get encryption;
  VLessReverseConfig? get reverse;
  int? get testpre;
  List<int>? get testseed;

  /// Create a copy of VLessUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VLessUserCopyWith<VLessUser> get copyWith =>
      _$VLessUserCopyWithImpl<VLessUser>(this as VLessUser, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VLessUser &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.flow, flow) || other.flow == flow) &&
            (identical(other.seed, seed) || other.seed == seed) &&
            (identical(other.encryption, encryption) ||
                other.encryption == encryption) &&
            (identical(other.reverse, reverse) || other.reverse == reverse) &&
            (identical(other.testpre, testpre) || other.testpre == testpre) &&
            const DeepCollectionEquality().equals(other.testseed, testseed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      level,
      id,
      flow,
      seed,
      encryption,
      reverse,
      testpre,
      const DeepCollectionEquality().hash(testseed));

  @override
  String toString() {
    return 'VLessUser(email: $email, level: $level, id: $id, flow: $flow, seed: $seed, encryption: $encryption, reverse: $reverse, testpre: $testpre, testseed: $testseed)';
  }
}

/// @nodoc
abstract mixin class $VLessUserCopyWith<$Res> {
  factory $VLessUserCopyWith(VLessUser value, $Res Function(VLessUser) _then) =
      _$VLessUserCopyWithImpl;
  @useResult
  $Res call(
      {String? email,
      int? level,
      String id,
      String? flow,
      String? seed,
      String? encryption,
      VLessReverseConfig? reverse,
      int? testpre,
      List<int>? testseed});

  $VLessReverseConfigCopyWith<$Res>? get reverse;
}

/// @nodoc
class _$VLessUserCopyWithImpl<$Res> implements $VLessUserCopyWith<$Res> {
  _$VLessUserCopyWithImpl(this._self, this._then);

  final VLessUser _self;
  final $Res Function(VLessUser) _then;

  /// Create a copy of VLessUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? level = freezed,
    Object? id = null,
    Object? flow = freezed,
    Object? seed = freezed,
    Object? encryption = freezed,
    Object? reverse = freezed,
    Object? testpre = freezed,
    Object? testseed = freezed,
  }) {
    return _then(_self.copyWith(
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      flow: freezed == flow
          ? _self.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as String?,
      seed: freezed == seed
          ? _self.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as String?,
      encryption: freezed == encryption
          ? _self.encryption
          : encryption // ignore: cast_nullable_to_non_nullable
              as String?,
      reverse: freezed == reverse
          ? _self.reverse
          : reverse // ignore: cast_nullable_to_non_nullable
              as VLessReverseConfig?,
      testpre: freezed == testpre
          ? _self.testpre
          : testpre // ignore: cast_nullable_to_non_nullable
              as int?,
      testseed: freezed == testseed
          ? _self.testseed
          : testseed // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }

  /// Create a copy of VLessUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VLessReverseConfigCopyWith<$Res>? get reverse {
    if (_self.reverse == null) {
      return null;
    }

    return $VLessReverseConfigCopyWith<$Res>(_self.reverse!, (value) {
      return _then(_self.copyWith(reverse: value));
    });
  }
}

/// Adds pattern-matching-related methods to [VLessUser].
extension VLessUserPatterns on VLessUser {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VLessUser value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VLessUser() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VLessUser value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessUser():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VLessUser value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessUser() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? email,
            int? level,
            String id,
            String? flow,
            String? seed,
            String? encryption,
            VLessReverseConfig? reverse,
            int? testpre,
            List<int>? testseed)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VLessUser() when $default != null:
        return $default(
            _that.email,
            _that.level,
            _that.id,
            _that.flow,
            _that.seed,
            _that.encryption,
            _that.reverse,
            _that.testpre,
            _that.testseed);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String? email,
            int? level,
            String id,
            String? flow,
            String? seed,
            String? encryption,
            VLessReverseConfig? reverse,
            int? testpre,
            List<int>? testseed)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessUser():
        return $default(
            _that.email,
            _that.level,
            _that.id,
            _that.flow,
            _that.seed,
            _that.encryption,
            _that.reverse,
            _that.testpre,
            _that.testseed);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? email,
            int? level,
            String id,
            String? flow,
            String? seed,
            String? encryption,
            VLessReverseConfig? reverse,
            int? testpre,
            List<int>? testseed)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VLessUser() when $default != null:
        return $default(
            _that.email,
            _that.level,
            _that.id,
            _that.flow,
            _that.seed,
            _that.encryption,
            _that.reverse,
            _that.testpre,
            _that.testseed);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _VLessUser extends VLessUser {
  const _VLessUser(
      {this.email,
      this.level,
      required this.id,
      this.flow,
      this.seed,
      this.encryption,
      this.reverse,
      this.testpre,
      final List<int>? testseed})
      : _testseed = testseed,
        super._();

  @override
  final String? email;
  @override
  final int? level;
  @override
  final String id;
  @override
  final String? flow;
  @override
  final String? seed;
  @override
  final String? encryption;
  @override
  final VLessReverseConfig? reverse;
  @override
  final int? testpre;
  final List<int>? _testseed;
  @override
  List<int>? get testseed {
    final value = _testseed;
    if (value == null) return null;
    if (_testseed is EqualUnmodifiableListView) return _testseed;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of VLessUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VLessUserCopyWith<_VLessUser> get copyWith =>
      __$VLessUserCopyWithImpl<_VLessUser>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VLessUser &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.flow, flow) || other.flow == flow) &&
            (identical(other.seed, seed) || other.seed == seed) &&
            (identical(other.encryption, encryption) ||
                other.encryption == encryption) &&
            (identical(other.reverse, reverse) || other.reverse == reverse) &&
            (identical(other.testpre, testpre) || other.testpre == testpre) &&
            const DeepCollectionEquality().equals(other._testseed, _testseed));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      email,
      level,
      id,
      flow,
      seed,
      encryption,
      reverse,
      testpre,
      const DeepCollectionEquality().hash(_testseed));

  @override
  String toString() {
    return 'VLessUser(email: $email, level: $level, id: $id, flow: $flow, seed: $seed, encryption: $encryption, reverse: $reverse, testpre: $testpre, testseed: $testseed)';
  }
}

/// @nodoc
abstract mixin class _$VLessUserCopyWith<$Res>
    implements $VLessUserCopyWith<$Res> {
  factory _$VLessUserCopyWith(
          _VLessUser value, $Res Function(_VLessUser) _then) =
      __$VLessUserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? email,
      int? level,
      String id,
      String? flow,
      String? seed,
      String? encryption,
      VLessReverseConfig? reverse,
      int? testpre,
      List<int>? testseed});

  @override
  $VLessReverseConfigCopyWith<$Res>? get reverse;
}

/// @nodoc
class __$VLessUserCopyWithImpl<$Res> implements _$VLessUserCopyWith<$Res> {
  __$VLessUserCopyWithImpl(this._self, this._then);

  final _VLessUser _self;
  final $Res Function(_VLessUser) _then;

  /// Create a copy of VLessUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = freezed,
    Object? level = freezed,
    Object? id = null,
    Object? flow = freezed,
    Object? seed = freezed,
    Object? encryption = freezed,
    Object? reverse = freezed,
    Object? testpre = freezed,
    Object? testseed = freezed,
  }) {
    return _then(_VLessUser(
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      flow: freezed == flow
          ? _self.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as String?,
      seed: freezed == seed
          ? _self.seed
          : seed // ignore: cast_nullable_to_non_nullable
              as String?,
      encryption: freezed == encryption
          ? _self.encryption
          : encryption // ignore: cast_nullable_to_non_nullable
              as String?,
      reverse: freezed == reverse
          ? _self.reverse
          : reverse // ignore: cast_nullable_to_non_nullable
              as VLessReverseConfig?,
      testpre: freezed == testpre
          ? _self.testpre
          : testpre // ignore: cast_nullable_to_non_nullable
              as int?,
      testseed: freezed == testseed
          ? _self._testseed
          : testseed // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }

  /// Create a copy of VLessUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VLessReverseConfigCopyWith<$Res>? get reverse {
    if (_self.reverse == null) {
      return null;
    }

    return $VLessReverseConfigCopyWith<$Res>(_self.reverse!, (value) {
      return _then(_self.copyWith(reverse: value));
    });
  }
}

/// @nodoc
mixin _$VMessAccount {
  String get id;
  VmessSecurity? get security;
  String? get experiments;

  /// Create a copy of VMessAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VMessAccountCopyWith<VMessAccount> get copyWith =>
      _$VMessAccountCopyWithImpl<VMessAccount>(
          this as VMessAccount, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VMessAccount &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.security, security) ||
                other.security == security) &&
            (identical(other.experiments, experiments) ||
                other.experiments == experiments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, security, experiments);

  @override
  String toString() {
    return 'VMessAccount(id: $id, security: $security, experiments: $experiments)';
  }
}

/// @nodoc
abstract mixin class $VMessAccountCopyWith<$Res> {
  factory $VMessAccountCopyWith(
          VMessAccount value, $Res Function(VMessAccount) _then) =
      _$VMessAccountCopyWithImpl;
  @useResult
  $Res call({String id, VmessSecurity? security, String? experiments});
}

/// @nodoc
class _$VMessAccountCopyWithImpl<$Res> implements $VMessAccountCopyWith<$Res> {
  _$VMessAccountCopyWithImpl(this._self, this._then);

  final VMessAccount _self;
  final $Res Function(VMessAccount) _then;

  /// Create a copy of VMessAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? security = freezed,
    Object? experiments = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      security: freezed == security
          ? _self.security
          : security // ignore: cast_nullable_to_non_nullable
              as VmessSecurity?,
      experiments: freezed == experiments
          ? _self.experiments
          : experiments // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [VMessAccount].
extension VMessAccountPatterns on VMessAccount {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VMessAccount value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VMessAccount() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VMessAccount value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessAccount():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VMessAccount value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessAccount() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String id, VmessSecurity? security, String? experiments)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VMessAccount() when $default != null:
        return $default(_that.id, _that.security, _that.experiments);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String id, VmessSecurity? security, String? experiments)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessAccount():
        return $default(_that.id, _that.security, _that.experiments);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String id, VmessSecurity? security, String? experiments)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessAccount() when $default != null:
        return $default(_that.id, _that.security, _that.experiments);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _VMessAccount extends VMessAccount {
  const _VMessAccount({required this.id, this.security, this.experiments})
      : super._();

  @override
  final String id;
  @override
  final VmessSecurity? security;
  @override
  final String? experiments;

  /// Create a copy of VMessAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VMessAccountCopyWith<_VMessAccount> get copyWith =>
      __$VMessAccountCopyWithImpl<_VMessAccount>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VMessAccount &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.security, security) ||
                other.security == security) &&
            (identical(other.experiments, experiments) ||
                other.experiments == experiments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, security, experiments);

  @override
  String toString() {
    return 'VMessAccount(id: $id, security: $security, experiments: $experiments)';
  }
}

/// @nodoc
abstract mixin class _$VMessAccountCopyWith<$Res>
    implements $VMessAccountCopyWith<$Res> {
  factory _$VMessAccountCopyWith(
          _VMessAccount value, $Res Function(_VMessAccount) _then) =
      __$VMessAccountCopyWithImpl;
  @override
  @useResult
  $Res call({String id, VmessSecurity? security, String? experiments});
}

/// @nodoc
class __$VMessAccountCopyWithImpl<$Res>
    implements _$VMessAccountCopyWith<$Res> {
  __$VMessAccountCopyWithImpl(this._self, this._then);

  final _VMessAccount _self;
  final $Res Function(_VMessAccount) _then;

  /// Create a copy of VMessAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? security = freezed,
    Object? experiments = freezed,
  }) {
    return _then(_VMessAccount(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      security: freezed == security
          ? _self.security
          : security // ignore: cast_nullable_to_non_nullable
              as VmessSecurity?,
      experiments: freezed == experiments
          ? _self.experiments
          : experiments // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$VMessDefaultConfig {
  int? get level;

  /// Create a copy of VMessDefaultConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VMessDefaultConfigCopyWith<VMessDefaultConfig> get copyWith =>
      _$VMessDefaultConfigCopyWithImpl<VMessDefaultConfig>(
          this as VMessDefaultConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VMessDefaultConfig &&
            (identical(other.level, level) || other.level == level));
  }

  @override
  int get hashCode => Object.hash(runtimeType, level);

  @override
  String toString() {
    return 'VMessDefaultConfig(level: $level)';
  }
}

/// @nodoc
abstract mixin class $VMessDefaultConfigCopyWith<$Res> {
  factory $VMessDefaultConfigCopyWith(
          VMessDefaultConfig value, $Res Function(VMessDefaultConfig) _then) =
      _$VMessDefaultConfigCopyWithImpl;
  @useResult
  $Res call({int? level});
}

/// @nodoc
class _$VMessDefaultConfigCopyWithImpl<$Res>
    implements $VMessDefaultConfigCopyWith<$Res> {
  _$VMessDefaultConfigCopyWithImpl(this._self, this._then);

  final VMessDefaultConfig _self;
  final $Res Function(VMessDefaultConfig) _then;

  /// Create a copy of VMessDefaultConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? level = freezed,
  }) {
    return _then(_self.copyWith(
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [VMessDefaultConfig].
extension VMessDefaultConfigPatterns on VMessDefaultConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VMessDefaultConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VMessDefaultConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VMessDefaultConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessDefaultConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VMessDefaultConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessDefaultConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int? level)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VMessDefaultConfig() when $default != null:
        return $default(_that.level);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int? level) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessDefaultConfig():
        return $default(_that.level);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int? level)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessDefaultConfig() when $default != null:
        return $default(_that.level);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _VMessDefaultConfig extends VMessDefaultConfig {
  const _VMessDefaultConfig({this.level}) : super._();

  @override
  final int? level;

  /// Create a copy of VMessDefaultConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VMessDefaultConfigCopyWith<_VMessDefaultConfig> get copyWith =>
      __$VMessDefaultConfigCopyWithImpl<_VMessDefaultConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VMessDefaultConfig &&
            (identical(other.level, level) || other.level == level));
  }

  @override
  int get hashCode => Object.hash(runtimeType, level);

  @override
  String toString() {
    return 'VMessDefaultConfig(level: $level)';
  }
}

/// @nodoc
abstract mixin class _$VMessDefaultConfigCopyWith<$Res>
    implements $VMessDefaultConfigCopyWith<$Res> {
  factory _$VMessDefaultConfigCopyWith(
          _VMessDefaultConfig value, $Res Function(_VMessDefaultConfig) _then) =
      __$VMessDefaultConfigCopyWithImpl;
  @override
  @useResult
  $Res call({int? level});
}

/// @nodoc
class __$VMessDefaultConfigCopyWithImpl<$Res>
    implements _$VMessDefaultConfigCopyWith<$Res> {
  __$VMessDefaultConfigCopyWithImpl(this._self, this._then);

  final _VMessDefaultConfig _self;
  final $Res Function(_VMessDefaultConfig) _then;

  /// Create a copy of VMessDefaultConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? level = freezed,
  }) {
    return _then(_VMessDefaultConfig(
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$VMessInboundConfig {
  List<VMessUser>? get users;
  List<VMessUser>? get clients;
  @JsonKey(name: 'default')
  VMessDefaultConfig? get defaults;

  /// Create a copy of VMessInboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VMessInboundConfigCopyWith<VMessInboundConfig> get copyWith =>
      _$VMessInboundConfigCopyWithImpl<VMessInboundConfig>(
          this as VMessInboundConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VMessInboundConfig &&
            const DeepCollectionEquality().equals(other.users, users) &&
            const DeepCollectionEquality().equals(other.clients, clients) &&
            (identical(other.defaults, defaults) ||
                other.defaults == defaults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(users),
      const DeepCollectionEquality().hash(clients),
      defaults);

  @override
  String toString() {
    return 'VMessInboundConfig(users: $users, clients: $clients, defaults: $defaults)';
  }
}

/// @nodoc
abstract mixin class $VMessInboundConfigCopyWith<$Res> {
  factory $VMessInboundConfigCopyWith(
          VMessInboundConfig value, $Res Function(VMessInboundConfig) _then) =
      _$VMessInboundConfigCopyWithImpl;
  @useResult
  $Res call(
      {List<VMessUser>? users,
      List<VMessUser>? clients,
      @JsonKey(name: 'default') VMessDefaultConfig? defaults});

  $VMessDefaultConfigCopyWith<$Res>? get defaults;
}

/// @nodoc
class _$VMessInboundConfigCopyWithImpl<$Res>
    implements $VMessInboundConfigCopyWith<$Res> {
  _$VMessInboundConfigCopyWithImpl(this._self, this._then);

  final VMessInboundConfig _self;
  final $Res Function(VMessInboundConfig) _then;

  /// Create a copy of VMessInboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
    Object? clients = freezed,
    Object? defaults = freezed,
  }) {
    return _then(_self.copyWith(
      users: freezed == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<VMessUser>?,
      clients: freezed == clients
          ? _self.clients
          : clients // ignore: cast_nullable_to_non_nullable
              as List<VMessUser>?,
      defaults: freezed == defaults
          ? _self.defaults
          : defaults // ignore: cast_nullable_to_non_nullable
              as VMessDefaultConfig?,
    ));
  }

  /// Create a copy of VMessInboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VMessDefaultConfigCopyWith<$Res>? get defaults {
    if (_self.defaults == null) {
      return null;
    }

    return $VMessDefaultConfigCopyWith<$Res>(_self.defaults!, (value) {
      return _then(_self.copyWith(defaults: value));
    });
  }
}

/// Adds pattern-matching-related methods to [VMessInboundConfig].
extension VMessInboundConfigPatterns on VMessInboundConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VMessInboundConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VMessInboundConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VMessInboundConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessInboundConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VMessInboundConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessInboundConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<VMessUser>? users, List<VMessUser>? clients,
            @JsonKey(name: 'default') VMessDefaultConfig? defaults)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VMessInboundConfig() when $default != null:
        return $default(_that.users, _that.clients, _that.defaults);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<VMessUser>? users, List<VMessUser>? clients,
            @JsonKey(name: 'default') VMessDefaultConfig? defaults)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessInboundConfig():
        return $default(_that.users, _that.clients, _that.defaults);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(List<VMessUser>? users, List<VMessUser>? clients,
            @JsonKey(name: 'default') VMessDefaultConfig? defaults)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessInboundConfig() when $default != null:
        return $default(_that.users, _that.clients, _that.defaults);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _VMessInboundConfig extends VMessInboundConfig {
  const _VMessInboundConfig(
      {final List<VMessUser>? users,
      final List<VMessUser>? clients,
      @JsonKey(name: 'default') this.defaults})
      : _users = users,
        _clients = clients,
        super._();

  final List<VMessUser>? _users;
  @override
  List<VMessUser>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<VMessUser>? _clients;
  @override
  List<VMessUser>? get clients {
    final value = _clients;
    if (value == null) return null;
    if (_clients is EqualUnmodifiableListView) return _clients;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'default')
  final VMessDefaultConfig? defaults;

  /// Create a copy of VMessInboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VMessInboundConfigCopyWith<_VMessInboundConfig> get copyWith =>
      __$VMessInboundConfigCopyWithImpl<_VMessInboundConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VMessInboundConfig &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._clients, _clients) &&
            (identical(other.defaults, defaults) ||
                other.defaults == defaults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_clients),
      defaults);

  @override
  String toString() {
    return 'VMessInboundConfig(users: $users, clients: $clients, defaults: $defaults)';
  }
}

/// @nodoc
abstract mixin class _$VMessInboundConfigCopyWith<$Res>
    implements $VMessInboundConfigCopyWith<$Res> {
  factory _$VMessInboundConfigCopyWith(
          _VMessInboundConfig value, $Res Function(_VMessInboundConfig) _then) =
      __$VMessInboundConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<VMessUser>? users,
      List<VMessUser>? clients,
      @JsonKey(name: 'default') VMessDefaultConfig? defaults});

  @override
  $VMessDefaultConfigCopyWith<$Res>? get defaults;
}

/// @nodoc
class __$VMessInboundConfigCopyWithImpl<$Res>
    implements _$VMessInboundConfigCopyWith<$Res> {
  __$VMessInboundConfigCopyWithImpl(this._self, this._then);

  final _VMessInboundConfig _self;
  final $Res Function(_VMessInboundConfig) _then;

  /// Create a copy of VMessInboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? users = freezed,
    Object? clients = freezed,
    Object? defaults = freezed,
  }) {
    return _then(_VMessInboundConfig(
      users: freezed == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<VMessUser>?,
      clients: freezed == clients
          ? _self._clients
          : clients // ignore: cast_nullable_to_non_nullable
              as List<VMessUser>?,
      defaults: freezed == defaults
          ? _self.defaults
          : defaults // ignore: cast_nullable_to_non_nullable
              as VMessDefaultConfig?,
    ));
  }

  /// Create a copy of VMessInboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $VMessDefaultConfigCopyWith<$Res>? get defaults {
    if (_self.defaults == null) {
      return null;
    }

    return $VMessDefaultConfigCopyWith<$Res>(_self.defaults!, (value) {
      return _then(_self.copyWith(defaults: value));
    });
  }
}

/// @nodoc
mixin _$VMessOutboundConfig {
  XrayAddress? get address;
  int? get port;
  int? get level;
  String? get email;
  String? get id;
  VmessSecurity? get security;
  String? get experiments;
  @JsonKey(name: 'vnext')
  List<VMessOutboundTarget>? get receivers;

  /// Create a copy of VMessOutboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VMessOutboundConfigCopyWith<VMessOutboundConfig> get copyWith =>
      _$VMessOutboundConfigCopyWithImpl<VMessOutboundConfig>(
          this as VMessOutboundConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VMessOutboundConfig &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.security, security) ||
                other.security == security) &&
            (identical(other.experiments, experiments) ||
                other.experiments == experiments) &&
            const DeepCollectionEquality().equals(other.receivers, receivers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, port, level, email, id,
      security, experiments, const DeepCollectionEquality().hash(receivers));

  @override
  String toString() {
    return 'VMessOutboundConfig(address: $address, port: $port, level: $level, email: $email, id: $id, security: $security, experiments: $experiments, receivers: $receivers)';
  }
}

/// @nodoc
abstract mixin class $VMessOutboundConfigCopyWith<$Res> {
  factory $VMessOutboundConfigCopyWith(
          VMessOutboundConfig value, $Res Function(VMessOutboundConfig) _then) =
      _$VMessOutboundConfigCopyWithImpl;
  @useResult
  $Res call(
      {XrayAddress? address,
      int? port,
      int? level,
      String? email,
      String? id,
      VmessSecurity? security,
      String? experiments,
      @JsonKey(name: 'vnext') List<VMessOutboundTarget>? receivers});
}

/// @nodoc
class _$VMessOutboundConfigCopyWithImpl<$Res>
    implements $VMessOutboundConfigCopyWith<$Res> {
  _$VMessOutboundConfigCopyWithImpl(this._self, this._then);

  final VMessOutboundConfig _self;
  final $Res Function(VMessOutboundConfig) _then;

  /// Create a copy of VMessOutboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? port = freezed,
    Object? level = freezed,
    Object? email = freezed,
    Object? id = freezed,
    Object? security = freezed,
    Object? experiments = freezed,
    Object? receivers = freezed,
  }) {
    return _then(_self.copyWith(
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      security: freezed == security
          ? _self.security
          : security // ignore: cast_nullable_to_non_nullable
              as VmessSecurity?,
      experiments: freezed == experiments
          ? _self.experiments
          : experiments // ignore: cast_nullable_to_non_nullable
              as String?,
      receivers: freezed == receivers
          ? _self.receivers
          : receivers // ignore: cast_nullable_to_non_nullable
              as List<VMessOutboundTarget>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [VMessOutboundConfig].
extension VMessOutboundConfigPatterns on VMessOutboundConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VMessOutboundConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VMessOutboundConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VMessOutboundConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessOutboundConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VMessOutboundConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessOutboundConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            XrayAddress? address,
            int? port,
            int? level,
            String? email,
            String? id,
            VmessSecurity? security,
            String? experiments,
            @JsonKey(name: 'vnext') List<VMessOutboundTarget>? receivers)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VMessOutboundConfig() when $default != null:
        return $default(_that.address, _that.port, _that.level, _that.email,
            _that.id, _that.security, _that.experiments, _that.receivers);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            XrayAddress? address,
            int? port,
            int? level,
            String? email,
            String? id,
            VmessSecurity? security,
            String? experiments,
            @JsonKey(name: 'vnext') List<VMessOutboundTarget>? receivers)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessOutboundConfig():
        return $default(_that.address, _that.port, _that.level, _that.email,
            _that.id, _that.security, _that.experiments, _that.receivers);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            XrayAddress? address,
            int? port,
            int? level,
            String? email,
            String? id,
            VmessSecurity? security,
            String? experiments,
            @JsonKey(name: 'vnext') List<VMessOutboundTarget>? receivers)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessOutboundConfig() when $default != null:
        return $default(_that.address, _that.port, _that.level, _that.email,
            _that.id, _that.security, _that.experiments, _that.receivers);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _VMessOutboundConfig extends VMessOutboundConfig {
  const _VMessOutboundConfig(
      {this.address,
      this.port,
      this.level,
      this.email,
      this.id,
      this.security,
      this.experiments,
      @JsonKey(name: 'vnext') final List<VMessOutboundTarget>? receivers})
      : _receivers = receivers,
        super._();

  @override
  final XrayAddress? address;
  @override
  final int? port;
  @override
  final int? level;
  @override
  final String? email;
  @override
  final String? id;
  @override
  final VmessSecurity? security;
  @override
  final String? experiments;
  final List<VMessOutboundTarget>? _receivers;
  @override
  @JsonKey(name: 'vnext')
  List<VMessOutboundTarget>? get receivers {
    final value = _receivers;
    if (value == null) return null;
    if (_receivers is EqualUnmodifiableListView) return _receivers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of VMessOutboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VMessOutboundConfigCopyWith<_VMessOutboundConfig> get copyWith =>
      __$VMessOutboundConfigCopyWithImpl<_VMessOutboundConfig>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VMessOutboundConfig &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.security, security) ||
                other.security == security) &&
            (identical(other.experiments, experiments) ||
                other.experiments == experiments) &&
            const DeepCollectionEquality()
                .equals(other._receivers, _receivers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address, port, level, email, id,
      security, experiments, const DeepCollectionEquality().hash(_receivers));

  @override
  String toString() {
    return 'VMessOutboundConfig(address: $address, port: $port, level: $level, email: $email, id: $id, security: $security, experiments: $experiments, receivers: $receivers)';
  }
}

/// @nodoc
abstract mixin class _$VMessOutboundConfigCopyWith<$Res>
    implements $VMessOutboundConfigCopyWith<$Res> {
  factory _$VMessOutboundConfigCopyWith(_VMessOutboundConfig value,
          $Res Function(_VMessOutboundConfig) _then) =
      __$VMessOutboundConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {XrayAddress? address,
      int? port,
      int? level,
      String? email,
      String? id,
      VmessSecurity? security,
      String? experiments,
      @JsonKey(name: 'vnext') List<VMessOutboundTarget>? receivers});
}

/// @nodoc
class __$VMessOutboundConfigCopyWithImpl<$Res>
    implements _$VMessOutboundConfigCopyWith<$Res> {
  __$VMessOutboundConfigCopyWithImpl(this._self, this._then);

  final _VMessOutboundConfig _self;
  final $Res Function(_VMessOutboundConfig) _then;

  /// Create a copy of VMessOutboundConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = freezed,
    Object? port = freezed,
    Object? level = freezed,
    Object? email = freezed,
    Object? id = freezed,
    Object? security = freezed,
    Object? experiments = freezed,
    Object? receivers = freezed,
  }) {
    return _then(_VMessOutboundConfig(
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      security: freezed == security
          ? _self.security
          : security // ignore: cast_nullable_to_non_nullable
              as VmessSecurity?,
      experiments: freezed == experiments
          ? _self.experiments
          : experiments // ignore: cast_nullable_to_non_nullable
              as String?,
      receivers: freezed == receivers
          ? _self._receivers
          : receivers // ignore: cast_nullable_to_non_nullable
              as List<VMessOutboundTarget>?,
    ));
  }
}

/// @nodoc
mixin _$VMessOutboundTarget {
  XrayAddress get address;
  int get port;
  List<VMessUser> get users;

  /// Create a copy of VMessOutboundTarget
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VMessOutboundTargetCopyWith<VMessOutboundTarget> get copyWith =>
      _$VMessOutboundTargetCopyWithImpl<VMessOutboundTarget>(
          this as VMessOutboundTarget, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VMessOutboundTarget &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            const DeepCollectionEquality().equals(other.users, users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, address, port, const DeepCollectionEquality().hash(users));

  @override
  String toString() {
    return 'VMessOutboundTarget(address: $address, port: $port, users: $users)';
  }
}

/// @nodoc
abstract mixin class $VMessOutboundTargetCopyWith<$Res> {
  factory $VMessOutboundTargetCopyWith(
          VMessOutboundTarget value, $Res Function(VMessOutboundTarget) _then) =
      _$VMessOutboundTargetCopyWithImpl;
  @useResult
  $Res call({XrayAddress address, int port, List<VMessUser> users});
}

/// @nodoc
class _$VMessOutboundTargetCopyWithImpl<$Res>
    implements $VMessOutboundTargetCopyWith<$Res> {
  _$VMessOutboundTargetCopyWithImpl(this._self, this._then);

  final VMessOutboundTarget _self;
  final $Res Function(VMessOutboundTarget) _then;

  /// Create a copy of VMessOutboundTarget
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? port = null,
    Object? users = null,
  }) {
    return _then(_self.copyWith(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress,
      port: null == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      users: null == users
          ? _self.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<VMessUser>,
    ));
  }
}

/// Adds pattern-matching-related methods to [VMessOutboundTarget].
extension VMessOutboundTargetPatterns on VMessOutboundTarget {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VMessOutboundTarget value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VMessOutboundTarget() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VMessOutboundTarget value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessOutboundTarget():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VMessOutboundTarget value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessOutboundTarget() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(XrayAddress address, int port, List<VMessUser> users)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VMessOutboundTarget() when $default != null:
        return $default(_that.address, _that.port, _that.users);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(XrayAddress address, int port, List<VMessUser> users)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessOutboundTarget():
        return $default(_that.address, _that.port, _that.users);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(XrayAddress address, int port, List<VMessUser> users)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessOutboundTarget() when $default != null:
        return $default(_that.address, _that.port, _that.users);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _VMessOutboundTarget extends VMessOutboundTarget {
  const _VMessOutboundTarget(
      {required this.address,
      required this.port,
      required final List<VMessUser> users})
      : _users = users,
        super._();

  @override
  final XrayAddress address;
  @override
  final int port;
  final List<VMessUser> _users;
  @override
  List<VMessUser> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  /// Create a copy of VMessOutboundTarget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VMessOutboundTargetCopyWith<_VMessOutboundTarget> get copyWith =>
      __$VMessOutboundTargetCopyWithImpl<_VMessOutboundTarget>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VMessOutboundTarget &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.port, port) || other.port == port) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, address, port, const DeepCollectionEquality().hash(_users));

  @override
  String toString() {
    return 'VMessOutboundTarget(address: $address, port: $port, users: $users)';
  }
}

/// @nodoc
abstract mixin class _$VMessOutboundTargetCopyWith<$Res>
    implements $VMessOutboundTargetCopyWith<$Res> {
  factory _$VMessOutboundTargetCopyWith(_VMessOutboundTarget value,
          $Res Function(_VMessOutboundTarget) _then) =
      __$VMessOutboundTargetCopyWithImpl;
  @override
  @useResult
  $Res call({XrayAddress address, int port, List<VMessUser> users});
}

/// @nodoc
class __$VMessOutboundTargetCopyWithImpl<$Res>
    implements _$VMessOutboundTargetCopyWith<$Res> {
  __$VMessOutboundTargetCopyWithImpl(this._self, this._then);

  final _VMessOutboundTarget _self;
  final $Res Function(_VMessOutboundTarget) _then;

  /// Create a copy of VMessOutboundTarget
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = null,
    Object? port = null,
    Object? users = null,
  }) {
    return _then(_VMessOutboundTarget(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress,
      port: null == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      users: null == users
          ? _self._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<VMessUser>,
    ));
  }
}

/// @nodoc
mixin _$VMessUser {
  String? get email;
  int? get level;
  String get id;
  VmessSecurity? get security;
  String? get experiments;

  /// Create a copy of VMessUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VMessUserCopyWith<VMessUser> get copyWith =>
      _$VMessUserCopyWithImpl<VMessUser>(this as VMessUser, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VMessUser &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.security, security) ||
                other.security == security) &&
            (identical(other.experiments, experiments) ||
                other.experiments == experiments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, level, id, security, experiments);

  @override
  String toString() {
    return 'VMessUser(email: $email, level: $level, id: $id, security: $security, experiments: $experiments)';
  }
}

/// @nodoc
abstract mixin class $VMessUserCopyWith<$Res> {
  factory $VMessUserCopyWith(VMessUser value, $Res Function(VMessUser) _then) =
      _$VMessUserCopyWithImpl;
  @useResult
  $Res call(
      {String? email,
      int? level,
      String id,
      VmessSecurity? security,
      String? experiments});
}

/// @nodoc
class _$VMessUserCopyWithImpl<$Res> implements $VMessUserCopyWith<$Res> {
  _$VMessUserCopyWithImpl(this._self, this._then);

  final VMessUser _self;
  final $Res Function(VMessUser) _then;

  /// Create a copy of VMessUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? level = freezed,
    Object? id = null,
    Object? security = freezed,
    Object? experiments = freezed,
  }) {
    return _then(_self.copyWith(
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      security: freezed == security
          ? _self.security
          : security // ignore: cast_nullable_to_non_nullable
              as VmessSecurity?,
      experiments: freezed == experiments
          ? _self.experiments
          : experiments // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [VMessUser].
extension VMessUserPatterns on VMessUser {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_VMessUser value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VMessUser() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_VMessUser value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessUser():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_VMessUser value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessUser() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String? email, int? level, String id,
            VmessSecurity? security, String? experiments)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VMessUser() when $default != null:
        return $default(_that.email, _that.level, _that.id, _that.security,
            _that.experiments);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? email, int? level, String id,
            VmessSecurity? security, String? experiments)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessUser():
        return $default(_that.email, _that.level, _that.id, _that.security,
            _that.experiments);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String? email, int? level, String id,
            VmessSecurity? security, String? experiments)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VMessUser() when $default != null:
        return $default(_that.email, _that.level, _that.id, _that.security,
            _that.experiments);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _VMessUser extends VMessUser {
  const _VMessUser(
      {this.email,
      this.level,
      required this.id,
      this.security,
      this.experiments})
      : super._();

  @override
  final String? email;
  @override
  final int? level;
  @override
  final String id;
  @override
  final VmessSecurity? security;
  @override
  final String? experiments;

  /// Create a copy of VMessUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VMessUserCopyWith<_VMessUser> get copyWith =>
      __$VMessUserCopyWithImpl<_VMessUser>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VMessUser &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.security, security) ||
                other.security == security) &&
            (identical(other.experiments, experiments) ||
                other.experiments == experiments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, level, id, security, experiments);

  @override
  String toString() {
    return 'VMessUser(email: $email, level: $level, id: $id, security: $security, experiments: $experiments)';
  }
}

/// @nodoc
abstract mixin class _$VMessUserCopyWith<$Res>
    implements $VMessUserCopyWith<$Res> {
  factory _$VMessUserCopyWith(
          _VMessUser value, $Res Function(_VMessUser) _then) =
      __$VMessUserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? email,
      int? level,
      String id,
      VmessSecurity? security,
      String? experiments});
}

/// @nodoc
class __$VMessUserCopyWithImpl<$Res> implements _$VMessUserCopyWith<$Res> {
  __$VMessUserCopyWithImpl(this._self, this._then);

  final _VMessUser _self;
  final $Res Function(_VMessUser) _then;

  /// Create a copy of VMessUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = freezed,
    Object? level = freezed,
    Object? id = null,
    Object? security = freezed,
    Object? experiments = freezed,
  }) {
    return _then(_VMessUser(
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      security: freezed == security
          ? _self.security
          : security // ignore: cast_nullable_to_non_nullable
              as VmessSecurity?,
      experiments: freezed == experiments
          ? _self.experiments
          : experiments // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$WireGuardConfig {
  bool? get noKernelTun;
  String get secretKey;
  List<String>? get address;
  List<WireGuardPeerConfig>? get peers;
  @JsonKey(name: 'mtu')
  int? get mtu;
  List<int>? get reserved;
  XrayTargetStrategy? get domainStrategy;

  /// Create a copy of WireGuardConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WireGuardConfigCopyWith<WireGuardConfig> get copyWith =>
      _$WireGuardConfigCopyWithImpl<WireGuardConfig>(
          this as WireGuardConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WireGuardConfig &&
            (identical(other.noKernelTun, noKernelTun) ||
                other.noKernelTun == noKernelTun) &&
            (identical(other.secretKey, secretKey) ||
                other.secretKey == secretKey) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.peers, peers) &&
            (identical(other.mtu, mtu) || other.mtu == mtu) &&
            const DeepCollectionEquality().equals(other.reserved, reserved) &&
            (identical(other.domainStrategy, domainStrategy) ||
                other.domainStrategy == domainStrategy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      noKernelTun,
      secretKey,
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(peers),
      mtu,
      const DeepCollectionEquality().hash(reserved),
      domainStrategy);

  @override
  String toString() {
    return 'WireGuardConfig(noKernelTun: $noKernelTun, secretKey: $secretKey, address: $address, peers: $peers, mtu: $mtu, reserved: $reserved, domainStrategy: $domainStrategy)';
  }
}

/// @nodoc
abstract mixin class $WireGuardConfigCopyWith<$Res> {
  factory $WireGuardConfigCopyWith(
          WireGuardConfig value, $Res Function(WireGuardConfig) _then) =
      _$WireGuardConfigCopyWithImpl;
  @useResult
  $Res call(
      {bool? noKernelTun,
      String secretKey,
      List<String>? address,
      List<WireGuardPeerConfig>? peers,
      @JsonKey(name: 'mtu') int? mtu,
      List<int>? reserved,
      XrayTargetStrategy? domainStrategy});
}

/// @nodoc
class _$WireGuardConfigCopyWithImpl<$Res>
    implements $WireGuardConfigCopyWith<$Res> {
  _$WireGuardConfigCopyWithImpl(this._self, this._then);

  final WireGuardConfig _self;
  final $Res Function(WireGuardConfig) _then;

  /// Create a copy of WireGuardConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? noKernelTun = freezed,
    Object? secretKey = null,
    Object? address = freezed,
    Object? peers = freezed,
    Object? mtu = freezed,
    Object? reserved = freezed,
    Object? domainStrategy = freezed,
  }) {
    return _then(_self.copyWith(
      noKernelTun: freezed == noKernelTun
          ? _self.noKernelTun
          : noKernelTun // ignore: cast_nullable_to_non_nullable
              as bool?,
      secretKey: null == secretKey
          ? _self.secretKey
          : secretKey // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      peers: freezed == peers
          ? _self.peers
          : peers // ignore: cast_nullable_to_non_nullable
              as List<WireGuardPeerConfig>?,
      mtu: freezed == mtu
          ? _self.mtu
          : mtu // ignore: cast_nullable_to_non_nullable
              as int?,
      reserved: freezed == reserved
          ? _self.reserved
          : reserved // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      domainStrategy: freezed == domainStrategy
          ? _self.domainStrategy
          : domainStrategy // ignore: cast_nullable_to_non_nullable
              as XrayTargetStrategy?,
    ));
  }
}

/// Adds pattern-matching-related methods to [WireGuardConfig].
extension WireGuardConfigPatterns on WireGuardConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WireGuardConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WireGuardConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WireGuardConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WireGuardConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_WireGuardConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WireGuardConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            bool? noKernelTun,
            String secretKey,
            List<String>? address,
            List<WireGuardPeerConfig>? peers,
            @JsonKey(name: 'mtu') int? mtu,
            List<int>? reserved,
            XrayTargetStrategy? domainStrategy)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WireGuardConfig() when $default != null:
        return $default(_that.noKernelTun, _that.secretKey, _that.address,
            _that.peers, _that.mtu, _that.reserved, _that.domainStrategy);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            bool? noKernelTun,
            String secretKey,
            List<String>? address,
            List<WireGuardPeerConfig>? peers,
            @JsonKey(name: 'mtu') int? mtu,
            List<int>? reserved,
            XrayTargetStrategy? domainStrategy)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WireGuardConfig():
        return $default(_that.noKernelTun, _that.secretKey, _that.address,
            _that.peers, _that.mtu, _that.reserved, _that.domainStrategy);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            bool? noKernelTun,
            String secretKey,
            List<String>? address,
            List<WireGuardPeerConfig>? peers,
            @JsonKey(name: 'mtu') int? mtu,
            List<int>? reserved,
            XrayTargetStrategy? domainStrategy)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WireGuardConfig() when $default != null:
        return $default(_that.noKernelTun, _that.secretKey, _that.address,
            _that.peers, _that.mtu, _that.reserved, _that.domainStrategy);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _WireGuardConfig extends WireGuardConfig {
  const _WireGuardConfig(
      {this.noKernelTun,
      required this.secretKey,
      final List<String>? address,
      final List<WireGuardPeerConfig>? peers,
      @JsonKey(name: 'mtu') this.mtu,
      final List<int>? reserved,
      this.domainStrategy})
      : _address = address,
        _peers = peers,
        _reserved = reserved,
        super._();

  @override
  final bool? noKernelTun;
  @override
  final String secretKey;
  final List<String>? _address;
  @override
  List<String>? get address {
    final value = _address;
    if (value == null) return null;
    if (_address is EqualUnmodifiableListView) return _address;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<WireGuardPeerConfig>? _peers;
  @override
  List<WireGuardPeerConfig>? get peers {
    final value = _peers;
    if (value == null) return null;
    if (_peers is EqualUnmodifiableListView) return _peers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'mtu')
  final int? mtu;
  final List<int>? _reserved;
  @override
  List<int>? get reserved {
    final value = _reserved;
    if (value == null) return null;
    if (_reserved is EqualUnmodifiableListView) return _reserved;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final XrayTargetStrategy? domainStrategy;

  /// Create a copy of WireGuardConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WireGuardConfigCopyWith<_WireGuardConfig> get copyWith =>
      __$WireGuardConfigCopyWithImpl<_WireGuardConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WireGuardConfig &&
            (identical(other.noKernelTun, noKernelTun) ||
                other.noKernelTun == noKernelTun) &&
            (identical(other.secretKey, secretKey) ||
                other.secretKey == secretKey) &&
            const DeepCollectionEquality().equals(other._address, _address) &&
            const DeepCollectionEquality().equals(other._peers, _peers) &&
            (identical(other.mtu, mtu) || other.mtu == mtu) &&
            const DeepCollectionEquality().equals(other._reserved, _reserved) &&
            (identical(other.domainStrategy, domainStrategy) ||
                other.domainStrategy == domainStrategy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      noKernelTun,
      secretKey,
      const DeepCollectionEquality().hash(_address),
      const DeepCollectionEquality().hash(_peers),
      mtu,
      const DeepCollectionEquality().hash(_reserved),
      domainStrategy);

  @override
  String toString() {
    return 'WireGuardConfig(noKernelTun: $noKernelTun, secretKey: $secretKey, address: $address, peers: $peers, mtu: $mtu, reserved: $reserved, domainStrategy: $domainStrategy)';
  }
}

/// @nodoc
abstract mixin class _$WireGuardConfigCopyWith<$Res>
    implements $WireGuardConfigCopyWith<$Res> {
  factory _$WireGuardConfigCopyWith(
          _WireGuardConfig value, $Res Function(_WireGuardConfig) _then) =
      __$WireGuardConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool? noKernelTun,
      String secretKey,
      List<String>? address,
      List<WireGuardPeerConfig>? peers,
      @JsonKey(name: 'mtu') int? mtu,
      List<int>? reserved,
      XrayTargetStrategy? domainStrategy});
}

/// @nodoc
class __$WireGuardConfigCopyWithImpl<$Res>
    implements _$WireGuardConfigCopyWith<$Res> {
  __$WireGuardConfigCopyWithImpl(this._self, this._then);

  final _WireGuardConfig _self;
  final $Res Function(_WireGuardConfig) _then;

  /// Create a copy of WireGuardConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? noKernelTun = freezed,
    Object? secretKey = null,
    Object? address = freezed,
    Object? peers = freezed,
    Object? mtu = freezed,
    Object? reserved = freezed,
    Object? domainStrategy = freezed,
  }) {
    return _then(_WireGuardConfig(
      noKernelTun: freezed == noKernelTun
          ? _self.noKernelTun
          : noKernelTun // ignore: cast_nullable_to_non_nullable
              as bool?,
      secretKey: null == secretKey
          ? _self.secretKey
          : secretKey // ignore: cast_nullable_to_non_nullable
              as String,
      address: freezed == address
          ? _self._address
          : address // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      peers: freezed == peers
          ? _self._peers
          : peers // ignore: cast_nullable_to_non_nullable
              as List<WireGuardPeerConfig>?,
      mtu: freezed == mtu
          ? _self.mtu
          : mtu // ignore: cast_nullable_to_non_nullable
              as int?,
      reserved: freezed == reserved
          ? _self._reserved
          : reserved // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      domainStrategy: freezed == domainStrategy
          ? _self.domainStrategy
          : domainStrategy // ignore: cast_nullable_to_non_nullable
              as XrayTargetStrategy?,
    ));
  }
}

/// @nodoc
mixin _$WireGuardPeerConfig {
  String? get publicKey;
  String? get preSharedKey;
  String? get endpoint;
  int? get keepAlive;
  List<String>? get allowedIPs;
  int? get level;
  String? get email;

  /// Create a copy of WireGuardPeerConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WireGuardPeerConfigCopyWith<WireGuardPeerConfig> get copyWith =>
      _$WireGuardPeerConfigCopyWithImpl<WireGuardPeerConfig>(
          this as WireGuardPeerConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WireGuardPeerConfig &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.preSharedKey, preSharedKey) ||
                other.preSharedKey == preSharedKey) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint) &&
            (identical(other.keepAlive, keepAlive) ||
                other.keepAlive == keepAlive) &&
            const DeepCollectionEquality()
                .equals(other.allowedIPs, allowedIPs) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      publicKey,
      preSharedKey,
      endpoint,
      keepAlive,
      const DeepCollectionEquality().hash(allowedIPs),
      level,
      email);

  @override
  String toString() {
    return 'WireGuardPeerConfig(publicKey: $publicKey, preSharedKey: $preSharedKey, endpoint: $endpoint, keepAlive: $keepAlive, allowedIPs: $allowedIPs, level: $level, email: $email)';
  }
}

/// @nodoc
abstract mixin class $WireGuardPeerConfigCopyWith<$Res> {
  factory $WireGuardPeerConfigCopyWith(
          WireGuardPeerConfig value, $Res Function(WireGuardPeerConfig) _then) =
      _$WireGuardPeerConfigCopyWithImpl;
  @useResult
  $Res call(
      {String? publicKey,
      String? preSharedKey,
      String? endpoint,
      int? keepAlive,
      List<String>? allowedIPs,
      int? level,
      String? email});
}

/// @nodoc
class _$WireGuardPeerConfigCopyWithImpl<$Res>
    implements $WireGuardPeerConfigCopyWith<$Res> {
  _$WireGuardPeerConfigCopyWithImpl(this._self, this._then);

  final WireGuardPeerConfig _self;
  final $Res Function(WireGuardPeerConfig) _then;

  /// Create a copy of WireGuardPeerConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = freezed,
    Object? preSharedKey = freezed,
    Object? endpoint = freezed,
    Object? keepAlive = freezed,
    Object? allowedIPs = freezed,
    Object? level = freezed,
    Object? email = freezed,
  }) {
    return _then(_self.copyWith(
      publicKey: freezed == publicKey
          ? _self.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String?,
      preSharedKey: freezed == preSharedKey
          ? _self.preSharedKey
          : preSharedKey // ignore: cast_nullable_to_non_nullable
              as String?,
      endpoint: freezed == endpoint
          ? _self.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String?,
      keepAlive: freezed == keepAlive
          ? _self.keepAlive
          : keepAlive // ignore: cast_nullable_to_non_nullable
              as int?,
      allowedIPs: freezed == allowedIPs
          ? _self.allowedIPs
          : allowedIPs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [WireGuardPeerConfig].
extension WireGuardPeerConfigPatterns on WireGuardPeerConfig {
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

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_WireGuardPeerConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WireGuardPeerConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_WireGuardPeerConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WireGuardPeerConfig():
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_WireGuardPeerConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WireGuardPeerConfig() when $default != null:
        return $default(_that);
      case _:
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

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String? publicKey,
            String? preSharedKey,
            String? endpoint,
            int? keepAlive,
            List<String>? allowedIPs,
            int? level,
            String? email)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WireGuardPeerConfig() when $default != null:
        return $default(_that.publicKey, _that.preSharedKey, _that.endpoint,
            _that.keepAlive, _that.allowedIPs, _that.level, _that.email);
      case _:
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

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String? publicKey, String? preSharedKey, String? endpoint,
            int? keepAlive, List<String>? allowedIPs, int? level, String? email)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WireGuardPeerConfig():
        return $default(_that.publicKey, _that.preSharedKey, _that.endpoint,
            _that.keepAlive, _that.allowedIPs, _that.level, _that.email);
      case _:
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

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String? publicKey,
            String? preSharedKey,
            String? endpoint,
            int? keepAlive,
            List<String>? allowedIPs,
            int? level,
            String? email)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WireGuardPeerConfig() when $default != null:
        return $default(_that.publicKey, _that.preSharedKey, _that.endpoint,
            _that.keepAlive, _that.allowedIPs, _that.level, _that.email);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _WireGuardPeerConfig extends WireGuardPeerConfig {
  const _WireGuardPeerConfig(
      {this.publicKey,
      this.preSharedKey,
      this.endpoint,
      this.keepAlive,
      final List<String>? allowedIPs,
      this.level,
      this.email})
      : _allowedIPs = allowedIPs,
        super._();

  @override
  final String? publicKey;
  @override
  final String? preSharedKey;
  @override
  final String? endpoint;
  @override
  final int? keepAlive;
  final List<String>? _allowedIPs;
  @override
  List<String>? get allowedIPs {
    final value = _allowedIPs;
    if (value == null) return null;
    if (_allowedIPs is EqualUnmodifiableListView) return _allowedIPs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? level;
  @override
  final String? email;

  /// Create a copy of WireGuardPeerConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WireGuardPeerConfigCopyWith<_WireGuardPeerConfig> get copyWith =>
      __$WireGuardPeerConfigCopyWithImpl<_WireGuardPeerConfig>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WireGuardPeerConfig &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.preSharedKey, preSharedKey) ||
                other.preSharedKey == preSharedKey) &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint) &&
            (identical(other.keepAlive, keepAlive) ||
                other.keepAlive == keepAlive) &&
            const DeepCollectionEquality()
                .equals(other._allowedIPs, _allowedIPs) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      publicKey,
      preSharedKey,
      endpoint,
      keepAlive,
      const DeepCollectionEquality().hash(_allowedIPs),
      level,
      email);

  @override
  String toString() {
    return 'WireGuardPeerConfig(publicKey: $publicKey, preSharedKey: $preSharedKey, endpoint: $endpoint, keepAlive: $keepAlive, allowedIPs: $allowedIPs, level: $level, email: $email)';
  }
}

/// @nodoc
abstract mixin class _$WireGuardPeerConfigCopyWith<$Res>
    implements $WireGuardPeerConfigCopyWith<$Res> {
  factory _$WireGuardPeerConfigCopyWith(_WireGuardPeerConfig value,
          $Res Function(_WireGuardPeerConfig) _then) =
      __$WireGuardPeerConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? publicKey,
      String? preSharedKey,
      String? endpoint,
      int? keepAlive,
      List<String>? allowedIPs,
      int? level,
      String? email});
}

/// @nodoc
class __$WireGuardPeerConfigCopyWithImpl<$Res>
    implements _$WireGuardPeerConfigCopyWith<$Res> {
  __$WireGuardPeerConfigCopyWithImpl(this._self, this._then);

  final _WireGuardPeerConfig _self;
  final $Res Function(_WireGuardPeerConfig) _then;

  /// Create a copy of WireGuardPeerConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? publicKey = freezed,
    Object? preSharedKey = freezed,
    Object? endpoint = freezed,
    Object? keepAlive = freezed,
    Object? allowedIPs = freezed,
    Object? level = freezed,
    Object? email = freezed,
  }) {
    return _then(_WireGuardPeerConfig(
      publicKey: freezed == publicKey
          ? _self.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String?,
      preSharedKey: freezed == preSharedKey
          ? _self.preSharedKey
          : preSharedKey // ignore: cast_nullable_to_non_nullable
              as String?,
      endpoint: freezed == endpoint
          ? _self.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String?,
      keepAlive: freezed == keepAlive
          ? _self.keepAlive
          : keepAlive // ignore: cast_nullable_to_non_nullable
              as int?,
      allowedIPs: freezed == allowedIPs
          ? _self._allowedIPs
          : allowedIPs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on

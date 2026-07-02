// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'apps.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$APIConfig {
  String get tag;
  String? get listen;
  List<ApiService>? get services;

  /// Create a copy of APIConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $APIConfigCopyWith<APIConfig> get copyWith =>
      _$APIConfigCopyWithImpl<APIConfig>(this as APIConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is APIConfig &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.listen, listen) || other.listen == listen) &&
            const DeepCollectionEquality().equals(other.services, services));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, tag, listen, const DeepCollectionEquality().hash(services));

  @override
  String toString() {
    return 'APIConfig(tag: $tag, listen: $listen, services: $services)';
  }
}

/// @nodoc
abstract mixin class $APIConfigCopyWith<$Res> {
  factory $APIConfigCopyWith(APIConfig value, $Res Function(APIConfig) _then) =
      _$APIConfigCopyWithImpl;
  @useResult
  $Res call({String tag, String? listen, List<ApiService>? services});
}

/// @nodoc
class _$APIConfigCopyWithImpl<$Res> implements $APIConfigCopyWith<$Res> {
  _$APIConfigCopyWithImpl(this._self, this._then);

  final APIConfig _self;
  final $Res Function(APIConfig) _then;

  /// Create a copy of APIConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? listen = freezed,
    Object? services = freezed,
  }) {
    return _then(_self.copyWith(
      tag: null == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      listen: freezed == listen
          ? _self.listen
          : listen // ignore: cast_nullable_to_non_nullable
              as String?,
      services: freezed == services
          ? _self.services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ApiService>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [APIConfig].
extension APIConfigPatterns on APIConfig {
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
    TResult Function(_APIConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _APIConfig() when $default != null:
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
    TResult Function(_APIConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _APIConfig():
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
    TResult? Function(_APIConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _APIConfig() when $default != null:
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
    TResult Function(String tag, String? listen, List<ApiService>? services)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _APIConfig() when $default != null:
        return $default(_that.tag, _that.listen, _that.services);
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
    TResult Function(String tag, String? listen, List<ApiService>? services)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _APIConfig():
        return $default(_that.tag, _that.listen, _that.services);
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
    TResult? Function(String tag, String? listen, List<ApiService>? services)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _APIConfig() when $default != null:
        return $default(_that.tag, _that.listen, _that.services);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _APIConfig extends APIConfig {
  const _APIConfig(
      {required this.tag, this.listen, final List<ApiService>? services})
      : _services = services,
        super._();

  @override
  final String tag;
  @override
  final String? listen;
  final List<ApiService>? _services;
  @override
  List<ApiService>? get services {
    final value = _services;
    if (value == null) return null;
    if (_services is EqualUnmodifiableListView) return _services;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of APIConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$APIConfigCopyWith<_APIConfig> get copyWith =>
      __$APIConfigCopyWithImpl<_APIConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _APIConfig &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.listen, listen) || other.listen == listen) &&
            const DeepCollectionEquality().equals(other._services, _services));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, tag, listen, const DeepCollectionEquality().hash(_services));

  @override
  String toString() {
    return 'APIConfig(tag: $tag, listen: $listen, services: $services)';
  }
}

/// @nodoc
abstract mixin class _$APIConfigCopyWith<$Res>
    implements $APIConfigCopyWith<$Res> {
  factory _$APIConfigCopyWith(
          _APIConfig value, $Res Function(_APIConfig) _then) =
      __$APIConfigCopyWithImpl;
  @override
  @useResult
  $Res call({String tag, String? listen, List<ApiService>? services});
}

/// @nodoc
class __$APIConfigCopyWithImpl<$Res> implements _$APIConfigCopyWith<$Res> {
  __$APIConfigCopyWithImpl(this._self, this._then);

  final _APIConfig _self;
  final $Res Function(_APIConfig) _then;

  /// Create a copy of APIConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tag = null,
    Object? listen = freezed,
    Object? services = freezed,
  }) {
    return _then(_APIConfig(
      tag: null == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      listen: freezed == listen
          ? _self.listen
          : listen // ignore: cast_nullable_to_non_nullable
              as String?,
      services: freezed == services
          ? _self._services
          : services // ignore: cast_nullable_to_non_nullable
              as List<ApiService>?,
    ));
  }
}

/// @nodoc
mixin _$BalancingRule {
  String get tag;
  @JsonKey(name: 'selector')
  XrayStringList get selectors;
  StrategyConfig? get strategy;
  String? get fallbackTag;

  /// Create a copy of BalancingRule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BalancingRuleCopyWith<BalancingRule> get copyWith =>
      _$BalancingRuleCopyWithImpl<BalancingRule>(
          this as BalancingRule, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BalancingRule &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.selectors, selectors) ||
                other.selectors == selectors) &&
            (identical(other.strategy, strategy) ||
                other.strategy == strategy) &&
            (identical(other.fallbackTag, fallbackTag) ||
                other.fallbackTag == fallbackTag));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, tag, selectors, strategy, fallbackTag);

  @override
  String toString() {
    return 'BalancingRule(tag: $tag, selectors: $selectors, strategy: $strategy, fallbackTag: $fallbackTag)';
  }
}

/// @nodoc
abstract mixin class $BalancingRuleCopyWith<$Res> {
  factory $BalancingRuleCopyWith(
          BalancingRule value, $Res Function(BalancingRule) _then) =
      _$BalancingRuleCopyWithImpl;
  @useResult
  $Res call(
      {String tag,
      @JsonKey(name: 'selector') XrayStringList selectors,
      StrategyConfig? strategy,
      String? fallbackTag});

  $StrategyConfigCopyWith<$Res>? get strategy;
}

/// @nodoc
class _$BalancingRuleCopyWithImpl<$Res>
    implements $BalancingRuleCopyWith<$Res> {
  _$BalancingRuleCopyWithImpl(this._self, this._then);

  final BalancingRule _self;
  final $Res Function(BalancingRule) _then;

  /// Create a copy of BalancingRule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = null,
    Object? selectors = null,
    Object? strategy = freezed,
    Object? fallbackTag = freezed,
  }) {
    return _then(_self.copyWith(
      tag: null == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      selectors: null == selectors
          ? _self.selectors
          : selectors // ignore: cast_nullable_to_non_nullable
              as XrayStringList,
      strategy: freezed == strategy
          ? _self.strategy
          : strategy // ignore: cast_nullable_to_non_nullable
              as StrategyConfig?,
      fallbackTag: freezed == fallbackTag
          ? _self.fallbackTag
          : fallbackTag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of BalancingRule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StrategyConfigCopyWith<$Res>? get strategy {
    if (_self.strategy == null) {
      return null;
    }

    return $StrategyConfigCopyWith<$Res>(_self.strategy!, (value) {
      return _then(_self.copyWith(strategy: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BalancingRule].
extension BalancingRulePatterns on BalancingRule {
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
    TResult Function(_BalancingRule value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BalancingRule() when $default != null:
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
    TResult Function(_BalancingRule value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BalancingRule():
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
    TResult? Function(_BalancingRule value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BalancingRule() when $default != null:
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
            String tag,
            @JsonKey(name: 'selector') XrayStringList selectors,
            StrategyConfig? strategy,
            String? fallbackTag)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BalancingRule() when $default != null:
        return $default(
            _that.tag, _that.selectors, _that.strategy, _that.fallbackTag);
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
            String tag,
            @JsonKey(name: 'selector') XrayStringList selectors,
            StrategyConfig? strategy,
            String? fallbackTag)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BalancingRule():
        return $default(
            _that.tag, _that.selectors, _that.strategy, _that.fallbackTag);
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
            String tag,
            @JsonKey(name: 'selector') XrayStringList selectors,
            StrategyConfig? strategy,
            String? fallbackTag)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BalancingRule() when $default != null:
        return $default(
            _that.tag, _that.selectors, _that.strategy, _that.fallbackTag);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BalancingRule extends BalancingRule {
  const _BalancingRule(
      {required this.tag,
      @JsonKey(name: 'selector') required this.selectors,
      this.strategy,
      this.fallbackTag})
      : super._();

  @override
  final String tag;
  @override
  @JsonKey(name: 'selector')
  final XrayStringList selectors;
  @override
  final StrategyConfig? strategy;
  @override
  final String? fallbackTag;

  /// Create a copy of BalancingRule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BalancingRuleCopyWith<_BalancingRule> get copyWith =>
      __$BalancingRuleCopyWithImpl<_BalancingRule>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BalancingRule &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.selectors, selectors) ||
                other.selectors == selectors) &&
            (identical(other.strategy, strategy) ||
                other.strategy == strategy) &&
            (identical(other.fallbackTag, fallbackTag) ||
                other.fallbackTag == fallbackTag));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, tag, selectors, strategy, fallbackTag);

  @override
  String toString() {
    return 'BalancingRule(tag: $tag, selectors: $selectors, strategy: $strategy, fallbackTag: $fallbackTag)';
  }
}

/// @nodoc
abstract mixin class _$BalancingRuleCopyWith<$Res>
    implements $BalancingRuleCopyWith<$Res> {
  factory _$BalancingRuleCopyWith(
          _BalancingRule value, $Res Function(_BalancingRule) _then) =
      __$BalancingRuleCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String tag,
      @JsonKey(name: 'selector') XrayStringList selectors,
      StrategyConfig? strategy,
      String? fallbackTag});

  @override
  $StrategyConfigCopyWith<$Res>? get strategy;
}

/// @nodoc
class __$BalancingRuleCopyWithImpl<$Res>
    implements _$BalancingRuleCopyWith<$Res> {
  __$BalancingRuleCopyWithImpl(this._self, this._then);

  final _BalancingRule _self;
  final $Res Function(_BalancingRule) _then;

  /// Create a copy of BalancingRule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tag = null,
    Object? selectors = null,
    Object? strategy = freezed,
    Object? fallbackTag = freezed,
  }) {
    return _then(_BalancingRule(
      tag: null == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      selectors: null == selectors
          ? _self.selectors
          : selectors // ignore: cast_nullable_to_non_nullable
              as XrayStringList,
      strategy: freezed == strategy
          ? _self.strategy
          : strategy // ignore: cast_nullable_to_non_nullable
              as StrategyConfig?,
      fallbackTag: freezed == fallbackTag
          ? _self.fallbackTag
          : fallbackTag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of BalancingRule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StrategyConfigCopyWith<$Res>? get strategy {
    if (_self.strategy == null) {
      return null;
    }

    return $StrategyConfigCopyWith<$Res>(_self.strategy!, (value) {
      return _then(_self.copyWith(strategy: value));
    });
  }
}

/// @nodoc
mixin _$BridgeConfig {
  String? get tag;
  String? get domain;

  /// Create a copy of BridgeConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BridgeConfigCopyWith<BridgeConfig> get copyWith =>
      _$BridgeConfigCopyWithImpl<BridgeConfig>(
          this as BridgeConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BridgeConfig &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.domain, domain) || other.domain == domain));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag, domain);

  @override
  String toString() {
    return 'BridgeConfig(tag: $tag, domain: $domain)';
  }
}

/// @nodoc
abstract mixin class $BridgeConfigCopyWith<$Res> {
  factory $BridgeConfigCopyWith(
          BridgeConfig value, $Res Function(BridgeConfig) _then) =
      _$BridgeConfigCopyWithImpl;
  @useResult
  $Res call({String? tag, String? domain});
}

/// @nodoc
class _$BridgeConfigCopyWithImpl<$Res> implements $BridgeConfigCopyWith<$Res> {
  _$BridgeConfigCopyWithImpl(this._self, this._then);

  final BridgeConfig _self;
  final $Res Function(BridgeConfig) _then;

  /// Create a copy of BridgeConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = freezed,
    Object? domain = freezed,
  }) {
    return _then(_self.copyWith(
      tag: freezed == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _self.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [BridgeConfig].
extension BridgeConfigPatterns on BridgeConfig {
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
    TResult Function(_BridgeConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BridgeConfig() when $default != null:
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
    TResult Function(_BridgeConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BridgeConfig():
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
    TResult? Function(_BridgeConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BridgeConfig() when $default != null:
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
    TResult Function(String? tag, String? domain)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BridgeConfig() when $default != null:
        return $default(_that.tag, _that.domain);
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
    TResult Function(String? tag, String? domain) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BridgeConfig():
        return $default(_that.tag, _that.domain);
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
    TResult? Function(String? tag, String? domain)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BridgeConfig() when $default != null:
        return $default(_that.tag, _that.domain);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BridgeConfig extends BridgeConfig {
  const _BridgeConfig({this.tag, this.domain}) : super._();

  @override
  final String? tag;
  @override
  final String? domain;

  /// Create a copy of BridgeConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BridgeConfigCopyWith<_BridgeConfig> get copyWith =>
      __$BridgeConfigCopyWithImpl<_BridgeConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BridgeConfig &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.domain, domain) || other.domain == domain));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag, domain);

  @override
  String toString() {
    return 'BridgeConfig(tag: $tag, domain: $domain)';
  }
}

/// @nodoc
abstract mixin class _$BridgeConfigCopyWith<$Res>
    implements $BridgeConfigCopyWith<$Res> {
  factory _$BridgeConfigCopyWith(
          _BridgeConfig value, $Res Function(_BridgeConfig) _then) =
      __$BridgeConfigCopyWithImpl;
  @override
  @useResult
  $Res call({String? tag, String? domain});
}

/// @nodoc
class __$BridgeConfigCopyWithImpl<$Res>
    implements _$BridgeConfigCopyWith<$Res> {
  __$BridgeConfigCopyWithImpl(this._self, this._then);

  final _BridgeConfig _self;
  final $Res Function(_BridgeConfig) _then;

  /// Create a copy of BridgeConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tag = freezed,
    Object? domain = freezed,
  }) {
    return _then(_BridgeConfig(
      tag: freezed == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _self.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$BurstObservatoryConfig {
  List<String>? get subjectSelector;
  @JsonKey(name: 'pingConfig')
  HealthCheckSettings get healthCheck;

  /// Create a copy of BurstObservatoryConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $BurstObservatoryConfigCopyWith<BurstObservatoryConfig> get copyWith =>
      _$BurstObservatoryConfigCopyWithImpl<BurstObservatoryConfig>(
          this as BurstObservatoryConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BurstObservatoryConfig &&
            const DeepCollectionEquality()
                .equals(other.subjectSelector, subjectSelector) &&
            (identical(other.healthCheck, healthCheck) ||
                other.healthCheck == healthCheck));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(subjectSelector), healthCheck);

  @override
  String toString() {
    return 'BurstObservatoryConfig(subjectSelector: $subjectSelector, healthCheck: $healthCheck)';
  }
}

/// @nodoc
abstract mixin class $BurstObservatoryConfigCopyWith<$Res> {
  factory $BurstObservatoryConfigCopyWith(BurstObservatoryConfig value,
          $Res Function(BurstObservatoryConfig) _then) =
      _$BurstObservatoryConfigCopyWithImpl;
  @useResult
  $Res call(
      {List<String>? subjectSelector,
      @JsonKey(name: 'pingConfig') HealthCheckSettings healthCheck});

  $HealthCheckSettingsCopyWith<$Res> get healthCheck;
}

/// @nodoc
class _$BurstObservatoryConfigCopyWithImpl<$Res>
    implements $BurstObservatoryConfigCopyWith<$Res> {
  _$BurstObservatoryConfigCopyWithImpl(this._self, this._then);

  final BurstObservatoryConfig _self;
  final $Res Function(BurstObservatoryConfig) _then;

  /// Create a copy of BurstObservatoryConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectSelector = freezed,
    Object? healthCheck = null,
  }) {
    return _then(_self.copyWith(
      subjectSelector: freezed == subjectSelector
          ? _self.subjectSelector
          : subjectSelector // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      healthCheck: null == healthCheck
          ? _self.healthCheck
          : healthCheck // ignore: cast_nullable_to_non_nullable
              as HealthCheckSettings,
    ));
  }

  /// Create a copy of BurstObservatoryConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HealthCheckSettingsCopyWith<$Res> get healthCheck {
    return $HealthCheckSettingsCopyWith<$Res>(_self.healthCheck, (value) {
      return _then(_self.copyWith(healthCheck: value));
    });
  }
}

/// Adds pattern-matching-related methods to [BurstObservatoryConfig].
extension BurstObservatoryConfigPatterns on BurstObservatoryConfig {
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
    TResult Function(_BurstObservatoryConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BurstObservatoryConfig() when $default != null:
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
    TResult Function(_BurstObservatoryConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BurstObservatoryConfig():
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
    TResult? Function(_BurstObservatoryConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BurstObservatoryConfig() when $default != null:
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
    TResult Function(List<String>? subjectSelector,
            @JsonKey(name: 'pingConfig') HealthCheckSettings healthCheck)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _BurstObservatoryConfig() when $default != null:
        return $default(_that.subjectSelector, _that.healthCheck);
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
    TResult Function(List<String>? subjectSelector,
            @JsonKey(name: 'pingConfig') HealthCheckSettings healthCheck)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BurstObservatoryConfig():
        return $default(_that.subjectSelector, _that.healthCheck);
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
    TResult? Function(List<String>? subjectSelector,
            @JsonKey(name: 'pingConfig') HealthCheckSettings healthCheck)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _BurstObservatoryConfig() when $default != null:
        return $default(_that.subjectSelector, _that.healthCheck);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _BurstObservatoryConfig extends BurstObservatoryConfig {
  const _BurstObservatoryConfig(
      {final List<String>? subjectSelector,
      @JsonKey(name: 'pingConfig') required this.healthCheck})
      : _subjectSelector = subjectSelector,
        super._();

  final List<String>? _subjectSelector;
  @override
  List<String>? get subjectSelector {
    final value = _subjectSelector;
    if (value == null) return null;
    if (_subjectSelector is EqualUnmodifiableListView) return _subjectSelector;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'pingConfig')
  final HealthCheckSettings healthCheck;

  /// Create a copy of BurstObservatoryConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$BurstObservatoryConfigCopyWith<_BurstObservatoryConfig> get copyWith =>
      __$BurstObservatoryConfigCopyWithImpl<_BurstObservatoryConfig>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BurstObservatoryConfig &&
            const DeepCollectionEquality()
                .equals(other._subjectSelector, _subjectSelector) &&
            (identical(other.healthCheck, healthCheck) ||
                other.healthCheck == healthCheck));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_subjectSelector), healthCheck);

  @override
  String toString() {
    return 'BurstObservatoryConfig(subjectSelector: $subjectSelector, healthCheck: $healthCheck)';
  }
}

/// @nodoc
abstract mixin class _$BurstObservatoryConfigCopyWith<$Res>
    implements $BurstObservatoryConfigCopyWith<$Res> {
  factory _$BurstObservatoryConfigCopyWith(_BurstObservatoryConfig value,
          $Res Function(_BurstObservatoryConfig) _then) =
      __$BurstObservatoryConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<String>? subjectSelector,
      @JsonKey(name: 'pingConfig') HealthCheckSettings healthCheck});

  @override
  $HealthCheckSettingsCopyWith<$Res> get healthCheck;
}

/// @nodoc
class __$BurstObservatoryConfigCopyWithImpl<$Res>
    implements _$BurstObservatoryConfigCopyWith<$Res> {
  __$BurstObservatoryConfigCopyWithImpl(this._self, this._then);

  final _BurstObservatoryConfig _self;
  final $Res Function(_BurstObservatoryConfig) _then;

  /// Create a copy of BurstObservatoryConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? subjectSelector = freezed,
    Object? healthCheck = null,
  }) {
    return _then(_BurstObservatoryConfig(
      subjectSelector: freezed == subjectSelector
          ? _self._subjectSelector
          : subjectSelector // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      healthCheck: null == healthCheck
          ? _self.healthCheck
          : healthCheck // ignore: cast_nullable_to_non_nullable
              as HealthCheckSettings,
    ));
  }

  /// Create a copy of BurstObservatoryConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HealthCheckSettingsCopyWith<$Res> get healthCheck {
    return $HealthCheckSettingsCopyWith<$Res>(_self.healthCheck, (value) {
      return _then(_self.copyWith(healthCheck: value));
    });
  }
}

/// @nodoc
mixin _$DNSConfig {
  List<NameServerConfig>? get servers;
  HostsWrapper? get hosts;
  XrayAddress? get clientIp;
  String? get tag;
  DnsQueryStrategy? get queryStrategy;
  bool? get disableCache;
  bool? get serveStale;
  int? get serveExpiredTTL;
  bool? get disableFallback;
  bool? get disableFallbackIfMatch;
  bool? get enableParallelQuery;
  bool? get useSystemHosts;

  /// Create a copy of DNSConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DNSConfigCopyWith<DNSConfig> get copyWith =>
      _$DNSConfigCopyWithImpl<DNSConfig>(this as DNSConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DNSConfig &&
            const DeepCollectionEquality().equals(other.servers, servers) &&
            (identical(other.hosts, hosts) || other.hosts == hosts) &&
            (identical(other.clientIp, clientIp) ||
                other.clientIp == clientIp) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.queryStrategy, queryStrategy) ||
                other.queryStrategy == queryStrategy) &&
            (identical(other.disableCache, disableCache) ||
                other.disableCache == disableCache) &&
            (identical(other.serveStale, serveStale) ||
                other.serveStale == serveStale) &&
            (identical(other.serveExpiredTTL, serveExpiredTTL) ||
                other.serveExpiredTTL == serveExpiredTTL) &&
            (identical(other.disableFallback, disableFallback) ||
                other.disableFallback == disableFallback) &&
            (identical(other.disableFallbackIfMatch, disableFallbackIfMatch) ||
                other.disableFallbackIfMatch == disableFallbackIfMatch) &&
            (identical(other.enableParallelQuery, enableParallelQuery) ||
                other.enableParallelQuery == enableParallelQuery) &&
            (identical(other.useSystemHosts, useSystemHosts) ||
                other.useSystemHosts == useSystemHosts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(servers),
      hosts,
      clientIp,
      tag,
      queryStrategy,
      disableCache,
      serveStale,
      serveExpiredTTL,
      disableFallback,
      disableFallbackIfMatch,
      enableParallelQuery,
      useSystemHosts);

  @override
  String toString() {
    return 'DNSConfig(servers: $servers, hosts: $hosts, clientIp: $clientIp, tag: $tag, queryStrategy: $queryStrategy, disableCache: $disableCache, serveStale: $serveStale, serveExpiredTTL: $serveExpiredTTL, disableFallback: $disableFallback, disableFallbackIfMatch: $disableFallbackIfMatch, enableParallelQuery: $enableParallelQuery, useSystemHosts: $useSystemHosts)';
  }
}

/// @nodoc
abstract mixin class $DNSConfigCopyWith<$Res> {
  factory $DNSConfigCopyWith(DNSConfig value, $Res Function(DNSConfig) _then) =
      _$DNSConfigCopyWithImpl;
  @useResult
  $Res call(
      {List<NameServerConfig>? servers,
      HostsWrapper? hosts,
      XrayAddress? clientIp,
      String? tag,
      DnsQueryStrategy? queryStrategy,
      bool? disableCache,
      bool? serveStale,
      int? serveExpiredTTL,
      bool? disableFallback,
      bool? disableFallbackIfMatch,
      bool? enableParallelQuery,
      bool? useSystemHosts});

  $HostsWrapperCopyWith<$Res>? get hosts;
}

/// @nodoc
class _$DNSConfigCopyWithImpl<$Res> implements $DNSConfigCopyWith<$Res> {
  _$DNSConfigCopyWithImpl(this._self, this._then);

  final DNSConfig _self;
  final $Res Function(DNSConfig) _then;

  /// Create a copy of DNSConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? servers = freezed,
    Object? hosts = freezed,
    Object? clientIp = freezed,
    Object? tag = freezed,
    Object? queryStrategy = freezed,
    Object? disableCache = freezed,
    Object? serveStale = freezed,
    Object? serveExpiredTTL = freezed,
    Object? disableFallback = freezed,
    Object? disableFallbackIfMatch = freezed,
    Object? enableParallelQuery = freezed,
    Object? useSystemHosts = freezed,
  }) {
    return _then(_self.copyWith(
      servers: freezed == servers
          ? _self.servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<NameServerConfig>?,
      hosts: freezed == hosts
          ? _self.hosts
          : hosts // ignore: cast_nullable_to_non_nullable
              as HostsWrapper?,
      clientIp: freezed == clientIp
          ? _self.clientIp
          : clientIp // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      tag: freezed == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      queryStrategy: freezed == queryStrategy
          ? _self.queryStrategy
          : queryStrategy // ignore: cast_nullable_to_non_nullable
              as DnsQueryStrategy?,
      disableCache: freezed == disableCache
          ? _self.disableCache
          : disableCache // ignore: cast_nullable_to_non_nullable
              as bool?,
      serveStale: freezed == serveStale
          ? _self.serveStale
          : serveStale // ignore: cast_nullable_to_non_nullable
              as bool?,
      serveExpiredTTL: freezed == serveExpiredTTL
          ? _self.serveExpiredTTL
          : serveExpiredTTL // ignore: cast_nullable_to_non_nullable
              as int?,
      disableFallback: freezed == disableFallback
          ? _self.disableFallback
          : disableFallback // ignore: cast_nullable_to_non_nullable
              as bool?,
      disableFallbackIfMatch: freezed == disableFallbackIfMatch
          ? _self.disableFallbackIfMatch
          : disableFallbackIfMatch // ignore: cast_nullable_to_non_nullable
              as bool?,
      enableParallelQuery: freezed == enableParallelQuery
          ? _self.enableParallelQuery
          : enableParallelQuery // ignore: cast_nullable_to_non_nullable
              as bool?,
      useSystemHosts: freezed == useSystemHosts
          ? _self.useSystemHosts
          : useSystemHosts // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of DNSConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HostsWrapperCopyWith<$Res>? get hosts {
    if (_self.hosts == null) {
      return null;
    }

    return $HostsWrapperCopyWith<$Res>(_self.hosts!, (value) {
      return _then(_self.copyWith(hosts: value));
    });
  }
}

/// Adds pattern-matching-related methods to [DNSConfig].
extension DNSConfigPatterns on DNSConfig {
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
    TResult Function(_DNSConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DNSConfig() when $default != null:
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
    TResult Function(_DNSConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DNSConfig():
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
    TResult? Function(_DNSConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DNSConfig() when $default != null:
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
            List<NameServerConfig>? servers,
            HostsWrapper? hosts,
            XrayAddress? clientIp,
            String? tag,
            DnsQueryStrategy? queryStrategy,
            bool? disableCache,
            bool? serveStale,
            int? serveExpiredTTL,
            bool? disableFallback,
            bool? disableFallbackIfMatch,
            bool? enableParallelQuery,
            bool? useSystemHosts)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DNSConfig() when $default != null:
        return $default(
            _that.servers,
            _that.hosts,
            _that.clientIp,
            _that.tag,
            _that.queryStrategy,
            _that.disableCache,
            _that.serveStale,
            _that.serveExpiredTTL,
            _that.disableFallback,
            _that.disableFallbackIfMatch,
            _that.enableParallelQuery,
            _that.useSystemHosts);
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
            List<NameServerConfig>? servers,
            HostsWrapper? hosts,
            XrayAddress? clientIp,
            String? tag,
            DnsQueryStrategy? queryStrategy,
            bool? disableCache,
            bool? serveStale,
            int? serveExpiredTTL,
            bool? disableFallback,
            bool? disableFallbackIfMatch,
            bool? enableParallelQuery,
            bool? useSystemHosts)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DNSConfig():
        return $default(
            _that.servers,
            _that.hosts,
            _that.clientIp,
            _that.tag,
            _that.queryStrategy,
            _that.disableCache,
            _that.serveStale,
            _that.serveExpiredTTL,
            _that.disableFallback,
            _that.disableFallbackIfMatch,
            _that.enableParallelQuery,
            _that.useSystemHosts);
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
            List<NameServerConfig>? servers,
            HostsWrapper? hosts,
            XrayAddress? clientIp,
            String? tag,
            DnsQueryStrategy? queryStrategy,
            bool? disableCache,
            bool? serveStale,
            int? serveExpiredTTL,
            bool? disableFallback,
            bool? disableFallbackIfMatch,
            bool? enableParallelQuery,
            bool? useSystemHosts)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DNSConfig() when $default != null:
        return $default(
            _that.servers,
            _that.hosts,
            _that.clientIp,
            _that.tag,
            _that.queryStrategy,
            _that.disableCache,
            _that.serveStale,
            _that.serveExpiredTTL,
            _that.disableFallback,
            _that.disableFallbackIfMatch,
            _that.enableParallelQuery,
            _that.useSystemHosts);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _DNSConfig extends DNSConfig {
  const _DNSConfig(
      {final List<NameServerConfig>? servers,
      this.hosts,
      this.clientIp,
      this.tag,
      this.queryStrategy,
      this.disableCache,
      this.serveStale,
      this.serveExpiredTTL,
      this.disableFallback,
      this.disableFallbackIfMatch,
      this.enableParallelQuery,
      this.useSystemHosts})
      : _servers = servers,
        super._();

  final List<NameServerConfig>? _servers;
  @override
  List<NameServerConfig>? get servers {
    final value = _servers;
    if (value == null) return null;
    if (_servers is EqualUnmodifiableListView) return _servers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final HostsWrapper? hosts;
  @override
  final XrayAddress? clientIp;
  @override
  final String? tag;
  @override
  final DnsQueryStrategy? queryStrategy;
  @override
  final bool? disableCache;
  @override
  final bool? serveStale;
  @override
  final int? serveExpiredTTL;
  @override
  final bool? disableFallback;
  @override
  final bool? disableFallbackIfMatch;
  @override
  final bool? enableParallelQuery;
  @override
  final bool? useSystemHosts;

  /// Create a copy of DNSConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DNSConfigCopyWith<_DNSConfig> get copyWith =>
      __$DNSConfigCopyWithImpl<_DNSConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DNSConfig &&
            const DeepCollectionEquality().equals(other._servers, _servers) &&
            (identical(other.hosts, hosts) || other.hosts == hosts) &&
            (identical(other.clientIp, clientIp) ||
                other.clientIp == clientIp) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.queryStrategy, queryStrategy) ||
                other.queryStrategy == queryStrategy) &&
            (identical(other.disableCache, disableCache) ||
                other.disableCache == disableCache) &&
            (identical(other.serveStale, serveStale) ||
                other.serveStale == serveStale) &&
            (identical(other.serveExpiredTTL, serveExpiredTTL) ||
                other.serveExpiredTTL == serveExpiredTTL) &&
            (identical(other.disableFallback, disableFallback) ||
                other.disableFallback == disableFallback) &&
            (identical(other.disableFallbackIfMatch, disableFallbackIfMatch) ||
                other.disableFallbackIfMatch == disableFallbackIfMatch) &&
            (identical(other.enableParallelQuery, enableParallelQuery) ||
                other.enableParallelQuery == enableParallelQuery) &&
            (identical(other.useSystemHosts, useSystemHosts) ||
                other.useSystemHosts == useSystemHosts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_servers),
      hosts,
      clientIp,
      tag,
      queryStrategy,
      disableCache,
      serveStale,
      serveExpiredTTL,
      disableFallback,
      disableFallbackIfMatch,
      enableParallelQuery,
      useSystemHosts);

  @override
  String toString() {
    return 'DNSConfig(servers: $servers, hosts: $hosts, clientIp: $clientIp, tag: $tag, queryStrategy: $queryStrategy, disableCache: $disableCache, serveStale: $serveStale, serveExpiredTTL: $serveExpiredTTL, disableFallback: $disableFallback, disableFallbackIfMatch: $disableFallbackIfMatch, enableParallelQuery: $enableParallelQuery, useSystemHosts: $useSystemHosts)';
  }
}

/// @nodoc
abstract mixin class _$DNSConfigCopyWith<$Res>
    implements $DNSConfigCopyWith<$Res> {
  factory _$DNSConfigCopyWith(
          _DNSConfig value, $Res Function(_DNSConfig) _then) =
      __$DNSConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<NameServerConfig>? servers,
      HostsWrapper? hosts,
      XrayAddress? clientIp,
      String? tag,
      DnsQueryStrategy? queryStrategy,
      bool? disableCache,
      bool? serveStale,
      int? serveExpiredTTL,
      bool? disableFallback,
      bool? disableFallbackIfMatch,
      bool? enableParallelQuery,
      bool? useSystemHosts});

  @override
  $HostsWrapperCopyWith<$Res>? get hosts;
}

/// @nodoc
class __$DNSConfigCopyWithImpl<$Res> implements _$DNSConfigCopyWith<$Res> {
  __$DNSConfigCopyWithImpl(this._self, this._then);

  final _DNSConfig _self;
  final $Res Function(_DNSConfig) _then;

  /// Create a copy of DNSConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? servers = freezed,
    Object? hosts = freezed,
    Object? clientIp = freezed,
    Object? tag = freezed,
    Object? queryStrategy = freezed,
    Object? disableCache = freezed,
    Object? serveStale = freezed,
    Object? serveExpiredTTL = freezed,
    Object? disableFallback = freezed,
    Object? disableFallbackIfMatch = freezed,
    Object? enableParallelQuery = freezed,
    Object? useSystemHosts = freezed,
  }) {
    return _then(_DNSConfig(
      servers: freezed == servers
          ? _self._servers
          : servers // ignore: cast_nullable_to_non_nullable
              as List<NameServerConfig>?,
      hosts: freezed == hosts
          ? _self.hosts
          : hosts // ignore: cast_nullable_to_non_nullable
              as HostsWrapper?,
      clientIp: freezed == clientIp
          ? _self.clientIp
          : clientIp // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      tag: freezed == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      queryStrategy: freezed == queryStrategy
          ? _self.queryStrategy
          : queryStrategy // ignore: cast_nullable_to_non_nullable
              as DnsQueryStrategy?,
      disableCache: freezed == disableCache
          ? _self.disableCache
          : disableCache // ignore: cast_nullable_to_non_nullable
              as bool?,
      serveStale: freezed == serveStale
          ? _self.serveStale
          : serveStale // ignore: cast_nullable_to_non_nullable
              as bool?,
      serveExpiredTTL: freezed == serveExpiredTTL
          ? _self.serveExpiredTTL
          : serveExpiredTTL // ignore: cast_nullable_to_non_nullable
              as int?,
      disableFallback: freezed == disableFallback
          ? _self.disableFallback
          : disableFallback // ignore: cast_nullable_to_non_nullable
              as bool?,
      disableFallbackIfMatch: freezed == disableFallbackIfMatch
          ? _self.disableFallbackIfMatch
          : disableFallbackIfMatch // ignore: cast_nullable_to_non_nullable
              as bool?,
      enableParallelQuery: freezed == enableParallelQuery
          ? _self.enableParallelQuery
          : enableParallelQuery // ignore: cast_nullable_to_non_nullable
              as bool?,
      useSystemHosts: freezed == useSystemHosts
          ? _self.useSystemHosts
          : useSystemHosts // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  /// Create a copy of DNSConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HostsWrapperCopyWith<$Res>? get hosts {
    if (_self.hosts == null) {
      return null;
    }

    return $HostsWrapperCopyWith<$Res>(_self.hosts!, (value) {
      return _then(_self.copyWith(hosts: value));
    });
  }
}

/// @nodoc
mixin _$FakeDNSPoolElementConfig {
  String get ipPool;
  @JsonKey(name: 'poolSize')
  int? get lruSize;

  /// Create a copy of FakeDNSPoolElementConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FakeDNSPoolElementConfigCopyWith<FakeDNSPoolElementConfig> get copyWith =>
      _$FakeDNSPoolElementConfigCopyWithImpl<FakeDNSPoolElementConfig>(
          this as FakeDNSPoolElementConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FakeDNSPoolElementConfig &&
            (identical(other.ipPool, ipPool) || other.ipPool == ipPool) &&
            (identical(other.lruSize, lruSize) || other.lruSize == lruSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ipPool, lruSize);

  @override
  String toString() {
    return 'FakeDNSPoolElementConfig(ipPool: $ipPool, lruSize: $lruSize)';
  }
}

/// @nodoc
abstract mixin class $FakeDNSPoolElementConfigCopyWith<$Res> {
  factory $FakeDNSPoolElementConfigCopyWith(FakeDNSPoolElementConfig value,
          $Res Function(FakeDNSPoolElementConfig) _then) =
      _$FakeDNSPoolElementConfigCopyWithImpl;
  @useResult
  $Res call({String ipPool, @JsonKey(name: 'poolSize') int? lruSize});
}

/// @nodoc
class _$FakeDNSPoolElementConfigCopyWithImpl<$Res>
    implements $FakeDNSPoolElementConfigCopyWith<$Res> {
  _$FakeDNSPoolElementConfigCopyWithImpl(this._self, this._then);

  final FakeDNSPoolElementConfig _self;
  final $Res Function(FakeDNSPoolElementConfig) _then;

  /// Create a copy of FakeDNSPoolElementConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ipPool = null,
    Object? lruSize = freezed,
  }) {
    return _then(_self.copyWith(
      ipPool: null == ipPool
          ? _self.ipPool
          : ipPool // ignore: cast_nullable_to_non_nullable
              as String,
      lruSize: freezed == lruSize
          ? _self.lruSize
          : lruSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [FakeDNSPoolElementConfig].
extension FakeDNSPoolElementConfigPatterns on FakeDNSPoolElementConfig {
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
    TResult Function(_FakeDNSPoolElementConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FakeDNSPoolElementConfig() when $default != null:
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
    TResult Function(_FakeDNSPoolElementConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FakeDNSPoolElementConfig():
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
    TResult? Function(_FakeDNSPoolElementConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FakeDNSPoolElementConfig() when $default != null:
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
    TResult Function(String ipPool, @JsonKey(name: 'poolSize') int? lruSize)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FakeDNSPoolElementConfig() when $default != null:
        return $default(_that.ipPool, _that.lruSize);
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
    TResult Function(String ipPool, @JsonKey(name: 'poolSize') int? lruSize)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FakeDNSPoolElementConfig():
        return $default(_that.ipPool, _that.lruSize);
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
    TResult? Function(String ipPool, @JsonKey(name: 'poolSize') int? lruSize)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FakeDNSPoolElementConfig() when $default != null:
        return $default(_that.ipPool, _that.lruSize);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _FakeDNSPoolElementConfig extends FakeDNSPoolElementConfig {
  const _FakeDNSPoolElementConfig(
      {required this.ipPool, @JsonKey(name: 'poolSize') this.lruSize})
      : super._();

  @override
  final String ipPool;
  @override
  @JsonKey(name: 'poolSize')
  final int? lruSize;

  /// Create a copy of FakeDNSPoolElementConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FakeDNSPoolElementConfigCopyWith<_FakeDNSPoolElementConfig> get copyWith =>
      __$FakeDNSPoolElementConfigCopyWithImpl<_FakeDNSPoolElementConfig>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FakeDNSPoolElementConfig &&
            (identical(other.ipPool, ipPool) || other.ipPool == ipPool) &&
            (identical(other.lruSize, lruSize) || other.lruSize == lruSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ipPool, lruSize);

  @override
  String toString() {
    return 'FakeDNSPoolElementConfig(ipPool: $ipPool, lruSize: $lruSize)';
  }
}

/// @nodoc
abstract mixin class _$FakeDNSPoolElementConfigCopyWith<$Res>
    implements $FakeDNSPoolElementConfigCopyWith<$Res> {
  factory _$FakeDNSPoolElementConfigCopyWith(_FakeDNSPoolElementConfig value,
          $Res Function(_FakeDNSPoolElementConfig) _then) =
      __$FakeDNSPoolElementConfigCopyWithImpl;
  @override
  @useResult
  $Res call({String ipPool, @JsonKey(name: 'poolSize') int? lruSize});
}

/// @nodoc
class __$FakeDNSPoolElementConfigCopyWithImpl<$Res>
    implements _$FakeDNSPoolElementConfigCopyWith<$Res> {
  __$FakeDNSPoolElementConfigCopyWithImpl(this._self, this._then);

  final _FakeDNSPoolElementConfig _self;
  final $Res Function(_FakeDNSPoolElementConfig) _then;

  /// Create a copy of FakeDNSPoolElementConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? ipPool = null,
    Object? lruSize = freezed,
  }) {
    return _then(_FakeDNSPoolElementConfig(
      ipPool: null == ipPool
          ? _self.ipPool
          : ipPool // ignore: cast_nullable_to_non_nullable
              as String,
      lruSize: freezed == lruSize
          ? _self.lruSize
          : lruSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$GeodataAssetConfig {
  String get url;
  String get file;

  /// Create a copy of GeodataAssetConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GeodataAssetConfigCopyWith<GeodataAssetConfig> get copyWith =>
      _$GeodataAssetConfigCopyWithImpl<GeodataAssetConfig>(
          this as GeodataAssetConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GeodataAssetConfig &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, file);

  @override
  String toString() {
    return 'GeodataAssetConfig(url: $url, file: $file)';
  }
}

/// @nodoc
abstract mixin class $GeodataAssetConfigCopyWith<$Res> {
  factory $GeodataAssetConfigCopyWith(
          GeodataAssetConfig value, $Res Function(GeodataAssetConfig) _then) =
      _$GeodataAssetConfigCopyWithImpl;
  @useResult
  $Res call({String url, String file});
}

/// @nodoc
class _$GeodataAssetConfigCopyWithImpl<$Res>
    implements $GeodataAssetConfigCopyWith<$Res> {
  _$GeodataAssetConfigCopyWithImpl(this._self, this._then);

  final GeodataAssetConfig _self;
  final $Res Function(GeodataAssetConfig) _then;

  /// Create a copy of GeodataAssetConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? file = null,
  }) {
    return _then(_self.copyWith(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [GeodataAssetConfig].
extension GeodataAssetConfigPatterns on GeodataAssetConfig {
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
    TResult Function(_GeodataAssetConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GeodataAssetConfig() when $default != null:
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
    TResult Function(_GeodataAssetConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeodataAssetConfig():
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
    TResult? Function(_GeodataAssetConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeodataAssetConfig() when $default != null:
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
    TResult Function(String url, String file)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GeodataAssetConfig() when $default != null:
        return $default(_that.url, _that.file);
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
    TResult Function(String url, String file) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeodataAssetConfig():
        return $default(_that.url, _that.file);
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
    TResult? Function(String url, String file)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeodataAssetConfig() when $default != null:
        return $default(_that.url, _that.file);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GeodataAssetConfig extends GeodataAssetConfig {
  const _GeodataAssetConfig({required this.url, required this.file})
      : super._();

  @override
  final String url;
  @override
  final String file;

  /// Create a copy of GeodataAssetConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GeodataAssetConfigCopyWith<_GeodataAssetConfig> get copyWith =>
      __$GeodataAssetConfigCopyWithImpl<_GeodataAssetConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GeodataAssetConfig &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, file);

  @override
  String toString() {
    return 'GeodataAssetConfig(url: $url, file: $file)';
  }
}

/// @nodoc
abstract mixin class _$GeodataAssetConfigCopyWith<$Res>
    implements $GeodataAssetConfigCopyWith<$Res> {
  factory _$GeodataAssetConfigCopyWith(
          _GeodataAssetConfig value, $Res Function(_GeodataAssetConfig) _then) =
      __$GeodataAssetConfigCopyWithImpl;
  @override
  @useResult
  $Res call({String url, String file});
}

/// @nodoc
class __$GeodataAssetConfigCopyWithImpl<$Res>
    implements _$GeodataAssetConfigCopyWith<$Res> {
  __$GeodataAssetConfigCopyWithImpl(this._self, this._then);

  final _GeodataAssetConfig _self;
  final $Res Function(_GeodataAssetConfig) _then;

  /// Create a copy of GeodataAssetConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = null,
    Object? file = null,
  }) {
    return _then(_GeodataAssetConfig(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      file: null == file
          ? _self.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$GeodataConfig {
  String? get cron;
  String? get outbound;
  List<GeodataAssetConfig>? get assets;

  /// Create a copy of GeodataConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $GeodataConfigCopyWith<GeodataConfig> get copyWith =>
      _$GeodataConfigCopyWithImpl<GeodataConfig>(
          this as GeodataConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GeodataConfig &&
            (identical(other.cron, cron) || other.cron == cron) &&
            (identical(other.outbound, outbound) ||
                other.outbound == outbound) &&
            const DeepCollectionEquality().equals(other.assets, assets));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, cron, outbound, const DeepCollectionEquality().hash(assets));

  @override
  String toString() {
    return 'GeodataConfig(cron: $cron, outbound: $outbound, assets: $assets)';
  }
}

/// @nodoc
abstract mixin class $GeodataConfigCopyWith<$Res> {
  factory $GeodataConfigCopyWith(
          GeodataConfig value, $Res Function(GeodataConfig) _then) =
      _$GeodataConfigCopyWithImpl;
  @useResult
  $Res call({String? cron, String? outbound, List<GeodataAssetConfig>? assets});
}

/// @nodoc
class _$GeodataConfigCopyWithImpl<$Res>
    implements $GeodataConfigCopyWith<$Res> {
  _$GeodataConfigCopyWithImpl(this._self, this._then);

  final GeodataConfig _self;
  final $Res Function(GeodataConfig) _then;

  /// Create a copy of GeodataConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cron = freezed,
    Object? outbound = freezed,
    Object? assets = freezed,
  }) {
    return _then(_self.copyWith(
      cron: freezed == cron
          ? _self.cron
          : cron // ignore: cast_nullable_to_non_nullable
              as String?,
      outbound: freezed == outbound
          ? _self.outbound
          : outbound // ignore: cast_nullable_to_non_nullable
              as String?,
      assets: freezed == assets
          ? _self.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<GeodataAssetConfig>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [GeodataConfig].
extension GeodataConfigPatterns on GeodataConfig {
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
    TResult Function(_GeodataConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GeodataConfig() when $default != null:
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
    TResult Function(_GeodataConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeodataConfig():
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
    TResult? Function(_GeodataConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeodataConfig() when $default != null:
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
            String? cron, String? outbound, List<GeodataAssetConfig>? assets)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _GeodataConfig() when $default != null:
        return $default(_that.cron, _that.outbound, _that.assets);
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
            String? cron, String? outbound, List<GeodataAssetConfig>? assets)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeodataConfig():
        return $default(_that.cron, _that.outbound, _that.assets);
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
            String? cron, String? outbound, List<GeodataAssetConfig>? assets)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _GeodataConfig() when $default != null:
        return $default(_that.cron, _that.outbound, _that.assets);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _GeodataConfig extends GeodataConfig {
  const _GeodataConfig(
      {this.cron, this.outbound, final List<GeodataAssetConfig>? assets})
      : _assets = assets,
        super._();

  @override
  final String? cron;
  @override
  final String? outbound;
  final List<GeodataAssetConfig>? _assets;
  @override
  List<GeodataAssetConfig>? get assets {
    final value = _assets;
    if (value == null) return null;
    if (_assets is EqualUnmodifiableListView) return _assets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of GeodataConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$GeodataConfigCopyWith<_GeodataConfig> get copyWith =>
      __$GeodataConfigCopyWithImpl<_GeodataConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GeodataConfig &&
            (identical(other.cron, cron) || other.cron == cron) &&
            (identical(other.outbound, outbound) ||
                other.outbound == outbound) &&
            const DeepCollectionEquality().equals(other._assets, _assets));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cron, outbound,
      const DeepCollectionEquality().hash(_assets));

  @override
  String toString() {
    return 'GeodataConfig(cron: $cron, outbound: $outbound, assets: $assets)';
  }
}

/// @nodoc
abstract mixin class _$GeodataConfigCopyWith<$Res>
    implements $GeodataConfigCopyWith<$Res> {
  factory _$GeodataConfigCopyWith(
          _GeodataConfig value, $Res Function(_GeodataConfig) _then) =
      __$GeodataConfigCopyWithImpl;
  @override
  @useResult
  $Res call({String? cron, String? outbound, List<GeodataAssetConfig>? assets});
}

/// @nodoc
class __$GeodataConfigCopyWithImpl<$Res>
    implements _$GeodataConfigCopyWith<$Res> {
  __$GeodataConfigCopyWithImpl(this._self, this._then);

  final _GeodataConfig _self;
  final $Res Function(_GeodataConfig) _then;

  /// Create a copy of GeodataConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? cron = freezed,
    Object? outbound = freezed,
    Object? assets = freezed,
  }) {
    return _then(_GeodataConfig(
      cron: freezed == cron
          ? _self.cron
          : cron // ignore: cast_nullable_to_non_nullable
              as String?,
      outbound: freezed == outbound
          ? _self.outbound
          : outbound // ignore: cast_nullable_to_non_nullable
              as String?,
      assets: freezed == assets
          ? _self._assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<GeodataAssetConfig>?,
    ));
  }
}

/// @nodoc
mixin _$HealthCheckSettings {
  String? get destination;
  String? get connectivity;
  XrayDuration? get interval;
  @JsonKey(name: 'sampling')
  int? get samplingCount;
  XrayDuration? get timeout;
  String? get httpMethod;

  /// Create a copy of HealthCheckSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HealthCheckSettingsCopyWith<HealthCheckSettings> get copyWith =>
      _$HealthCheckSettingsCopyWithImpl<HealthCheckSettings>(
          this as HealthCheckSettings, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HealthCheckSettings &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.connectivity, connectivity) ||
                other.connectivity == connectivity) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.samplingCount, samplingCount) ||
                other.samplingCount == samplingCount) &&
            (identical(other.timeout, timeout) || other.timeout == timeout) &&
            (identical(other.httpMethod, httpMethod) ||
                other.httpMethod == httpMethod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, destination, connectivity,
      interval, samplingCount, timeout, httpMethod);

  @override
  String toString() {
    return 'HealthCheckSettings(destination: $destination, connectivity: $connectivity, interval: $interval, samplingCount: $samplingCount, timeout: $timeout, httpMethod: $httpMethod)';
  }
}

/// @nodoc
abstract mixin class $HealthCheckSettingsCopyWith<$Res> {
  factory $HealthCheckSettingsCopyWith(
          HealthCheckSettings value, $Res Function(HealthCheckSettings) _then) =
      _$HealthCheckSettingsCopyWithImpl;
  @useResult
  $Res call(
      {String? destination,
      String? connectivity,
      XrayDuration? interval,
      @JsonKey(name: 'sampling') int? samplingCount,
      XrayDuration? timeout,
      String? httpMethod});
}

/// @nodoc
class _$HealthCheckSettingsCopyWithImpl<$Res>
    implements $HealthCheckSettingsCopyWith<$Res> {
  _$HealthCheckSettingsCopyWithImpl(this._self, this._then);

  final HealthCheckSettings _self;
  final $Res Function(HealthCheckSettings) _then;

  /// Create a copy of HealthCheckSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = freezed,
    Object? connectivity = freezed,
    Object? interval = freezed,
    Object? samplingCount = freezed,
    Object? timeout = freezed,
    Object? httpMethod = freezed,
  }) {
    return _then(_self.copyWith(
      destination: freezed == destination
          ? _self.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String?,
      connectivity: freezed == connectivity
          ? _self.connectivity
          : connectivity // ignore: cast_nullable_to_non_nullable
              as String?,
      interval: freezed == interval
          ? _self.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as XrayDuration?,
      samplingCount: freezed == samplingCount
          ? _self.samplingCount
          : samplingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      timeout: freezed == timeout
          ? _self.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as XrayDuration?,
      httpMethod: freezed == httpMethod
          ? _self.httpMethod
          : httpMethod // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [HealthCheckSettings].
extension HealthCheckSettingsPatterns on HealthCheckSettings {
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
    TResult Function(_HealthCheckSettings value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HealthCheckSettings() when $default != null:
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
    TResult Function(_HealthCheckSettings value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HealthCheckSettings():
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
    TResult? Function(_HealthCheckSettings value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HealthCheckSettings() when $default != null:
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
            String? destination,
            String? connectivity,
            XrayDuration? interval,
            @JsonKey(name: 'sampling') int? samplingCount,
            XrayDuration? timeout,
            String? httpMethod)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HealthCheckSettings() when $default != null:
        return $default(_that.destination, _that.connectivity, _that.interval,
            _that.samplingCount, _that.timeout, _that.httpMethod);
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
            String? destination,
            String? connectivity,
            XrayDuration? interval,
            @JsonKey(name: 'sampling') int? samplingCount,
            XrayDuration? timeout,
            String? httpMethod)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HealthCheckSettings():
        return $default(_that.destination, _that.connectivity, _that.interval,
            _that.samplingCount, _that.timeout, _that.httpMethod);
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
            String? destination,
            String? connectivity,
            XrayDuration? interval,
            @JsonKey(name: 'sampling') int? samplingCount,
            XrayDuration? timeout,
            String? httpMethod)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HealthCheckSettings() when $default != null:
        return $default(_that.destination, _that.connectivity, _that.interval,
            _that.samplingCount, _that.timeout, _that.httpMethod);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _HealthCheckSettings extends HealthCheckSettings {
  const _HealthCheckSettings(
      {this.destination,
      this.connectivity,
      this.interval,
      @JsonKey(name: 'sampling') this.samplingCount,
      this.timeout,
      this.httpMethod})
      : super._();

  @override
  final String? destination;
  @override
  final String? connectivity;
  @override
  final XrayDuration? interval;
  @override
  @JsonKey(name: 'sampling')
  final int? samplingCount;
  @override
  final XrayDuration? timeout;
  @override
  final String? httpMethod;

  /// Create a copy of HealthCheckSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HealthCheckSettingsCopyWith<_HealthCheckSettings> get copyWith =>
      __$HealthCheckSettingsCopyWithImpl<_HealthCheckSettings>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HealthCheckSettings &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.connectivity, connectivity) ||
                other.connectivity == connectivity) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.samplingCount, samplingCount) ||
                other.samplingCount == samplingCount) &&
            (identical(other.timeout, timeout) || other.timeout == timeout) &&
            (identical(other.httpMethod, httpMethod) ||
                other.httpMethod == httpMethod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, destination, connectivity,
      interval, samplingCount, timeout, httpMethod);

  @override
  String toString() {
    return 'HealthCheckSettings(destination: $destination, connectivity: $connectivity, interval: $interval, samplingCount: $samplingCount, timeout: $timeout, httpMethod: $httpMethod)';
  }
}

/// @nodoc
abstract mixin class _$HealthCheckSettingsCopyWith<$Res>
    implements $HealthCheckSettingsCopyWith<$Res> {
  factory _$HealthCheckSettingsCopyWith(_HealthCheckSettings value,
          $Res Function(_HealthCheckSettings) _then) =
      __$HealthCheckSettingsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? destination,
      String? connectivity,
      XrayDuration? interval,
      @JsonKey(name: 'sampling') int? samplingCount,
      XrayDuration? timeout,
      String? httpMethod});
}

/// @nodoc
class __$HealthCheckSettingsCopyWithImpl<$Res>
    implements _$HealthCheckSettingsCopyWith<$Res> {
  __$HealthCheckSettingsCopyWithImpl(this._self, this._then);

  final _HealthCheckSettings _self;
  final $Res Function(_HealthCheckSettings) _then;

  /// Create a copy of HealthCheckSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? destination = freezed,
    Object? connectivity = freezed,
    Object? interval = freezed,
    Object? samplingCount = freezed,
    Object? timeout = freezed,
    Object? httpMethod = freezed,
  }) {
    return _then(_HealthCheckSettings(
      destination: freezed == destination
          ? _self.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as String?,
      connectivity: freezed == connectivity
          ? _self.connectivity
          : connectivity // ignore: cast_nullable_to_non_nullable
              as String?,
      interval: freezed == interval
          ? _self.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as XrayDuration?,
      samplingCount: freezed == samplingCount
          ? _self.samplingCount
          : samplingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      timeout: freezed == timeout
          ? _self.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as XrayDuration?,
      httpMethod: freezed == httpMethod
          ? _self.httpMethod
          : httpMethod // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$HostsWrapper {
  Map<String, HostAddress> get hosts;

  /// Create a copy of HostsWrapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HostsWrapperCopyWith<HostsWrapper> get copyWith =>
      _$HostsWrapperCopyWithImpl<HostsWrapper>(
          this as HostsWrapper, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HostsWrapper &&
            const DeepCollectionEquality().equals(other.hosts, hosts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(hosts));

  @override
  String toString() {
    return 'HostsWrapper(hosts: $hosts)';
  }
}

/// @nodoc
abstract mixin class $HostsWrapperCopyWith<$Res> {
  factory $HostsWrapperCopyWith(
          HostsWrapper value, $Res Function(HostsWrapper) _then) =
      _$HostsWrapperCopyWithImpl;
  @useResult
  $Res call({Map<String, HostAddress> hosts});
}

/// @nodoc
class _$HostsWrapperCopyWithImpl<$Res> implements $HostsWrapperCopyWith<$Res> {
  _$HostsWrapperCopyWithImpl(this._self, this._then);

  final HostsWrapper _self;
  final $Res Function(HostsWrapper) _then;

  /// Create a copy of HostsWrapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hosts = null,
  }) {
    return _then(_self.copyWith(
      hosts: null == hosts
          ? _self.hosts
          : hosts // ignore: cast_nullable_to_non_nullable
              as Map<String, HostAddress>,
    ));
  }
}

/// Adds pattern-matching-related methods to [HostsWrapper].
extension HostsWrapperPatterns on HostsWrapper {
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
    TResult Function(_HostsWrapper value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HostsWrapper() when $default != null:
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
    TResult Function(_HostsWrapper value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HostsWrapper():
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
    TResult? Function(_HostsWrapper value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HostsWrapper() when $default != null:
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
    TResult Function(Map<String, HostAddress> hosts)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HostsWrapper() when $default != null:
        return $default(_that.hosts);
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
    TResult Function(Map<String, HostAddress> hosts) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HostsWrapper():
        return $default(_that.hosts);
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
    TResult? Function(Map<String, HostAddress> hosts)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HostsWrapper() when $default != null:
        return $default(_that.hosts);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _HostsWrapper extends HostsWrapper {
  const _HostsWrapper({required final Map<String, HostAddress> hosts})
      : _hosts = hosts,
        super._();

  final Map<String, HostAddress> _hosts;
  @override
  Map<String, HostAddress> get hosts {
    if (_hosts is EqualUnmodifiableMapView) return _hosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_hosts);
  }

  /// Create a copy of HostsWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HostsWrapperCopyWith<_HostsWrapper> get copyWith =>
      __$HostsWrapperCopyWithImpl<_HostsWrapper>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HostsWrapper &&
            const DeepCollectionEquality().equals(other._hosts, _hosts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_hosts));

  @override
  String toString() {
    return 'HostsWrapper(hosts: $hosts)';
  }
}

/// @nodoc
abstract mixin class _$HostsWrapperCopyWith<$Res>
    implements $HostsWrapperCopyWith<$Res> {
  factory _$HostsWrapperCopyWith(
          _HostsWrapper value, $Res Function(_HostsWrapper) _then) =
      __$HostsWrapperCopyWithImpl;
  @override
  @useResult
  $Res call({Map<String, HostAddress> hosts});
}

/// @nodoc
class __$HostsWrapperCopyWithImpl<$Res>
    implements _$HostsWrapperCopyWith<$Res> {
  __$HostsWrapperCopyWithImpl(this._self, this._then);

  final _HostsWrapper _self;
  final $Res Function(_HostsWrapper) _then;

  /// Create a copy of HostsWrapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? hosts = null,
  }) {
    return _then(_HostsWrapper(
      hosts: null == hosts
          ? _self._hosts
          : hosts // ignore: cast_nullable_to_non_nullable
              as Map<String, HostAddress>,
    ));
  }
}

/// @nodoc
mixin _$MetricsConfig {
  String? get tag;
  String? get listen;

  /// Create a copy of MetricsConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MetricsConfigCopyWith<MetricsConfig> get copyWith =>
      _$MetricsConfigCopyWithImpl<MetricsConfig>(
          this as MetricsConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MetricsConfig &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.listen, listen) || other.listen == listen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag, listen);

  @override
  String toString() {
    return 'MetricsConfig(tag: $tag, listen: $listen)';
  }
}

/// @nodoc
abstract mixin class $MetricsConfigCopyWith<$Res> {
  factory $MetricsConfigCopyWith(
          MetricsConfig value, $Res Function(MetricsConfig) _then) =
      _$MetricsConfigCopyWithImpl;
  @useResult
  $Res call({String? tag, String? listen});
}

/// @nodoc
class _$MetricsConfigCopyWithImpl<$Res>
    implements $MetricsConfigCopyWith<$Res> {
  _$MetricsConfigCopyWithImpl(this._self, this._then);

  final MetricsConfig _self;
  final $Res Function(MetricsConfig) _then;

  /// Create a copy of MetricsConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = freezed,
    Object? listen = freezed,
  }) {
    return _then(_self.copyWith(
      tag: freezed == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      listen: freezed == listen
          ? _self.listen
          : listen // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [MetricsConfig].
extension MetricsConfigPatterns on MetricsConfig {
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
    TResult Function(_MetricsConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MetricsConfig() when $default != null:
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
    TResult Function(_MetricsConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MetricsConfig():
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
    TResult? Function(_MetricsConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MetricsConfig() when $default != null:
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
    TResult Function(String? tag, String? listen)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _MetricsConfig() when $default != null:
        return $default(_that.tag, _that.listen);
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
    TResult Function(String? tag, String? listen) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MetricsConfig():
        return $default(_that.tag, _that.listen);
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
    TResult? Function(String? tag, String? listen)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _MetricsConfig() when $default != null:
        return $default(_that.tag, _that.listen);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _MetricsConfig extends MetricsConfig {
  const _MetricsConfig({this.tag, this.listen}) : super._();

  @override
  final String? tag;
  @override
  final String? listen;

  /// Create a copy of MetricsConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MetricsConfigCopyWith<_MetricsConfig> get copyWith =>
      __$MetricsConfigCopyWithImpl<_MetricsConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MetricsConfig &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.listen, listen) || other.listen == listen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag, listen);

  @override
  String toString() {
    return 'MetricsConfig(tag: $tag, listen: $listen)';
  }
}

/// @nodoc
abstract mixin class _$MetricsConfigCopyWith<$Res>
    implements $MetricsConfigCopyWith<$Res> {
  factory _$MetricsConfigCopyWith(
          _MetricsConfig value, $Res Function(_MetricsConfig) _then) =
      __$MetricsConfigCopyWithImpl;
  @override
  @useResult
  $Res call({String? tag, String? listen});
}

/// @nodoc
class __$MetricsConfigCopyWithImpl<$Res>
    implements _$MetricsConfigCopyWith<$Res> {
  __$MetricsConfigCopyWithImpl(this._self, this._then);

  final _MetricsConfig _self;
  final $Res Function(_MetricsConfig) _then;

  /// Create a copy of MetricsConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tag = freezed,
    Object? listen = freezed,
  }) {
    return _then(_MetricsConfig(
      tag: freezed == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      listen: freezed == listen
          ? _self.listen
          : listen // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$NameServerConfig {
  XrayAddress get address;
  XrayAddress? get clientIp;
  int? get port;
  bool? get skipFallback;
  XrayStringList? get domains;
  XrayStringList? get expectedIPs;
  XrayStringList? get expectIPs;
  DnsQueryStrategy? get queryStrategy;
  String? get tag;
  int? get timeoutMs;
  bool? get disableCache;
  bool? get serveStale;
  int? get serveExpiredTTL;
  bool? get finalQuery;
  XrayStringList? get unexpectedIPs;
  bool? get simplified;

  /// Create a copy of NameServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NameServerConfigCopyWith<NameServerConfig> get copyWith =>
      _$NameServerConfigCopyWithImpl<NameServerConfig>(
          this as NameServerConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NameServerConfig &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.clientIp, clientIp) ||
                other.clientIp == clientIp) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.skipFallback, skipFallback) ||
                other.skipFallback == skipFallback) &&
            (identical(other.domains, domains) || other.domains == domains) &&
            (identical(other.expectedIPs, expectedIPs) ||
                other.expectedIPs == expectedIPs) &&
            (identical(other.expectIPs, expectIPs) ||
                other.expectIPs == expectIPs) &&
            (identical(other.queryStrategy, queryStrategy) ||
                other.queryStrategy == queryStrategy) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.timeoutMs, timeoutMs) ||
                other.timeoutMs == timeoutMs) &&
            (identical(other.disableCache, disableCache) ||
                other.disableCache == disableCache) &&
            (identical(other.serveStale, serveStale) ||
                other.serveStale == serveStale) &&
            (identical(other.serveExpiredTTL, serveExpiredTTL) ||
                other.serveExpiredTTL == serveExpiredTTL) &&
            (identical(other.finalQuery, finalQuery) ||
                other.finalQuery == finalQuery) &&
            (identical(other.unexpectedIPs, unexpectedIPs) ||
                other.unexpectedIPs == unexpectedIPs) &&
            (identical(other.simplified, simplified) ||
                other.simplified == simplified));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      address,
      clientIp,
      port,
      skipFallback,
      domains,
      expectedIPs,
      expectIPs,
      queryStrategy,
      tag,
      timeoutMs,
      disableCache,
      serveStale,
      serveExpiredTTL,
      finalQuery,
      unexpectedIPs,
      simplified);

  @override
  String toString() {
    return 'NameServerConfig(address: $address, clientIp: $clientIp, port: $port, skipFallback: $skipFallback, domains: $domains, expectedIPs: $expectedIPs, expectIPs: $expectIPs, queryStrategy: $queryStrategy, tag: $tag, timeoutMs: $timeoutMs, disableCache: $disableCache, serveStale: $serveStale, serveExpiredTTL: $serveExpiredTTL, finalQuery: $finalQuery, unexpectedIPs: $unexpectedIPs, simplified: $simplified)';
  }
}

/// @nodoc
abstract mixin class $NameServerConfigCopyWith<$Res> {
  factory $NameServerConfigCopyWith(
          NameServerConfig value, $Res Function(NameServerConfig) _then) =
      _$NameServerConfigCopyWithImpl;
  @useResult
  $Res call(
      {XrayAddress address,
      XrayAddress? clientIp,
      int? port,
      bool? skipFallback,
      XrayStringList? domains,
      XrayStringList? expectedIPs,
      XrayStringList? expectIPs,
      DnsQueryStrategy? queryStrategy,
      String? tag,
      int? timeoutMs,
      bool? disableCache,
      bool? serveStale,
      int? serveExpiredTTL,
      bool? finalQuery,
      XrayStringList? unexpectedIPs,
      bool? simplified});
}

/// @nodoc
class _$NameServerConfigCopyWithImpl<$Res>
    implements $NameServerConfigCopyWith<$Res> {
  _$NameServerConfigCopyWithImpl(this._self, this._then);

  final NameServerConfig _self;
  final $Res Function(NameServerConfig) _then;

  /// Create a copy of NameServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? clientIp = freezed,
    Object? port = freezed,
    Object? skipFallback = freezed,
    Object? domains = freezed,
    Object? expectedIPs = freezed,
    Object? expectIPs = freezed,
    Object? queryStrategy = freezed,
    Object? tag = freezed,
    Object? timeoutMs = freezed,
    Object? disableCache = freezed,
    Object? serveStale = freezed,
    Object? serveExpiredTTL = freezed,
    Object? finalQuery = freezed,
    Object? unexpectedIPs = freezed,
    Object? simplified = freezed,
  }) {
    return _then(_self.copyWith(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress,
      clientIp: freezed == clientIp
          ? _self.clientIp
          : clientIp // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      skipFallback: freezed == skipFallback
          ? _self.skipFallback
          : skipFallback // ignore: cast_nullable_to_non_nullable
              as bool?,
      domains: freezed == domains
          ? _self.domains
          : domains // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      expectedIPs: freezed == expectedIPs
          ? _self.expectedIPs
          : expectedIPs // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      expectIPs: freezed == expectIPs
          ? _self.expectIPs
          : expectIPs // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      queryStrategy: freezed == queryStrategy
          ? _self.queryStrategy
          : queryStrategy // ignore: cast_nullable_to_non_nullable
              as DnsQueryStrategy?,
      tag: freezed == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      timeoutMs: freezed == timeoutMs
          ? _self.timeoutMs
          : timeoutMs // ignore: cast_nullable_to_non_nullable
              as int?,
      disableCache: freezed == disableCache
          ? _self.disableCache
          : disableCache // ignore: cast_nullable_to_non_nullable
              as bool?,
      serveStale: freezed == serveStale
          ? _self.serveStale
          : serveStale // ignore: cast_nullable_to_non_nullable
              as bool?,
      serveExpiredTTL: freezed == serveExpiredTTL
          ? _self.serveExpiredTTL
          : serveExpiredTTL // ignore: cast_nullable_to_non_nullable
              as int?,
      finalQuery: freezed == finalQuery
          ? _self.finalQuery
          : finalQuery // ignore: cast_nullable_to_non_nullable
              as bool?,
      unexpectedIPs: freezed == unexpectedIPs
          ? _self.unexpectedIPs
          : unexpectedIPs // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      simplified: freezed == simplified
          ? _self.simplified
          : simplified // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [NameServerConfig].
extension NameServerConfigPatterns on NameServerConfig {
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
    TResult Function(_NameServerConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NameServerConfig() when $default != null:
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
    TResult Function(_NameServerConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NameServerConfig():
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
    TResult? Function(_NameServerConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NameServerConfig() when $default != null:
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
            XrayAddress address,
            XrayAddress? clientIp,
            int? port,
            bool? skipFallback,
            XrayStringList? domains,
            XrayStringList? expectedIPs,
            XrayStringList? expectIPs,
            DnsQueryStrategy? queryStrategy,
            String? tag,
            int? timeoutMs,
            bool? disableCache,
            bool? serveStale,
            int? serveExpiredTTL,
            bool? finalQuery,
            XrayStringList? unexpectedIPs,
            bool? simplified)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _NameServerConfig() when $default != null:
        return $default(
            _that.address,
            _that.clientIp,
            _that.port,
            _that.skipFallback,
            _that.domains,
            _that.expectedIPs,
            _that.expectIPs,
            _that.queryStrategy,
            _that.tag,
            _that.timeoutMs,
            _that.disableCache,
            _that.serveStale,
            _that.serveExpiredTTL,
            _that.finalQuery,
            _that.unexpectedIPs,
            _that.simplified);
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
            XrayAddress address,
            XrayAddress? clientIp,
            int? port,
            bool? skipFallback,
            XrayStringList? domains,
            XrayStringList? expectedIPs,
            XrayStringList? expectIPs,
            DnsQueryStrategy? queryStrategy,
            String? tag,
            int? timeoutMs,
            bool? disableCache,
            bool? serveStale,
            int? serveExpiredTTL,
            bool? finalQuery,
            XrayStringList? unexpectedIPs,
            bool? simplified)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NameServerConfig():
        return $default(
            _that.address,
            _that.clientIp,
            _that.port,
            _that.skipFallback,
            _that.domains,
            _that.expectedIPs,
            _that.expectIPs,
            _that.queryStrategy,
            _that.tag,
            _that.timeoutMs,
            _that.disableCache,
            _that.serveStale,
            _that.serveExpiredTTL,
            _that.finalQuery,
            _that.unexpectedIPs,
            _that.simplified);
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
            XrayAddress address,
            XrayAddress? clientIp,
            int? port,
            bool? skipFallback,
            XrayStringList? domains,
            XrayStringList? expectedIPs,
            XrayStringList? expectIPs,
            DnsQueryStrategy? queryStrategy,
            String? tag,
            int? timeoutMs,
            bool? disableCache,
            bool? serveStale,
            int? serveExpiredTTL,
            bool? finalQuery,
            XrayStringList? unexpectedIPs,
            bool? simplified)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _NameServerConfig() when $default != null:
        return $default(
            _that.address,
            _that.clientIp,
            _that.port,
            _that.skipFallback,
            _that.domains,
            _that.expectedIPs,
            _that.expectIPs,
            _that.queryStrategy,
            _that.tag,
            _that.timeoutMs,
            _that.disableCache,
            _that.serveStale,
            _that.serveExpiredTTL,
            _that.finalQuery,
            _that.unexpectedIPs,
            _that.simplified);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _NameServerConfig extends NameServerConfig {
  const _NameServerConfig(
      {required this.address,
      this.clientIp,
      this.port,
      this.skipFallback,
      this.domains,
      this.expectedIPs,
      this.expectIPs,
      this.queryStrategy,
      this.tag,
      this.timeoutMs,
      this.disableCache,
      this.serveStale,
      this.serveExpiredTTL,
      this.finalQuery,
      this.unexpectedIPs,
      this.simplified})
      : super._();

  @override
  final XrayAddress address;
  @override
  final XrayAddress? clientIp;
  @override
  final int? port;
  @override
  final bool? skipFallback;
  @override
  final XrayStringList? domains;
  @override
  final XrayStringList? expectedIPs;
  @override
  final XrayStringList? expectIPs;
  @override
  final DnsQueryStrategy? queryStrategy;
  @override
  final String? tag;
  @override
  final int? timeoutMs;
  @override
  final bool? disableCache;
  @override
  final bool? serveStale;
  @override
  final int? serveExpiredTTL;
  @override
  final bool? finalQuery;
  @override
  final XrayStringList? unexpectedIPs;
  @override
  final bool? simplified;

  /// Create a copy of NameServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NameServerConfigCopyWith<_NameServerConfig> get copyWith =>
      __$NameServerConfigCopyWithImpl<_NameServerConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NameServerConfig &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.clientIp, clientIp) ||
                other.clientIp == clientIp) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.skipFallback, skipFallback) ||
                other.skipFallback == skipFallback) &&
            (identical(other.domains, domains) || other.domains == domains) &&
            (identical(other.expectedIPs, expectedIPs) ||
                other.expectedIPs == expectedIPs) &&
            (identical(other.expectIPs, expectIPs) ||
                other.expectIPs == expectIPs) &&
            (identical(other.queryStrategy, queryStrategy) ||
                other.queryStrategy == queryStrategy) &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.timeoutMs, timeoutMs) ||
                other.timeoutMs == timeoutMs) &&
            (identical(other.disableCache, disableCache) ||
                other.disableCache == disableCache) &&
            (identical(other.serveStale, serveStale) ||
                other.serveStale == serveStale) &&
            (identical(other.serveExpiredTTL, serveExpiredTTL) ||
                other.serveExpiredTTL == serveExpiredTTL) &&
            (identical(other.finalQuery, finalQuery) ||
                other.finalQuery == finalQuery) &&
            (identical(other.unexpectedIPs, unexpectedIPs) ||
                other.unexpectedIPs == unexpectedIPs) &&
            (identical(other.simplified, simplified) ||
                other.simplified == simplified));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      address,
      clientIp,
      port,
      skipFallback,
      domains,
      expectedIPs,
      expectIPs,
      queryStrategy,
      tag,
      timeoutMs,
      disableCache,
      serveStale,
      serveExpiredTTL,
      finalQuery,
      unexpectedIPs,
      simplified);

  @override
  String toString() {
    return 'NameServerConfig(address: $address, clientIp: $clientIp, port: $port, skipFallback: $skipFallback, domains: $domains, expectedIPs: $expectedIPs, expectIPs: $expectIPs, queryStrategy: $queryStrategy, tag: $tag, timeoutMs: $timeoutMs, disableCache: $disableCache, serveStale: $serveStale, serveExpiredTTL: $serveExpiredTTL, finalQuery: $finalQuery, unexpectedIPs: $unexpectedIPs, simplified: $simplified)';
  }
}

/// @nodoc
abstract mixin class _$NameServerConfigCopyWith<$Res>
    implements $NameServerConfigCopyWith<$Res> {
  factory _$NameServerConfigCopyWith(
          _NameServerConfig value, $Res Function(_NameServerConfig) _then) =
      __$NameServerConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {XrayAddress address,
      XrayAddress? clientIp,
      int? port,
      bool? skipFallback,
      XrayStringList? domains,
      XrayStringList? expectedIPs,
      XrayStringList? expectIPs,
      DnsQueryStrategy? queryStrategy,
      String? tag,
      int? timeoutMs,
      bool? disableCache,
      bool? serveStale,
      int? serveExpiredTTL,
      bool? finalQuery,
      XrayStringList? unexpectedIPs,
      bool? simplified});
}

/// @nodoc
class __$NameServerConfigCopyWithImpl<$Res>
    implements _$NameServerConfigCopyWith<$Res> {
  __$NameServerConfigCopyWithImpl(this._self, this._then);

  final _NameServerConfig _self;
  final $Res Function(_NameServerConfig) _then;

  /// Create a copy of NameServerConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = null,
    Object? clientIp = freezed,
    Object? port = freezed,
    Object? skipFallback = freezed,
    Object? domains = freezed,
    Object? expectedIPs = freezed,
    Object? expectIPs = freezed,
    Object? queryStrategy = freezed,
    Object? tag = freezed,
    Object? timeoutMs = freezed,
    Object? disableCache = freezed,
    Object? serveStale = freezed,
    Object? serveExpiredTTL = freezed,
    Object? finalQuery = freezed,
    Object? unexpectedIPs = freezed,
    Object? simplified = freezed,
  }) {
    return _then(_NameServerConfig(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as XrayAddress,
      clientIp: freezed == clientIp
          ? _self.clientIp
          : clientIp // ignore: cast_nullable_to_non_nullable
              as XrayAddress?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      skipFallback: freezed == skipFallback
          ? _self.skipFallback
          : skipFallback // ignore: cast_nullable_to_non_nullable
              as bool?,
      domains: freezed == domains
          ? _self.domains
          : domains // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      expectedIPs: freezed == expectedIPs
          ? _self.expectedIPs
          : expectedIPs // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      expectIPs: freezed == expectIPs
          ? _self.expectIPs
          : expectIPs // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      queryStrategy: freezed == queryStrategy
          ? _self.queryStrategy
          : queryStrategy // ignore: cast_nullable_to_non_nullable
              as DnsQueryStrategy?,
      tag: freezed == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      timeoutMs: freezed == timeoutMs
          ? _self.timeoutMs
          : timeoutMs // ignore: cast_nullable_to_non_nullable
              as int?,
      disableCache: freezed == disableCache
          ? _self.disableCache
          : disableCache // ignore: cast_nullable_to_non_nullable
              as bool?,
      serveStale: freezed == serveStale
          ? _self.serveStale
          : serveStale // ignore: cast_nullable_to_non_nullable
              as bool?,
      serveExpiredTTL: freezed == serveExpiredTTL
          ? _self.serveExpiredTTL
          : serveExpiredTTL // ignore: cast_nullable_to_non_nullable
              as int?,
      finalQuery: freezed == finalQuery
          ? _self.finalQuery
          : finalQuery // ignore: cast_nullable_to_non_nullable
              as bool?,
      unexpectedIPs: freezed == unexpectedIPs
          ? _self.unexpectedIPs
          : unexpectedIPs // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      simplified: freezed == simplified
          ? _self.simplified
          : simplified // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$ObservatoryConfig {
  List<String>? get subjectSelector;
  String? get probeURL;
  XrayDuration? get probeInterval;
  bool? get enableConcurrency;

  /// Create a copy of ObservatoryConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ObservatoryConfigCopyWith<ObservatoryConfig> get copyWith =>
      _$ObservatoryConfigCopyWithImpl<ObservatoryConfig>(
          this as ObservatoryConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ObservatoryConfig &&
            const DeepCollectionEquality()
                .equals(other.subjectSelector, subjectSelector) &&
            (identical(other.probeURL, probeURL) ||
                other.probeURL == probeURL) &&
            (identical(other.probeInterval, probeInterval) ||
                other.probeInterval == probeInterval) &&
            (identical(other.enableConcurrency, enableConcurrency) ||
                other.enableConcurrency == enableConcurrency));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(subjectSelector),
      probeURL,
      probeInterval,
      enableConcurrency);

  @override
  String toString() {
    return 'ObservatoryConfig(subjectSelector: $subjectSelector, probeURL: $probeURL, probeInterval: $probeInterval, enableConcurrency: $enableConcurrency)';
  }
}

/// @nodoc
abstract mixin class $ObservatoryConfigCopyWith<$Res> {
  factory $ObservatoryConfigCopyWith(
          ObservatoryConfig value, $Res Function(ObservatoryConfig) _then) =
      _$ObservatoryConfigCopyWithImpl;
  @useResult
  $Res call(
      {List<String>? subjectSelector,
      String? probeURL,
      XrayDuration? probeInterval,
      bool? enableConcurrency});
}

/// @nodoc
class _$ObservatoryConfigCopyWithImpl<$Res>
    implements $ObservatoryConfigCopyWith<$Res> {
  _$ObservatoryConfigCopyWithImpl(this._self, this._then);

  final ObservatoryConfig _self;
  final $Res Function(ObservatoryConfig) _then;

  /// Create a copy of ObservatoryConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjectSelector = freezed,
    Object? probeURL = freezed,
    Object? probeInterval = freezed,
    Object? enableConcurrency = freezed,
  }) {
    return _then(_self.copyWith(
      subjectSelector: freezed == subjectSelector
          ? _self.subjectSelector
          : subjectSelector // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      probeURL: freezed == probeURL
          ? _self.probeURL
          : probeURL // ignore: cast_nullable_to_non_nullable
              as String?,
      probeInterval: freezed == probeInterval
          ? _self.probeInterval
          : probeInterval // ignore: cast_nullable_to_non_nullable
              as XrayDuration?,
      enableConcurrency: freezed == enableConcurrency
          ? _self.enableConcurrency
          : enableConcurrency // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ObservatoryConfig].
extension ObservatoryConfigPatterns on ObservatoryConfig {
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
    TResult Function(_ObservatoryConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ObservatoryConfig() when $default != null:
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
    TResult Function(_ObservatoryConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ObservatoryConfig():
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
    TResult? Function(_ObservatoryConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ObservatoryConfig() when $default != null:
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
    TResult Function(List<String>? subjectSelector, String? probeURL,
            XrayDuration? probeInterval, bool? enableConcurrency)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ObservatoryConfig() when $default != null:
        return $default(_that.subjectSelector, _that.probeURL,
            _that.probeInterval, _that.enableConcurrency);
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
    TResult Function(List<String>? subjectSelector, String? probeURL,
            XrayDuration? probeInterval, bool? enableConcurrency)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ObservatoryConfig():
        return $default(_that.subjectSelector, _that.probeURL,
            _that.probeInterval, _that.enableConcurrency);
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
    TResult? Function(List<String>? subjectSelector, String? probeURL,
            XrayDuration? probeInterval, bool? enableConcurrency)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ObservatoryConfig() when $default != null:
        return $default(_that.subjectSelector, _that.probeURL,
            _that.probeInterval, _that.enableConcurrency);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ObservatoryConfig extends ObservatoryConfig {
  const _ObservatoryConfig(
      {final List<String>? subjectSelector,
      this.probeURL,
      this.probeInterval,
      this.enableConcurrency})
      : _subjectSelector = subjectSelector,
        super._();

  final List<String>? _subjectSelector;
  @override
  List<String>? get subjectSelector {
    final value = _subjectSelector;
    if (value == null) return null;
    if (_subjectSelector is EqualUnmodifiableListView) return _subjectSelector;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? probeURL;
  @override
  final XrayDuration? probeInterval;
  @override
  final bool? enableConcurrency;

  /// Create a copy of ObservatoryConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ObservatoryConfigCopyWith<_ObservatoryConfig> get copyWith =>
      __$ObservatoryConfigCopyWithImpl<_ObservatoryConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ObservatoryConfig &&
            const DeepCollectionEquality()
                .equals(other._subjectSelector, _subjectSelector) &&
            (identical(other.probeURL, probeURL) ||
                other.probeURL == probeURL) &&
            (identical(other.probeInterval, probeInterval) ||
                other.probeInterval == probeInterval) &&
            (identical(other.enableConcurrency, enableConcurrency) ||
                other.enableConcurrency == enableConcurrency));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_subjectSelector),
      probeURL,
      probeInterval,
      enableConcurrency);

  @override
  String toString() {
    return 'ObservatoryConfig(subjectSelector: $subjectSelector, probeURL: $probeURL, probeInterval: $probeInterval, enableConcurrency: $enableConcurrency)';
  }
}

/// @nodoc
abstract mixin class _$ObservatoryConfigCopyWith<$Res>
    implements $ObservatoryConfigCopyWith<$Res> {
  factory _$ObservatoryConfigCopyWith(
          _ObservatoryConfig value, $Res Function(_ObservatoryConfig) _then) =
      __$ObservatoryConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<String>? subjectSelector,
      String? probeURL,
      XrayDuration? probeInterval,
      bool? enableConcurrency});
}

/// @nodoc
class __$ObservatoryConfigCopyWithImpl<$Res>
    implements _$ObservatoryConfigCopyWith<$Res> {
  __$ObservatoryConfigCopyWithImpl(this._self, this._then);

  final _ObservatoryConfig _self;
  final $Res Function(_ObservatoryConfig) _then;

  /// Create a copy of ObservatoryConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? subjectSelector = freezed,
    Object? probeURL = freezed,
    Object? probeInterval = freezed,
    Object? enableConcurrency = freezed,
  }) {
    return _then(_ObservatoryConfig(
      subjectSelector: freezed == subjectSelector
          ? _self._subjectSelector
          : subjectSelector // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      probeURL: freezed == probeURL
          ? _self.probeURL
          : probeURL // ignore: cast_nullable_to_non_nullable
              as String?,
      probeInterval: freezed == probeInterval
          ? _self.probeInterval
          : probeInterval // ignore: cast_nullable_to_non_nullable
              as XrayDuration?,
      enableConcurrency: freezed == enableConcurrency
          ? _self.enableConcurrency
          : enableConcurrency // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$Policy {
  int? get handshake;
  @JsonKey(name: 'connIdle')
  int? get connectionIdle;
  int? get uplinkOnly;
  int? get downlinkOnly;
  bool? get statsUserUplink;
  bool? get statsUserDownlink;
  bool? get statsUserOnline;
  int? get bufferSize;

  /// Create a copy of Policy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PolicyCopyWith<Policy> get copyWith =>
      _$PolicyCopyWithImpl<Policy>(this as Policy, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Policy &&
            (identical(other.handshake, handshake) ||
                other.handshake == handshake) &&
            (identical(other.connectionIdle, connectionIdle) ||
                other.connectionIdle == connectionIdle) &&
            (identical(other.uplinkOnly, uplinkOnly) ||
                other.uplinkOnly == uplinkOnly) &&
            (identical(other.downlinkOnly, downlinkOnly) ||
                other.downlinkOnly == downlinkOnly) &&
            (identical(other.statsUserUplink, statsUserUplink) ||
                other.statsUserUplink == statsUserUplink) &&
            (identical(other.statsUserDownlink, statsUserDownlink) ||
                other.statsUserDownlink == statsUserDownlink) &&
            (identical(other.statsUserOnline, statsUserOnline) ||
                other.statsUserOnline == statsUserOnline) &&
            (identical(other.bufferSize, bufferSize) ||
                other.bufferSize == bufferSize));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      handshake,
      connectionIdle,
      uplinkOnly,
      downlinkOnly,
      statsUserUplink,
      statsUserDownlink,
      statsUserOnline,
      bufferSize);

  @override
  String toString() {
    return 'Policy(handshake: $handshake, connectionIdle: $connectionIdle, uplinkOnly: $uplinkOnly, downlinkOnly: $downlinkOnly, statsUserUplink: $statsUserUplink, statsUserDownlink: $statsUserDownlink, statsUserOnline: $statsUserOnline, bufferSize: $bufferSize)';
  }
}

/// @nodoc
abstract mixin class $PolicyCopyWith<$Res> {
  factory $PolicyCopyWith(Policy value, $Res Function(Policy) _then) =
      _$PolicyCopyWithImpl;
  @useResult
  $Res call(
      {int? handshake,
      @JsonKey(name: 'connIdle') int? connectionIdle,
      int? uplinkOnly,
      int? downlinkOnly,
      bool? statsUserUplink,
      bool? statsUserDownlink,
      bool? statsUserOnline,
      int? bufferSize});
}

/// @nodoc
class _$PolicyCopyWithImpl<$Res> implements $PolicyCopyWith<$Res> {
  _$PolicyCopyWithImpl(this._self, this._then);

  final Policy _self;
  final $Res Function(Policy) _then;

  /// Create a copy of Policy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? handshake = freezed,
    Object? connectionIdle = freezed,
    Object? uplinkOnly = freezed,
    Object? downlinkOnly = freezed,
    Object? statsUserUplink = freezed,
    Object? statsUserDownlink = freezed,
    Object? statsUserOnline = freezed,
    Object? bufferSize = freezed,
  }) {
    return _then(_self.copyWith(
      handshake: freezed == handshake
          ? _self.handshake
          : handshake // ignore: cast_nullable_to_non_nullable
              as int?,
      connectionIdle: freezed == connectionIdle
          ? _self.connectionIdle
          : connectionIdle // ignore: cast_nullable_to_non_nullable
              as int?,
      uplinkOnly: freezed == uplinkOnly
          ? _self.uplinkOnly
          : uplinkOnly // ignore: cast_nullable_to_non_nullable
              as int?,
      downlinkOnly: freezed == downlinkOnly
          ? _self.downlinkOnly
          : downlinkOnly // ignore: cast_nullable_to_non_nullable
              as int?,
      statsUserUplink: freezed == statsUserUplink
          ? _self.statsUserUplink
          : statsUserUplink // ignore: cast_nullable_to_non_nullable
              as bool?,
      statsUserDownlink: freezed == statsUserDownlink
          ? _self.statsUserDownlink
          : statsUserDownlink // ignore: cast_nullable_to_non_nullable
              as bool?,
      statsUserOnline: freezed == statsUserOnline
          ? _self.statsUserOnline
          : statsUserOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
      bufferSize: freezed == bufferSize
          ? _self.bufferSize
          : bufferSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// Adds pattern-matching-related methods to [Policy].
extension PolicyPatterns on Policy {
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
    TResult Function(_Policy value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Policy() when $default != null:
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
    TResult Function(_Policy value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Policy():
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
    TResult? Function(_Policy value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Policy() when $default != null:
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
            int? handshake,
            @JsonKey(name: 'connIdle') int? connectionIdle,
            int? uplinkOnly,
            int? downlinkOnly,
            bool? statsUserUplink,
            bool? statsUserDownlink,
            bool? statsUserOnline,
            int? bufferSize)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _Policy() when $default != null:
        return $default(
            _that.handshake,
            _that.connectionIdle,
            _that.uplinkOnly,
            _that.downlinkOnly,
            _that.statsUserUplink,
            _that.statsUserDownlink,
            _that.statsUserOnline,
            _that.bufferSize);
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
            int? handshake,
            @JsonKey(name: 'connIdle') int? connectionIdle,
            int? uplinkOnly,
            int? downlinkOnly,
            bool? statsUserUplink,
            bool? statsUserDownlink,
            bool? statsUserOnline,
            int? bufferSize)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Policy():
        return $default(
            _that.handshake,
            _that.connectionIdle,
            _that.uplinkOnly,
            _that.downlinkOnly,
            _that.statsUserUplink,
            _that.statsUserDownlink,
            _that.statsUserOnline,
            _that.bufferSize);
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
            int? handshake,
            @JsonKey(name: 'connIdle') int? connectionIdle,
            int? uplinkOnly,
            int? downlinkOnly,
            bool? statsUserUplink,
            bool? statsUserDownlink,
            bool? statsUserOnline,
            int? bufferSize)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _Policy() when $default != null:
        return $default(
            _that.handshake,
            _that.connectionIdle,
            _that.uplinkOnly,
            _that.downlinkOnly,
            _that.statsUserUplink,
            _that.statsUserDownlink,
            _that.statsUserOnline,
            _that.bufferSize);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _Policy extends Policy {
  const _Policy(
      {this.handshake,
      @JsonKey(name: 'connIdle') this.connectionIdle,
      this.uplinkOnly,
      this.downlinkOnly,
      this.statsUserUplink,
      this.statsUserDownlink,
      this.statsUserOnline,
      this.bufferSize})
      : super._();

  @override
  final int? handshake;
  @override
  @JsonKey(name: 'connIdle')
  final int? connectionIdle;
  @override
  final int? uplinkOnly;
  @override
  final int? downlinkOnly;
  @override
  final bool? statsUserUplink;
  @override
  final bool? statsUserDownlink;
  @override
  final bool? statsUserOnline;
  @override
  final int? bufferSize;

  /// Create a copy of Policy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PolicyCopyWith<_Policy> get copyWith =>
      __$PolicyCopyWithImpl<_Policy>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Policy &&
            (identical(other.handshake, handshake) ||
                other.handshake == handshake) &&
            (identical(other.connectionIdle, connectionIdle) ||
                other.connectionIdle == connectionIdle) &&
            (identical(other.uplinkOnly, uplinkOnly) ||
                other.uplinkOnly == uplinkOnly) &&
            (identical(other.downlinkOnly, downlinkOnly) ||
                other.downlinkOnly == downlinkOnly) &&
            (identical(other.statsUserUplink, statsUserUplink) ||
                other.statsUserUplink == statsUserUplink) &&
            (identical(other.statsUserDownlink, statsUserDownlink) ||
                other.statsUserDownlink == statsUserDownlink) &&
            (identical(other.statsUserOnline, statsUserOnline) ||
                other.statsUserOnline == statsUserOnline) &&
            (identical(other.bufferSize, bufferSize) ||
                other.bufferSize == bufferSize));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      handshake,
      connectionIdle,
      uplinkOnly,
      downlinkOnly,
      statsUserUplink,
      statsUserDownlink,
      statsUserOnline,
      bufferSize);

  @override
  String toString() {
    return 'Policy(handshake: $handshake, connectionIdle: $connectionIdle, uplinkOnly: $uplinkOnly, downlinkOnly: $downlinkOnly, statsUserUplink: $statsUserUplink, statsUserDownlink: $statsUserDownlink, statsUserOnline: $statsUserOnline, bufferSize: $bufferSize)';
  }
}

/// @nodoc
abstract mixin class _$PolicyCopyWith<$Res> implements $PolicyCopyWith<$Res> {
  factory _$PolicyCopyWith(_Policy value, $Res Function(_Policy) _then) =
      __$PolicyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int? handshake,
      @JsonKey(name: 'connIdle') int? connectionIdle,
      int? uplinkOnly,
      int? downlinkOnly,
      bool? statsUserUplink,
      bool? statsUserDownlink,
      bool? statsUserOnline,
      int? bufferSize});
}

/// @nodoc
class __$PolicyCopyWithImpl<$Res> implements _$PolicyCopyWith<$Res> {
  __$PolicyCopyWithImpl(this._self, this._then);

  final _Policy _self;
  final $Res Function(_Policy) _then;

  /// Create a copy of Policy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? handshake = freezed,
    Object? connectionIdle = freezed,
    Object? uplinkOnly = freezed,
    Object? downlinkOnly = freezed,
    Object? statsUserUplink = freezed,
    Object? statsUserDownlink = freezed,
    Object? statsUserOnline = freezed,
    Object? bufferSize = freezed,
  }) {
    return _then(_Policy(
      handshake: freezed == handshake
          ? _self.handshake
          : handshake // ignore: cast_nullable_to_non_nullable
              as int?,
      connectionIdle: freezed == connectionIdle
          ? _self.connectionIdle
          : connectionIdle // ignore: cast_nullable_to_non_nullable
              as int?,
      uplinkOnly: freezed == uplinkOnly
          ? _self.uplinkOnly
          : uplinkOnly // ignore: cast_nullable_to_non_nullable
              as int?,
      downlinkOnly: freezed == downlinkOnly
          ? _self.downlinkOnly
          : downlinkOnly // ignore: cast_nullable_to_non_nullable
              as int?,
      statsUserUplink: freezed == statsUserUplink
          ? _self.statsUserUplink
          : statsUserUplink // ignore: cast_nullable_to_non_nullable
              as bool?,
      statsUserDownlink: freezed == statsUserDownlink
          ? _self.statsUserDownlink
          : statsUserDownlink // ignore: cast_nullable_to_non_nullable
              as bool?,
      statsUserOnline: freezed == statsUserOnline
          ? _self.statsUserOnline
          : statsUserOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
      bufferSize: freezed == bufferSize
          ? _self.bufferSize
          : bufferSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
mixin _$PolicyConfig {
  Map<int, Policy>? get levels;
  SystemPolicy? get system;

  /// Create a copy of PolicyConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PolicyConfigCopyWith<PolicyConfig> get copyWith =>
      _$PolicyConfigCopyWithImpl<PolicyConfig>(
          this as PolicyConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PolicyConfig &&
            const DeepCollectionEquality().equals(other.levels, levels) &&
            (identical(other.system, system) || other.system == system));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(levels), system);

  @override
  String toString() {
    return 'PolicyConfig(levels: $levels, system: $system)';
  }
}

/// @nodoc
abstract mixin class $PolicyConfigCopyWith<$Res> {
  factory $PolicyConfigCopyWith(
          PolicyConfig value, $Res Function(PolicyConfig) _then) =
      _$PolicyConfigCopyWithImpl;
  @useResult
  $Res call({Map<int, Policy>? levels, SystemPolicy? system});

  $SystemPolicyCopyWith<$Res>? get system;
}

/// @nodoc
class _$PolicyConfigCopyWithImpl<$Res> implements $PolicyConfigCopyWith<$Res> {
  _$PolicyConfigCopyWithImpl(this._self, this._then);

  final PolicyConfig _self;
  final $Res Function(PolicyConfig) _then;

  /// Create a copy of PolicyConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? levels = freezed,
    Object? system = freezed,
  }) {
    return _then(_self.copyWith(
      levels: freezed == levels
          ? _self.levels
          : levels // ignore: cast_nullable_to_non_nullable
              as Map<int, Policy>?,
      system: freezed == system
          ? _self.system
          : system // ignore: cast_nullable_to_non_nullable
              as SystemPolicy?,
    ));
  }

  /// Create a copy of PolicyConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SystemPolicyCopyWith<$Res>? get system {
    if (_self.system == null) {
      return null;
    }

    return $SystemPolicyCopyWith<$Res>(_self.system!, (value) {
      return _then(_self.copyWith(system: value));
    });
  }
}

/// Adds pattern-matching-related methods to [PolicyConfig].
extension PolicyConfigPatterns on PolicyConfig {
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
    TResult Function(_PolicyConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PolicyConfig() when $default != null:
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
    TResult Function(_PolicyConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PolicyConfig():
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
    TResult? Function(_PolicyConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PolicyConfig() when $default != null:
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
    TResult Function(Map<int, Policy>? levels, SystemPolicy? system)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PolicyConfig() when $default != null:
        return $default(_that.levels, _that.system);
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
    TResult Function(Map<int, Policy>? levels, SystemPolicy? system) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PolicyConfig():
        return $default(_that.levels, _that.system);
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
    TResult? Function(Map<int, Policy>? levels, SystemPolicy? system)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PolicyConfig() when $default != null:
        return $default(_that.levels, _that.system);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PolicyConfig extends PolicyConfig {
  const _PolicyConfig({final Map<int, Policy>? levels, this.system})
      : _levels = levels,
        super._();

  final Map<int, Policy>? _levels;
  @override
  Map<int, Policy>? get levels {
    final value = _levels;
    if (value == null) return null;
    if (_levels is EqualUnmodifiableMapView) return _levels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final SystemPolicy? system;

  /// Create a copy of PolicyConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PolicyConfigCopyWith<_PolicyConfig> get copyWith =>
      __$PolicyConfigCopyWithImpl<_PolicyConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PolicyConfig &&
            const DeepCollectionEquality().equals(other._levels, _levels) &&
            (identical(other.system, system) || other.system == system));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_levels), system);

  @override
  String toString() {
    return 'PolicyConfig(levels: $levels, system: $system)';
  }
}

/// @nodoc
abstract mixin class _$PolicyConfigCopyWith<$Res>
    implements $PolicyConfigCopyWith<$Res> {
  factory _$PolicyConfigCopyWith(
          _PolicyConfig value, $Res Function(_PolicyConfig) _then) =
      __$PolicyConfigCopyWithImpl;
  @override
  @useResult
  $Res call({Map<int, Policy>? levels, SystemPolicy? system});

  @override
  $SystemPolicyCopyWith<$Res>? get system;
}

/// @nodoc
class __$PolicyConfigCopyWithImpl<$Res>
    implements _$PolicyConfigCopyWith<$Res> {
  __$PolicyConfigCopyWithImpl(this._self, this._then);

  final _PolicyConfig _self;
  final $Res Function(_PolicyConfig) _then;

  /// Create a copy of PolicyConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? levels = freezed,
    Object? system = freezed,
  }) {
    return _then(_PolicyConfig(
      levels: freezed == levels
          ? _self._levels
          : levels // ignore: cast_nullable_to_non_nullable
              as Map<int, Policy>?,
      system: freezed == system
          ? _self.system
          : system // ignore: cast_nullable_to_non_nullable
              as SystemPolicy?,
    ));
  }

  /// Create a copy of PolicyConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SystemPolicyCopyWith<$Res>? get system {
    if (_self.system == null) {
      return null;
    }

    return $SystemPolicyCopyWith<$Res>(_self.system!, (value) {
      return _then(_self.copyWith(system: value));
    });
  }
}

/// @nodoc
mixin _$PortalConfig {
  String? get tag;
  String? get domain;

  /// Create a copy of PortalConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PortalConfigCopyWith<PortalConfig> get copyWith =>
      _$PortalConfigCopyWithImpl<PortalConfig>(
          this as PortalConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PortalConfig &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.domain, domain) || other.domain == domain));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag, domain);

  @override
  String toString() {
    return 'PortalConfig(tag: $tag, domain: $domain)';
  }
}

/// @nodoc
abstract mixin class $PortalConfigCopyWith<$Res> {
  factory $PortalConfigCopyWith(
          PortalConfig value, $Res Function(PortalConfig) _then) =
      _$PortalConfigCopyWithImpl;
  @useResult
  $Res call({String? tag, String? domain});
}

/// @nodoc
class _$PortalConfigCopyWithImpl<$Res> implements $PortalConfigCopyWith<$Res> {
  _$PortalConfigCopyWithImpl(this._self, this._then);

  final PortalConfig _self;
  final $Res Function(PortalConfig) _then;

  /// Create a copy of PortalConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tag = freezed,
    Object? domain = freezed,
  }) {
    return _then(_self.copyWith(
      tag: freezed == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _self.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [PortalConfig].
extension PortalConfigPatterns on PortalConfig {
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
    TResult Function(_PortalConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PortalConfig() when $default != null:
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
    TResult Function(_PortalConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PortalConfig():
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
    TResult? Function(_PortalConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PortalConfig() when $default != null:
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
    TResult Function(String? tag, String? domain)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _PortalConfig() when $default != null:
        return $default(_that.tag, _that.domain);
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
    TResult Function(String? tag, String? domain) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PortalConfig():
        return $default(_that.tag, _that.domain);
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
    TResult? Function(String? tag, String? domain)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _PortalConfig() when $default != null:
        return $default(_that.tag, _that.domain);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _PortalConfig extends PortalConfig {
  const _PortalConfig({this.tag, this.domain}) : super._();

  @override
  final String? tag;
  @override
  final String? domain;

  /// Create a copy of PortalConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PortalConfigCopyWith<_PortalConfig> get copyWith =>
      __$PortalConfigCopyWithImpl<_PortalConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PortalConfig &&
            (identical(other.tag, tag) || other.tag == tag) &&
            (identical(other.domain, domain) || other.domain == domain));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tag, domain);

  @override
  String toString() {
    return 'PortalConfig(tag: $tag, domain: $domain)';
  }
}

/// @nodoc
abstract mixin class _$PortalConfigCopyWith<$Res>
    implements $PortalConfigCopyWith<$Res> {
  factory _$PortalConfigCopyWith(
          _PortalConfig value, $Res Function(_PortalConfig) _then) =
      __$PortalConfigCopyWithImpl;
  @override
  @useResult
  $Res call({String? tag, String? domain});
}

/// @nodoc
class __$PortalConfigCopyWithImpl<$Res>
    implements _$PortalConfigCopyWith<$Res> {
  __$PortalConfigCopyWithImpl(this._self, this._then);

  final _PortalConfig _self;
  final $Res Function(_PortalConfig) _then;

  /// Create a copy of PortalConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tag = freezed,
    Object? domain = freezed,
  }) {
    return _then(_PortalConfig(
      tag: freezed == tag
          ? _self.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _self.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$ReverseConfig {
  List<BridgeConfig>? get bridges;
  List<PortalConfig>? get portals;

  /// Create a copy of ReverseConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReverseConfigCopyWith<ReverseConfig> get copyWith =>
      _$ReverseConfigCopyWithImpl<ReverseConfig>(
          this as ReverseConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReverseConfig &&
            const DeepCollectionEquality().equals(other.bridges, bridges) &&
            const DeepCollectionEquality().equals(other.portals, portals));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(bridges),
      const DeepCollectionEquality().hash(portals));

  @override
  String toString() {
    return 'ReverseConfig(bridges: $bridges, portals: $portals)';
  }
}

/// @nodoc
abstract mixin class $ReverseConfigCopyWith<$Res> {
  factory $ReverseConfigCopyWith(
          ReverseConfig value, $Res Function(ReverseConfig) _then) =
      _$ReverseConfigCopyWithImpl;
  @useResult
  $Res call({List<BridgeConfig>? bridges, List<PortalConfig>? portals});
}

/// @nodoc
class _$ReverseConfigCopyWithImpl<$Res>
    implements $ReverseConfigCopyWith<$Res> {
  _$ReverseConfigCopyWithImpl(this._self, this._then);

  final ReverseConfig _self;
  final $Res Function(ReverseConfig) _then;

  /// Create a copy of ReverseConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bridges = freezed,
    Object? portals = freezed,
  }) {
    return _then(_self.copyWith(
      bridges: freezed == bridges
          ? _self.bridges
          : bridges // ignore: cast_nullable_to_non_nullable
              as List<BridgeConfig>?,
      portals: freezed == portals
          ? _self.portals
          : portals // ignore: cast_nullable_to_non_nullable
              as List<PortalConfig>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [ReverseConfig].
extension ReverseConfigPatterns on ReverseConfig {
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
    TResult Function(_ReverseConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReverseConfig() when $default != null:
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
    TResult Function(_ReverseConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseConfig():
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
    TResult? Function(_ReverseConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseConfig() when $default != null:
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
    TResult Function(List<BridgeConfig>? bridges, List<PortalConfig>? portals)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ReverseConfig() when $default != null:
        return $default(_that.bridges, _that.portals);
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
    TResult Function(List<BridgeConfig>? bridges, List<PortalConfig>? portals)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseConfig():
        return $default(_that.bridges, _that.portals);
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
    TResult? Function(List<BridgeConfig>? bridges, List<PortalConfig>? portals)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ReverseConfig() when $default != null:
        return $default(_that.bridges, _that.portals);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ReverseConfig extends ReverseConfig {
  const _ReverseConfig(
      {final List<BridgeConfig>? bridges, final List<PortalConfig>? portals})
      : _bridges = bridges,
        _portals = portals,
        super._();

  final List<BridgeConfig>? _bridges;
  @override
  List<BridgeConfig>? get bridges {
    final value = _bridges;
    if (value == null) return null;
    if (_bridges is EqualUnmodifiableListView) return _bridges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PortalConfig>? _portals;
  @override
  List<PortalConfig>? get portals {
    final value = _portals;
    if (value == null) return null;
    if (_portals is EqualUnmodifiableListView) return _portals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of ReverseConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReverseConfigCopyWith<_ReverseConfig> get copyWith =>
      __$ReverseConfigCopyWithImpl<_ReverseConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReverseConfig &&
            const DeepCollectionEquality().equals(other._bridges, _bridges) &&
            const DeepCollectionEquality().equals(other._portals, _portals));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_bridges),
      const DeepCollectionEquality().hash(_portals));

  @override
  String toString() {
    return 'ReverseConfig(bridges: $bridges, portals: $portals)';
  }
}

/// @nodoc
abstract mixin class _$ReverseConfigCopyWith<$Res>
    implements $ReverseConfigCopyWith<$Res> {
  factory _$ReverseConfigCopyWith(
          _ReverseConfig value, $Res Function(_ReverseConfig) _then) =
      __$ReverseConfigCopyWithImpl;
  @override
  @useResult
  $Res call({List<BridgeConfig>? bridges, List<PortalConfig>? portals});
}

/// @nodoc
class __$ReverseConfigCopyWithImpl<$Res>
    implements _$ReverseConfigCopyWith<$Res> {
  __$ReverseConfigCopyWithImpl(this._self, this._then);

  final _ReverseConfig _self;
  final $Res Function(_ReverseConfig) _then;

  /// Create a copy of ReverseConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? bridges = freezed,
    Object? portals = freezed,
  }) {
    return _then(_ReverseConfig(
      bridges: freezed == bridges
          ? _self._bridges
          : bridges // ignore: cast_nullable_to_non_nullable
              as List<BridgeConfig>?,
      portals: freezed == portals
          ? _self._portals
          : portals // ignore: cast_nullable_to_non_nullable
              as List<PortalConfig>?,
    ));
  }
}

/// @nodoc
mixin _$RouterConfig {
  @JsonKey(name: 'rules')
  List<RouterRule>? get ruleList;
  RouterDomainStrategy? get domainStrategy;
  List<BalancingRule>? get balancers;

  /// Create a copy of RouterConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RouterConfigCopyWith<RouterConfig> get copyWith =>
      _$RouterConfigCopyWithImpl<RouterConfig>(
          this as RouterConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RouterConfig &&
            const DeepCollectionEquality().equals(other.ruleList, ruleList) &&
            (identical(other.domainStrategy, domainStrategy) ||
                other.domainStrategy == domainStrategy) &&
            const DeepCollectionEquality().equals(other.balancers, balancers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ruleList),
      domainStrategy,
      const DeepCollectionEquality().hash(balancers));

  @override
  String toString() {
    return 'RouterConfig(ruleList: $ruleList, domainStrategy: $domainStrategy, balancers: $balancers)';
  }
}

/// @nodoc
abstract mixin class $RouterConfigCopyWith<$Res> {
  factory $RouterConfigCopyWith(
          RouterConfig value, $Res Function(RouterConfig) _then) =
      _$RouterConfigCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'rules') List<RouterRule>? ruleList,
      RouterDomainStrategy? domainStrategy,
      List<BalancingRule>? balancers});
}

/// @nodoc
class _$RouterConfigCopyWithImpl<$Res> implements $RouterConfigCopyWith<$Res> {
  _$RouterConfigCopyWithImpl(this._self, this._then);

  final RouterConfig _self;
  final $Res Function(RouterConfig) _then;

  /// Create a copy of RouterConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ruleList = freezed,
    Object? domainStrategy = freezed,
    Object? balancers = freezed,
  }) {
    return _then(_self.copyWith(
      ruleList: freezed == ruleList
          ? _self.ruleList
          : ruleList // ignore: cast_nullable_to_non_nullable
              as List<RouterRule>?,
      domainStrategy: freezed == domainStrategy
          ? _self.domainStrategy
          : domainStrategy // ignore: cast_nullable_to_non_nullable
              as RouterDomainStrategy?,
      balancers: freezed == balancers
          ? _self.balancers
          : balancers // ignore: cast_nullable_to_non_nullable
              as List<BalancingRule>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [RouterConfig].
extension RouterConfigPatterns on RouterConfig {
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
    TResult Function(_RouterConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RouterConfig() when $default != null:
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
    TResult Function(_RouterConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RouterConfig():
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
    TResult? Function(_RouterConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RouterConfig() when $default != null:
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
            @JsonKey(name: 'rules') List<RouterRule>? ruleList,
            RouterDomainStrategy? domainStrategy,
            List<BalancingRule>? balancers)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RouterConfig() when $default != null:
        return $default(_that.ruleList, _that.domainStrategy, _that.balancers);
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
            @JsonKey(name: 'rules') List<RouterRule>? ruleList,
            RouterDomainStrategy? domainStrategy,
            List<BalancingRule>? balancers)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RouterConfig():
        return $default(_that.ruleList, _that.domainStrategy, _that.balancers);
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
            @JsonKey(name: 'rules') List<RouterRule>? ruleList,
            RouterDomainStrategy? domainStrategy,
            List<BalancingRule>? balancers)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RouterConfig() when $default != null:
        return $default(_that.ruleList, _that.domainStrategy, _that.balancers);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _RouterConfig extends RouterConfig {
  const _RouterConfig(
      {@JsonKey(name: 'rules') final List<RouterRule>? ruleList,
      this.domainStrategy,
      final List<BalancingRule>? balancers})
      : _ruleList = ruleList,
        _balancers = balancers,
        super._();

  final List<RouterRule>? _ruleList;
  @override
  @JsonKey(name: 'rules')
  List<RouterRule>? get ruleList {
    final value = _ruleList;
    if (value == null) return null;
    if (_ruleList is EqualUnmodifiableListView) return _ruleList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final RouterDomainStrategy? domainStrategy;
  final List<BalancingRule>? _balancers;
  @override
  List<BalancingRule>? get balancers {
    final value = _balancers;
    if (value == null) return null;
    if (_balancers is EqualUnmodifiableListView) return _balancers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of RouterConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RouterConfigCopyWith<_RouterConfig> get copyWith =>
      __$RouterConfigCopyWithImpl<_RouterConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RouterConfig &&
            const DeepCollectionEquality().equals(other._ruleList, _ruleList) &&
            (identical(other.domainStrategy, domainStrategy) ||
                other.domainStrategy == domainStrategy) &&
            const DeepCollectionEquality()
                .equals(other._balancers, _balancers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_ruleList),
      domainStrategy,
      const DeepCollectionEquality().hash(_balancers));

  @override
  String toString() {
    return 'RouterConfig(ruleList: $ruleList, domainStrategy: $domainStrategy, balancers: $balancers)';
  }
}

/// @nodoc
abstract mixin class _$RouterConfigCopyWith<$Res>
    implements $RouterConfigCopyWith<$Res> {
  factory _$RouterConfigCopyWith(
          _RouterConfig value, $Res Function(_RouterConfig) _then) =
      __$RouterConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'rules') List<RouterRule>? ruleList,
      RouterDomainStrategy? domainStrategy,
      List<BalancingRule>? balancers});
}

/// @nodoc
class __$RouterConfigCopyWithImpl<$Res>
    implements _$RouterConfigCopyWith<$Res> {
  __$RouterConfigCopyWithImpl(this._self, this._then);

  final _RouterConfig _self;
  final $Res Function(_RouterConfig) _then;

  /// Create a copy of RouterConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? ruleList = freezed,
    Object? domainStrategy = freezed,
    Object? balancers = freezed,
  }) {
    return _then(_RouterConfig(
      ruleList: freezed == ruleList
          ? _self._ruleList
          : ruleList // ignore: cast_nullable_to_non_nullable
              as List<RouterRule>?,
      domainStrategy: freezed == domainStrategy
          ? _self.domainStrategy
          : domainStrategy // ignore: cast_nullable_to_non_nullable
              as RouterDomainStrategy?,
      balancers: freezed == balancers
          ? _self._balancers
          : balancers // ignore: cast_nullable_to_non_nullable
              as List<BalancingRule>?,
    ));
  }
}

/// @nodoc
mixin _$RouterRule {
  String? get ruleTag;
  String? get outboundTag;
  String? get balancerTag;
  XrayStringList? get domain;
  XrayStringList? get domains;
  XrayStringList? get ip;
  XrayPortList? get port;
  XrayNetworkList? get network;
  XrayStringList? get sourceIP;
  XrayStringList? get source;
  XrayPortList? get sourcePort;
  XrayStringList? get user;
  XrayPortList? get vlessRoute;
  XrayStringList? get inboundTag;
  @JsonKey(name: 'protocol')
  XrayStringList? get protocols;
  @JsonKey(name: 'attrs')
  Map<String, String>? get attributes;
  XrayStringList? get localIP;
  XrayPortList? get localPort;
  XrayStringList? get process;
  WebhookRuleConfig? get webhook;

  /// Create a copy of RouterRule
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RouterRuleCopyWith<RouterRule> get copyWith =>
      _$RouterRuleCopyWithImpl<RouterRule>(this as RouterRule, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RouterRule &&
            (identical(other.ruleTag, ruleTag) || other.ruleTag == ruleTag) &&
            (identical(other.outboundTag, outboundTag) ||
                other.outboundTag == outboundTag) &&
            (identical(other.balancerTag, balancerTag) ||
                other.balancerTag == balancerTag) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.domains, domains) || other.domains == domains) &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.sourceIP, sourceIP) ||
                other.sourceIP == sourceIP) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.sourcePort, sourcePort) ||
                other.sourcePort == sourcePort) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.vlessRoute, vlessRoute) ||
                other.vlessRoute == vlessRoute) &&
            (identical(other.inboundTag, inboundTag) ||
                other.inboundTag == inboundTag) &&
            (identical(other.protocols, protocols) ||
                other.protocols == protocols) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes) &&
            (identical(other.localIP, localIP) || other.localIP == localIP) &&
            (identical(other.localPort, localPort) ||
                other.localPort == localPort) &&
            (identical(other.process, process) || other.process == process) &&
            (identical(other.webhook, webhook) || other.webhook == webhook));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        ruleTag,
        outboundTag,
        balancerTag,
        domain,
        domains,
        ip,
        port,
        network,
        sourceIP,
        source,
        sourcePort,
        user,
        vlessRoute,
        inboundTag,
        protocols,
        const DeepCollectionEquality().hash(attributes),
        localIP,
        localPort,
        process,
        webhook
      ]);

  @override
  String toString() {
    return 'RouterRule(ruleTag: $ruleTag, outboundTag: $outboundTag, balancerTag: $balancerTag, domain: $domain, domains: $domains, ip: $ip, port: $port, network: $network, sourceIP: $sourceIP, source: $source, sourcePort: $sourcePort, user: $user, vlessRoute: $vlessRoute, inboundTag: $inboundTag, protocols: $protocols, attributes: $attributes, localIP: $localIP, localPort: $localPort, process: $process, webhook: $webhook)';
  }
}

/// @nodoc
abstract mixin class $RouterRuleCopyWith<$Res> {
  factory $RouterRuleCopyWith(
          RouterRule value, $Res Function(RouterRule) _then) =
      _$RouterRuleCopyWithImpl;
  @useResult
  $Res call(
      {String? ruleTag,
      String? outboundTag,
      String? balancerTag,
      XrayStringList? domain,
      XrayStringList? domains,
      XrayStringList? ip,
      XrayPortList? port,
      XrayNetworkList? network,
      XrayStringList? sourceIP,
      XrayStringList? source,
      XrayPortList? sourcePort,
      XrayStringList? user,
      XrayPortList? vlessRoute,
      XrayStringList? inboundTag,
      @JsonKey(name: 'protocol') XrayStringList? protocols,
      @JsonKey(name: 'attrs') Map<String, String>? attributes,
      XrayStringList? localIP,
      XrayPortList? localPort,
      XrayStringList? process,
      WebhookRuleConfig? webhook});

  $WebhookRuleConfigCopyWith<$Res>? get webhook;
}

/// @nodoc
class _$RouterRuleCopyWithImpl<$Res> implements $RouterRuleCopyWith<$Res> {
  _$RouterRuleCopyWithImpl(this._self, this._then);

  final RouterRule _self;
  final $Res Function(RouterRule) _then;

  /// Create a copy of RouterRule
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ruleTag = freezed,
    Object? outboundTag = freezed,
    Object? balancerTag = freezed,
    Object? domain = freezed,
    Object? domains = freezed,
    Object? ip = freezed,
    Object? port = freezed,
    Object? network = freezed,
    Object? sourceIP = freezed,
    Object? source = freezed,
    Object? sourcePort = freezed,
    Object? user = freezed,
    Object? vlessRoute = freezed,
    Object? inboundTag = freezed,
    Object? protocols = freezed,
    Object? attributes = freezed,
    Object? localIP = freezed,
    Object? localPort = freezed,
    Object? process = freezed,
    Object? webhook = freezed,
  }) {
    return _then(_self.copyWith(
      ruleTag: freezed == ruleTag
          ? _self.ruleTag
          : ruleTag // ignore: cast_nullable_to_non_nullable
              as String?,
      outboundTag: freezed == outboundTag
          ? _self.outboundTag
          : outboundTag // ignore: cast_nullable_to_non_nullable
              as String?,
      balancerTag: freezed == balancerTag
          ? _self.balancerTag
          : balancerTag // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _self.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      domains: freezed == domains
          ? _self.domains
          : domains // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      ip: freezed == ip
          ? _self.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as XrayPortList?,
      network: freezed == network
          ? _self.network
          : network // ignore: cast_nullable_to_non_nullable
              as XrayNetworkList?,
      sourceIP: freezed == sourceIP
          ? _self.sourceIP
          : sourceIP // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      source: freezed == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      sourcePort: freezed == sourcePort
          ? _self.sourcePort
          : sourcePort // ignore: cast_nullable_to_non_nullable
              as XrayPortList?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      vlessRoute: freezed == vlessRoute
          ? _self.vlessRoute
          : vlessRoute // ignore: cast_nullable_to_non_nullable
              as XrayPortList?,
      inboundTag: freezed == inboundTag
          ? _self.inboundTag
          : inboundTag // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      protocols: freezed == protocols
          ? _self.protocols
          : protocols // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      attributes: freezed == attributes
          ? _self.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      localIP: freezed == localIP
          ? _self.localIP
          : localIP // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      localPort: freezed == localPort
          ? _self.localPort
          : localPort // ignore: cast_nullable_to_non_nullable
              as XrayPortList?,
      process: freezed == process
          ? _self.process
          : process // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      webhook: freezed == webhook
          ? _self.webhook
          : webhook // ignore: cast_nullable_to_non_nullable
              as WebhookRuleConfig?,
    ));
  }

  /// Create a copy of RouterRule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebhookRuleConfigCopyWith<$Res>? get webhook {
    if (_self.webhook == null) {
      return null;
    }

    return $WebhookRuleConfigCopyWith<$Res>(_self.webhook!, (value) {
      return _then(_self.copyWith(webhook: value));
    });
  }
}

/// Adds pattern-matching-related methods to [RouterRule].
extension RouterRulePatterns on RouterRule {
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
    TResult Function(_RouterRule value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RouterRule() when $default != null:
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
    TResult Function(_RouterRule value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RouterRule():
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
    TResult? Function(_RouterRule value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RouterRule() when $default != null:
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
            String? ruleTag,
            String? outboundTag,
            String? balancerTag,
            XrayStringList? domain,
            XrayStringList? domains,
            XrayStringList? ip,
            XrayPortList? port,
            XrayNetworkList? network,
            XrayStringList? sourceIP,
            XrayStringList? source,
            XrayPortList? sourcePort,
            XrayStringList? user,
            XrayPortList? vlessRoute,
            XrayStringList? inboundTag,
            @JsonKey(name: 'protocol') XrayStringList? protocols,
            @JsonKey(name: 'attrs') Map<String, String>? attributes,
            XrayStringList? localIP,
            XrayPortList? localPort,
            XrayStringList? process,
            WebhookRuleConfig? webhook)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _RouterRule() when $default != null:
        return $default(
            _that.ruleTag,
            _that.outboundTag,
            _that.balancerTag,
            _that.domain,
            _that.domains,
            _that.ip,
            _that.port,
            _that.network,
            _that.sourceIP,
            _that.source,
            _that.sourcePort,
            _that.user,
            _that.vlessRoute,
            _that.inboundTag,
            _that.protocols,
            _that.attributes,
            _that.localIP,
            _that.localPort,
            _that.process,
            _that.webhook);
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
            String? ruleTag,
            String? outboundTag,
            String? balancerTag,
            XrayStringList? domain,
            XrayStringList? domains,
            XrayStringList? ip,
            XrayPortList? port,
            XrayNetworkList? network,
            XrayStringList? sourceIP,
            XrayStringList? source,
            XrayPortList? sourcePort,
            XrayStringList? user,
            XrayPortList? vlessRoute,
            XrayStringList? inboundTag,
            @JsonKey(name: 'protocol') XrayStringList? protocols,
            @JsonKey(name: 'attrs') Map<String, String>? attributes,
            XrayStringList? localIP,
            XrayPortList? localPort,
            XrayStringList? process,
            WebhookRuleConfig? webhook)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RouterRule():
        return $default(
            _that.ruleTag,
            _that.outboundTag,
            _that.balancerTag,
            _that.domain,
            _that.domains,
            _that.ip,
            _that.port,
            _that.network,
            _that.sourceIP,
            _that.source,
            _that.sourcePort,
            _that.user,
            _that.vlessRoute,
            _that.inboundTag,
            _that.protocols,
            _that.attributes,
            _that.localIP,
            _that.localPort,
            _that.process,
            _that.webhook);
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
            String? ruleTag,
            String? outboundTag,
            String? balancerTag,
            XrayStringList? domain,
            XrayStringList? domains,
            XrayStringList? ip,
            XrayPortList? port,
            XrayNetworkList? network,
            XrayStringList? sourceIP,
            XrayStringList? source,
            XrayPortList? sourcePort,
            XrayStringList? user,
            XrayPortList? vlessRoute,
            XrayStringList? inboundTag,
            @JsonKey(name: 'protocol') XrayStringList? protocols,
            @JsonKey(name: 'attrs') Map<String, String>? attributes,
            XrayStringList? localIP,
            XrayPortList? localPort,
            XrayStringList? process,
            WebhookRuleConfig? webhook)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _RouterRule() when $default != null:
        return $default(
            _that.ruleTag,
            _that.outboundTag,
            _that.balancerTag,
            _that.domain,
            _that.domains,
            _that.ip,
            _that.port,
            _that.network,
            _that.sourceIP,
            _that.source,
            _that.sourcePort,
            _that.user,
            _that.vlessRoute,
            _that.inboundTag,
            _that.protocols,
            _that.attributes,
            _that.localIP,
            _that.localPort,
            _that.process,
            _that.webhook);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _RouterRule extends RouterRule {
  const _RouterRule(
      {this.ruleTag,
      this.outboundTag,
      this.balancerTag,
      this.domain,
      this.domains,
      this.ip,
      this.port,
      this.network,
      this.sourceIP,
      this.source,
      this.sourcePort,
      this.user,
      this.vlessRoute,
      this.inboundTag,
      @JsonKey(name: 'protocol') this.protocols,
      @JsonKey(name: 'attrs') final Map<String, String>? attributes,
      this.localIP,
      this.localPort,
      this.process,
      this.webhook})
      : _attributes = attributes,
        super._();

  @override
  final String? ruleTag;
  @override
  final String? outboundTag;
  @override
  final String? balancerTag;
  @override
  final XrayStringList? domain;
  @override
  final XrayStringList? domains;
  @override
  final XrayStringList? ip;
  @override
  final XrayPortList? port;
  @override
  final XrayNetworkList? network;
  @override
  final XrayStringList? sourceIP;
  @override
  final XrayStringList? source;
  @override
  final XrayPortList? sourcePort;
  @override
  final XrayStringList? user;
  @override
  final XrayPortList? vlessRoute;
  @override
  final XrayStringList? inboundTag;
  @override
  @JsonKey(name: 'protocol')
  final XrayStringList? protocols;
  final Map<String, String>? _attributes;
  @override
  @JsonKey(name: 'attrs')
  Map<String, String>? get attributes {
    final value = _attributes;
    if (value == null) return null;
    if (_attributes is EqualUnmodifiableMapView) return _attributes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final XrayStringList? localIP;
  @override
  final XrayPortList? localPort;
  @override
  final XrayStringList? process;
  @override
  final WebhookRuleConfig? webhook;

  /// Create a copy of RouterRule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RouterRuleCopyWith<_RouterRule> get copyWith =>
      __$RouterRuleCopyWithImpl<_RouterRule>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RouterRule &&
            (identical(other.ruleTag, ruleTag) || other.ruleTag == ruleTag) &&
            (identical(other.outboundTag, outboundTag) ||
                other.outboundTag == outboundTag) &&
            (identical(other.balancerTag, balancerTag) ||
                other.balancerTag == balancerTag) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.domains, domains) || other.domains == domains) &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.network, network) || other.network == network) &&
            (identical(other.sourceIP, sourceIP) ||
                other.sourceIP == sourceIP) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.sourcePort, sourcePort) ||
                other.sourcePort == sourcePort) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.vlessRoute, vlessRoute) ||
                other.vlessRoute == vlessRoute) &&
            (identical(other.inboundTag, inboundTag) ||
                other.inboundTag == inboundTag) &&
            (identical(other.protocols, protocols) ||
                other.protocols == protocols) &&
            const DeepCollectionEquality()
                .equals(other._attributes, _attributes) &&
            (identical(other.localIP, localIP) || other.localIP == localIP) &&
            (identical(other.localPort, localPort) ||
                other.localPort == localPort) &&
            (identical(other.process, process) || other.process == process) &&
            (identical(other.webhook, webhook) || other.webhook == webhook));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        ruleTag,
        outboundTag,
        balancerTag,
        domain,
        domains,
        ip,
        port,
        network,
        sourceIP,
        source,
        sourcePort,
        user,
        vlessRoute,
        inboundTag,
        protocols,
        const DeepCollectionEquality().hash(_attributes),
        localIP,
        localPort,
        process,
        webhook
      ]);

  @override
  String toString() {
    return 'RouterRule(ruleTag: $ruleTag, outboundTag: $outboundTag, balancerTag: $balancerTag, domain: $domain, domains: $domains, ip: $ip, port: $port, network: $network, sourceIP: $sourceIP, source: $source, sourcePort: $sourcePort, user: $user, vlessRoute: $vlessRoute, inboundTag: $inboundTag, protocols: $protocols, attributes: $attributes, localIP: $localIP, localPort: $localPort, process: $process, webhook: $webhook)';
  }
}

/// @nodoc
abstract mixin class _$RouterRuleCopyWith<$Res>
    implements $RouterRuleCopyWith<$Res> {
  factory _$RouterRuleCopyWith(
          _RouterRule value, $Res Function(_RouterRule) _then) =
      __$RouterRuleCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? ruleTag,
      String? outboundTag,
      String? balancerTag,
      XrayStringList? domain,
      XrayStringList? domains,
      XrayStringList? ip,
      XrayPortList? port,
      XrayNetworkList? network,
      XrayStringList? sourceIP,
      XrayStringList? source,
      XrayPortList? sourcePort,
      XrayStringList? user,
      XrayPortList? vlessRoute,
      XrayStringList? inboundTag,
      @JsonKey(name: 'protocol') XrayStringList? protocols,
      @JsonKey(name: 'attrs') Map<String, String>? attributes,
      XrayStringList? localIP,
      XrayPortList? localPort,
      XrayStringList? process,
      WebhookRuleConfig? webhook});

  @override
  $WebhookRuleConfigCopyWith<$Res>? get webhook;
}

/// @nodoc
class __$RouterRuleCopyWithImpl<$Res> implements _$RouterRuleCopyWith<$Res> {
  __$RouterRuleCopyWithImpl(this._self, this._then);

  final _RouterRule _self;
  final $Res Function(_RouterRule) _then;

  /// Create a copy of RouterRule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? ruleTag = freezed,
    Object? outboundTag = freezed,
    Object? balancerTag = freezed,
    Object? domain = freezed,
    Object? domains = freezed,
    Object? ip = freezed,
    Object? port = freezed,
    Object? network = freezed,
    Object? sourceIP = freezed,
    Object? source = freezed,
    Object? sourcePort = freezed,
    Object? user = freezed,
    Object? vlessRoute = freezed,
    Object? inboundTag = freezed,
    Object? protocols = freezed,
    Object? attributes = freezed,
    Object? localIP = freezed,
    Object? localPort = freezed,
    Object? process = freezed,
    Object? webhook = freezed,
  }) {
    return _then(_RouterRule(
      ruleTag: freezed == ruleTag
          ? _self.ruleTag
          : ruleTag // ignore: cast_nullable_to_non_nullable
              as String?,
      outboundTag: freezed == outboundTag
          ? _self.outboundTag
          : outboundTag // ignore: cast_nullable_to_non_nullable
              as String?,
      balancerTag: freezed == balancerTag
          ? _self.balancerTag
          : balancerTag // ignore: cast_nullable_to_non_nullable
              as String?,
      domain: freezed == domain
          ? _self.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      domains: freezed == domains
          ? _self.domains
          : domains // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      ip: freezed == ip
          ? _self.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      port: freezed == port
          ? _self.port
          : port // ignore: cast_nullable_to_non_nullable
              as XrayPortList?,
      network: freezed == network
          ? _self.network
          : network // ignore: cast_nullable_to_non_nullable
              as XrayNetworkList?,
      sourceIP: freezed == sourceIP
          ? _self.sourceIP
          : sourceIP // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      source: freezed == source
          ? _self.source
          : source // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      sourcePort: freezed == sourcePort
          ? _self.sourcePort
          : sourcePort // ignore: cast_nullable_to_non_nullable
              as XrayPortList?,
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      vlessRoute: freezed == vlessRoute
          ? _self.vlessRoute
          : vlessRoute // ignore: cast_nullable_to_non_nullable
              as XrayPortList?,
      inboundTag: freezed == inboundTag
          ? _self.inboundTag
          : inboundTag // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      protocols: freezed == protocols
          ? _self.protocols
          : protocols // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      attributes: freezed == attributes
          ? _self._attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
      localIP: freezed == localIP
          ? _self.localIP
          : localIP // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      localPort: freezed == localPort
          ? _self.localPort
          : localPort // ignore: cast_nullable_to_non_nullable
              as XrayPortList?,
      process: freezed == process
          ? _self.process
          : process // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      webhook: freezed == webhook
          ? _self.webhook
          : webhook // ignore: cast_nullable_to_non_nullable
              as WebhookRuleConfig?,
    ));
  }

  /// Create a copy of RouterRule
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WebhookRuleConfigCopyWith<$Res>? get webhook {
    if (_self.webhook == null) {
      return null;
    }

    return $WebhookRuleConfigCopyWith<$Res>(_self.webhook!, (value) {
      return _then(_self.copyWith(webhook: value));
    });
  }
}

/// @nodoc
mixin _$StatsConfig {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is StatsConfig);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StatsConfig()';
  }
}

/// @nodoc
class $StatsConfigCopyWith<$Res> {
  $StatsConfigCopyWith(StatsConfig _, $Res Function(StatsConfig) __);
}

/// Adds pattern-matching-related methods to [StatsConfig].
extension StatsConfigPatterns on StatsConfig {
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
    TResult Function(_StatsConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StatsConfig() when $default != null:
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
    TResult Function(_StatsConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StatsConfig():
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
    TResult? Function(_StatsConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StatsConfig() when $default != null:
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
    TResult Function()? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StatsConfig() when $default != null:
        return $default();
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
    TResult Function() $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StatsConfig():
        return $default();
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
    TResult? Function()? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StatsConfig() when $default != null:
        return $default();
      case _:
        return null;
    }
  }
}

/// @nodoc

class _StatsConfig extends StatsConfig {
  const _StatsConfig() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _StatsConfig);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'StatsConfig()';
  }
}

/// @nodoc
mixin _$StrategyConfig {
  BalancingStrategyType? get type;
  XrayStrategySettings? get settings;

  /// Create a copy of StrategyConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StrategyConfigCopyWith<StrategyConfig> get copyWith =>
      _$StrategyConfigCopyWithImpl<StrategyConfig>(
          this as StrategyConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StrategyConfig &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, settings);

  @override
  String toString() {
    return 'StrategyConfig(type: $type, settings: $settings)';
  }
}

/// @nodoc
abstract mixin class $StrategyConfigCopyWith<$Res> {
  factory $StrategyConfigCopyWith(
          StrategyConfig value, $Res Function(StrategyConfig) _then) =
      _$StrategyConfigCopyWithImpl;
  @useResult
  $Res call({BalancingStrategyType? type, XrayStrategySettings? settings});
}

/// @nodoc
class _$StrategyConfigCopyWithImpl<$Res>
    implements $StrategyConfigCopyWith<$Res> {
  _$StrategyConfigCopyWithImpl(this._self, this._then);

  final StrategyConfig _self;
  final $Res Function(StrategyConfig) _then;

  /// Create a copy of StrategyConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? settings = freezed,
  }) {
    return _then(_self.copyWith(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as BalancingStrategyType?,
      settings: freezed == settings
          ? _self.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as XrayStrategySettings?,
    ));
  }
}

/// Adds pattern-matching-related methods to [StrategyConfig].
extension StrategyConfigPatterns on StrategyConfig {
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
    TResult Function(_StrategyConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StrategyConfig() when $default != null:
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
    TResult Function(_StrategyConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StrategyConfig():
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
    TResult? Function(_StrategyConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StrategyConfig() when $default != null:
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
            BalancingStrategyType? type, XrayStrategySettings? settings)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StrategyConfig() when $default != null:
        return $default(_that.type, _that.settings);
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
            BalancingStrategyType? type, XrayStrategySettings? settings)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StrategyConfig():
        return $default(_that.type, _that.settings);
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
            BalancingStrategyType? type, XrayStrategySettings? settings)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StrategyConfig() when $default != null:
        return $default(_that.type, _that.settings);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _StrategyConfig extends StrategyConfig {
  const _StrategyConfig({this.type, this.settings}) : super._();

  @override
  final BalancingStrategyType? type;
  @override
  final XrayStrategySettings? settings;

  /// Create a copy of StrategyConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StrategyConfigCopyWith<_StrategyConfig> get copyWith =>
      __$StrategyConfigCopyWithImpl<_StrategyConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StrategyConfig &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, settings);

  @override
  String toString() {
    return 'StrategyConfig(type: $type, settings: $settings)';
  }
}

/// @nodoc
abstract mixin class _$StrategyConfigCopyWith<$Res>
    implements $StrategyConfigCopyWith<$Res> {
  factory _$StrategyConfigCopyWith(
          _StrategyConfig value, $Res Function(_StrategyConfig) _then) =
      __$StrategyConfigCopyWithImpl;
  @override
  @useResult
  $Res call({BalancingStrategyType? type, XrayStrategySettings? settings});
}

/// @nodoc
class __$StrategyConfigCopyWithImpl<$Res>
    implements _$StrategyConfigCopyWith<$Res> {
  __$StrategyConfigCopyWithImpl(this._self, this._then);

  final _StrategyConfig _self;
  final $Res Function(_StrategyConfig) _then;

  /// Create a copy of StrategyConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? type = freezed,
    Object? settings = freezed,
  }) {
    return _then(_StrategyConfig(
      type: freezed == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as BalancingStrategyType?,
      settings: freezed == settings
          ? _self.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as XrayStrategySettings?,
    ));
  }
}

/// @nodoc
mixin _$StrategyLeastLoadConfig {
  List<StrategyWeight>? get costs;
  List<XrayDuration>? get baselines;
  int? get expected;
  XrayDuration? get maxRTT;
  double? get tolerance;

  /// Create a copy of StrategyLeastLoadConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StrategyLeastLoadConfigCopyWith<StrategyLeastLoadConfig> get copyWith =>
      _$StrategyLeastLoadConfigCopyWithImpl<StrategyLeastLoadConfig>(
          this as StrategyLeastLoadConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StrategyLeastLoadConfig &&
            const DeepCollectionEquality().equals(other.costs, costs) &&
            const DeepCollectionEquality().equals(other.baselines, baselines) &&
            (identical(other.expected, expected) ||
                other.expected == expected) &&
            (identical(other.maxRTT, maxRTT) || other.maxRTT == maxRTT) &&
            (identical(other.tolerance, tolerance) ||
                other.tolerance == tolerance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(costs),
      const DeepCollectionEquality().hash(baselines),
      expected,
      maxRTT,
      tolerance);

  @override
  String toString() {
    return 'StrategyLeastLoadConfig(costs: $costs, baselines: $baselines, expected: $expected, maxRTT: $maxRTT, tolerance: $tolerance)';
  }
}

/// @nodoc
abstract mixin class $StrategyLeastLoadConfigCopyWith<$Res> {
  factory $StrategyLeastLoadConfigCopyWith(StrategyLeastLoadConfig value,
          $Res Function(StrategyLeastLoadConfig) _then) =
      _$StrategyLeastLoadConfigCopyWithImpl;
  @useResult
  $Res call(
      {List<StrategyWeight>? costs,
      List<XrayDuration>? baselines,
      int? expected,
      XrayDuration? maxRTT,
      double? tolerance});
}

/// @nodoc
class _$StrategyLeastLoadConfigCopyWithImpl<$Res>
    implements $StrategyLeastLoadConfigCopyWith<$Res> {
  _$StrategyLeastLoadConfigCopyWithImpl(this._self, this._then);

  final StrategyLeastLoadConfig _self;
  final $Res Function(StrategyLeastLoadConfig) _then;

  /// Create a copy of StrategyLeastLoadConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? costs = freezed,
    Object? baselines = freezed,
    Object? expected = freezed,
    Object? maxRTT = freezed,
    Object? tolerance = freezed,
  }) {
    return _then(_self.copyWith(
      costs: freezed == costs
          ? _self.costs
          : costs // ignore: cast_nullable_to_non_nullable
              as List<StrategyWeight>?,
      baselines: freezed == baselines
          ? _self.baselines
          : baselines // ignore: cast_nullable_to_non_nullable
              as List<XrayDuration>?,
      expected: freezed == expected
          ? _self.expected
          : expected // ignore: cast_nullable_to_non_nullable
              as int?,
      maxRTT: freezed == maxRTT
          ? _self.maxRTT
          : maxRTT // ignore: cast_nullable_to_non_nullable
              as XrayDuration?,
      tolerance: freezed == tolerance
          ? _self.tolerance
          : tolerance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// Adds pattern-matching-related methods to [StrategyLeastLoadConfig].
extension StrategyLeastLoadConfigPatterns on StrategyLeastLoadConfig {
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
    TResult Function(_StrategyLeastLoadConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StrategyLeastLoadConfig() when $default != null:
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
    TResult Function(_StrategyLeastLoadConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StrategyLeastLoadConfig():
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
    TResult? Function(_StrategyLeastLoadConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StrategyLeastLoadConfig() when $default != null:
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
    TResult Function(List<StrategyWeight>? costs, List<XrayDuration>? baselines,
            int? expected, XrayDuration? maxRTT, double? tolerance)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StrategyLeastLoadConfig() when $default != null:
        return $default(_that.costs, _that.baselines, _that.expected,
            _that.maxRTT, _that.tolerance);
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
    TResult Function(List<StrategyWeight>? costs, List<XrayDuration>? baselines,
            int? expected, XrayDuration? maxRTT, double? tolerance)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StrategyLeastLoadConfig():
        return $default(_that.costs, _that.baselines, _that.expected,
            _that.maxRTT, _that.tolerance);
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
            List<StrategyWeight>? costs,
            List<XrayDuration>? baselines,
            int? expected,
            XrayDuration? maxRTT,
            double? tolerance)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StrategyLeastLoadConfig() when $default != null:
        return $default(_that.costs, _that.baselines, _that.expected,
            _that.maxRTT, _that.tolerance);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _StrategyLeastLoadConfig extends StrategyLeastLoadConfig {
  const _StrategyLeastLoadConfig(
      {final List<StrategyWeight>? costs,
      final List<XrayDuration>? baselines,
      this.expected,
      this.maxRTT,
      this.tolerance})
      : _costs = costs,
        _baselines = baselines,
        super._();

  final List<StrategyWeight>? _costs;
  @override
  List<StrategyWeight>? get costs {
    final value = _costs;
    if (value == null) return null;
    if (_costs is EqualUnmodifiableListView) return _costs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<XrayDuration>? _baselines;
  @override
  List<XrayDuration>? get baselines {
    final value = _baselines;
    if (value == null) return null;
    if (_baselines is EqualUnmodifiableListView) return _baselines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? expected;
  @override
  final XrayDuration? maxRTT;
  @override
  final double? tolerance;

  /// Create a copy of StrategyLeastLoadConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StrategyLeastLoadConfigCopyWith<_StrategyLeastLoadConfig> get copyWith =>
      __$StrategyLeastLoadConfigCopyWithImpl<_StrategyLeastLoadConfig>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StrategyLeastLoadConfig &&
            const DeepCollectionEquality().equals(other._costs, _costs) &&
            const DeepCollectionEquality()
                .equals(other._baselines, _baselines) &&
            (identical(other.expected, expected) ||
                other.expected == expected) &&
            (identical(other.maxRTT, maxRTT) || other.maxRTT == maxRTT) &&
            (identical(other.tolerance, tolerance) ||
                other.tolerance == tolerance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_costs),
      const DeepCollectionEquality().hash(_baselines),
      expected,
      maxRTT,
      tolerance);

  @override
  String toString() {
    return 'StrategyLeastLoadConfig(costs: $costs, baselines: $baselines, expected: $expected, maxRTT: $maxRTT, tolerance: $tolerance)';
  }
}

/// @nodoc
abstract mixin class _$StrategyLeastLoadConfigCopyWith<$Res>
    implements $StrategyLeastLoadConfigCopyWith<$Res> {
  factory _$StrategyLeastLoadConfigCopyWith(_StrategyLeastLoadConfig value,
          $Res Function(_StrategyLeastLoadConfig) _then) =
      __$StrategyLeastLoadConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<StrategyWeight>? costs,
      List<XrayDuration>? baselines,
      int? expected,
      XrayDuration? maxRTT,
      double? tolerance});
}

/// @nodoc
class __$StrategyLeastLoadConfigCopyWithImpl<$Res>
    implements _$StrategyLeastLoadConfigCopyWith<$Res> {
  __$StrategyLeastLoadConfigCopyWithImpl(this._self, this._then);

  final _StrategyLeastLoadConfig _self;
  final $Res Function(_StrategyLeastLoadConfig) _then;

  /// Create a copy of StrategyLeastLoadConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? costs = freezed,
    Object? baselines = freezed,
    Object? expected = freezed,
    Object? maxRTT = freezed,
    Object? tolerance = freezed,
  }) {
    return _then(_StrategyLeastLoadConfig(
      costs: freezed == costs
          ? _self._costs
          : costs // ignore: cast_nullable_to_non_nullable
              as List<StrategyWeight>?,
      baselines: freezed == baselines
          ? _self._baselines
          : baselines // ignore: cast_nullable_to_non_nullable
              as List<XrayDuration>?,
      expected: freezed == expected
          ? _self.expected
          : expected // ignore: cast_nullable_to_non_nullable
              as int?,
      maxRTT: freezed == maxRTT
          ? _self.maxRTT
          : maxRTT // ignore: cast_nullable_to_non_nullable
              as XrayDuration?,
      tolerance: freezed == tolerance
          ? _self.tolerance
          : tolerance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
mixin _$StrategyWeight {
  bool? get regexp;
  String? get match;
  double? get value;

  /// Create a copy of StrategyWeight
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $StrategyWeightCopyWith<StrategyWeight> get copyWith =>
      _$StrategyWeightCopyWithImpl<StrategyWeight>(
          this as StrategyWeight, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StrategyWeight &&
            (identical(other.regexp, regexp) || other.regexp == regexp) &&
            (identical(other.match, match) || other.match == match) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, regexp, match, value);

  @override
  String toString() {
    return 'StrategyWeight(regexp: $regexp, match: $match, value: $value)';
  }
}

/// @nodoc
abstract mixin class $StrategyWeightCopyWith<$Res> {
  factory $StrategyWeightCopyWith(
          StrategyWeight value, $Res Function(StrategyWeight) _then) =
      _$StrategyWeightCopyWithImpl;
  @useResult
  $Res call({bool? regexp, String? match, double? value});
}

/// @nodoc
class _$StrategyWeightCopyWithImpl<$Res>
    implements $StrategyWeightCopyWith<$Res> {
  _$StrategyWeightCopyWithImpl(this._self, this._then);

  final StrategyWeight _self;
  final $Res Function(StrategyWeight) _then;

  /// Create a copy of StrategyWeight
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regexp = freezed,
    Object? match = freezed,
    Object? value = freezed,
  }) {
    return _then(_self.copyWith(
      regexp: freezed == regexp
          ? _self.regexp
          : regexp // ignore: cast_nullable_to_non_nullable
              as bool?,
      match: freezed == match
          ? _self.match
          : match // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// Adds pattern-matching-related methods to [StrategyWeight].
extension StrategyWeightPatterns on StrategyWeight {
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
    TResult Function(_StrategyWeight value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StrategyWeight() when $default != null:
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
    TResult Function(_StrategyWeight value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StrategyWeight():
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
    TResult? Function(_StrategyWeight value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StrategyWeight() when $default != null:
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
    TResult Function(bool? regexp, String? match, double? value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _StrategyWeight() when $default != null:
        return $default(_that.regexp, _that.match, _that.value);
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
    TResult Function(bool? regexp, String? match, double? value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StrategyWeight():
        return $default(_that.regexp, _that.match, _that.value);
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
    TResult? Function(bool? regexp, String? match, double? value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _StrategyWeight() when $default != null:
        return $default(_that.regexp, _that.match, _that.value);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _StrategyWeight extends StrategyWeight {
  const _StrategyWeight({this.regexp, this.match, this.value}) : super._();

  @override
  final bool? regexp;
  @override
  final String? match;
  @override
  final double? value;

  /// Create a copy of StrategyWeight
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StrategyWeightCopyWith<_StrategyWeight> get copyWith =>
      __$StrategyWeightCopyWithImpl<_StrategyWeight>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StrategyWeight &&
            (identical(other.regexp, regexp) || other.regexp == regexp) &&
            (identical(other.match, match) || other.match == match) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, regexp, match, value);

  @override
  String toString() {
    return 'StrategyWeight(regexp: $regexp, match: $match, value: $value)';
  }
}

/// @nodoc
abstract mixin class _$StrategyWeightCopyWith<$Res>
    implements $StrategyWeightCopyWith<$Res> {
  factory _$StrategyWeightCopyWith(
          _StrategyWeight value, $Res Function(_StrategyWeight) _then) =
      __$StrategyWeightCopyWithImpl;
  @override
  @useResult
  $Res call({bool? regexp, String? match, double? value});
}

/// @nodoc
class __$StrategyWeightCopyWithImpl<$Res>
    implements _$StrategyWeightCopyWith<$Res> {
  __$StrategyWeightCopyWithImpl(this._self, this._then);

  final _StrategyWeight _self;
  final $Res Function(_StrategyWeight) _then;

  /// Create a copy of StrategyWeight
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? regexp = freezed,
    Object? match = freezed,
    Object? value = freezed,
  }) {
    return _then(_StrategyWeight(
      regexp: freezed == regexp
          ? _self.regexp
          : regexp // ignore: cast_nullable_to_non_nullable
              as bool?,
      match: freezed == match
          ? _self.match
          : match // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _self.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
mixin _$SystemPolicy {
  bool? get statsInboundUplink;
  bool? get statsInboundDownlink;
  bool? get statsOutboundUplink;
  bool? get statsOutboundDownlink;

  /// Create a copy of SystemPolicy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SystemPolicyCopyWith<SystemPolicy> get copyWith =>
      _$SystemPolicyCopyWithImpl<SystemPolicy>(
          this as SystemPolicy, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SystemPolicy &&
            (identical(other.statsInboundUplink, statsInboundUplink) ||
                other.statsInboundUplink == statsInboundUplink) &&
            (identical(other.statsInboundDownlink, statsInboundDownlink) ||
                other.statsInboundDownlink == statsInboundDownlink) &&
            (identical(other.statsOutboundUplink, statsOutboundUplink) ||
                other.statsOutboundUplink == statsOutboundUplink) &&
            (identical(other.statsOutboundDownlink, statsOutboundDownlink) ||
                other.statsOutboundDownlink == statsOutboundDownlink));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statsInboundUplink,
      statsInboundDownlink, statsOutboundUplink, statsOutboundDownlink);

  @override
  String toString() {
    return 'SystemPolicy(statsInboundUplink: $statsInboundUplink, statsInboundDownlink: $statsInboundDownlink, statsOutboundUplink: $statsOutboundUplink, statsOutboundDownlink: $statsOutboundDownlink)';
  }
}

/// @nodoc
abstract mixin class $SystemPolicyCopyWith<$Res> {
  factory $SystemPolicyCopyWith(
          SystemPolicy value, $Res Function(SystemPolicy) _then) =
      _$SystemPolicyCopyWithImpl;
  @useResult
  $Res call(
      {bool? statsInboundUplink,
      bool? statsInboundDownlink,
      bool? statsOutboundUplink,
      bool? statsOutboundDownlink});
}

/// @nodoc
class _$SystemPolicyCopyWithImpl<$Res> implements $SystemPolicyCopyWith<$Res> {
  _$SystemPolicyCopyWithImpl(this._self, this._then);

  final SystemPolicy _self;
  final $Res Function(SystemPolicy) _then;

  /// Create a copy of SystemPolicy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statsInboundUplink = freezed,
    Object? statsInboundDownlink = freezed,
    Object? statsOutboundUplink = freezed,
    Object? statsOutboundDownlink = freezed,
  }) {
    return _then(_self.copyWith(
      statsInboundUplink: freezed == statsInboundUplink
          ? _self.statsInboundUplink
          : statsInboundUplink // ignore: cast_nullable_to_non_nullable
              as bool?,
      statsInboundDownlink: freezed == statsInboundDownlink
          ? _self.statsInboundDownlink
          : statsInboundDownlink // ignore: cast_nullable_to_non_nullable
              as bool?,
      statsOutboundUplink: freezed == statsOutboundUplink
          ? _self.statsOutboundUplink
          : statsOutboundUplink // ignore: cast_nullable_to_non_nullable
              as bool?,
      statsOutboundDownlink: freezed == statsOutboundDownlink
          ? _self.statsOutboundDownlink
          : statsOutboundDownlink // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SystemPolicy].
extension SystemPolicyPatterns on SystemPolicy {
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
    TResult Function(_SystemPolicy value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SystemPolicy() when $default != null:
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
    TResult Function(_SystemPolicy value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SystemPolicy():
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
    TResult? Function(_SystemPolicy value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SystemPolicy() when $default != null:
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
    TResult Function(bool? statsInboundUplink, bool? statsInboundDownlink,
            bool? statsOutboundUplink, bool? statsOutboundDownlink)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SystemPolicy() when $default != null:
        return $default(_that.statsInboundUplink, _that.statsInboundDownlink,
            _that.statsOutboundUplink, _that.statsOutboundDownlink);
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
    TResult Function(bool? statsInboundUplink, bool? statsInboundDownlink,
            bool? statsOutboundUplink, bool? statsOutboundDownlink)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SystemPolicy():
        return $default(_that.statsInboundUplink, _that.statsInboundDownlink,
            _that.statsOutboundUplink, _that.statsOutboundDownlink);
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
    TResult? Function(bool? statsInboundUplink, bool? statsInboundDownlink,
            bool? statsOutboundUplink, bool? statsOutboundDownlink)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SystemPolicy() when $default != null:
        return $default(_that.statsInboundUplink, _that.statsInboundDownlink,
            _that.statsOutboundUplink, _that.statsOutboundDownlink);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SystemPolicy extends SystemPolicy {
  const _SystemPolicy(
      {this.statsInboundUplink,
      this.statsInboundDownlink,
      this.statsOutboundUplink,
      this.statsOutboundDownlink})
      : super._();

  @override
  final bool? statsInboundUplink;
  @override
  final bool? statsInboundDownlink;
  @override
  final bool? statsOutboundUplink;
  @override
  final bool? statsOutboundDownlink;

  /// Create a copy of SystemPolicy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SystemPolicyCopyWith<_SystemPolicy> get copyWith =>
      __$SystemPolicyCopyWithImpl<_SystemPolicy>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SystemPolicy &&
            (identical(other.statsInboundUplink, statsInboundUplink) ||
                other.statsInboundUplink == statsInboundUplink) &&
            (identical(other.statsInboundDownlink, statsInboundDownlink) ||
                other.statsInboundDownlink == statsInboundDownlink) &&
            (identical(other.statsOutboundUplink, statsOutboundUplink) ||
                other.statsOutboundUplink == statsOutboundUplink) &&
            (identical(other.statsOutboundDownlink, statsOutboundDownlink) ||
                other.statsOutboundDownlink == statsOutboundDownlink));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statsInboundUplink,
      statsInboundDownlink, statsOutboundUplink, statsOutboundDownlink);

  @override
  String toString() {
    return 'SystemPolicy(statsInboundUplink: $statsInboundUplink, statsInboundDownlink: $statsInboundDownlink, statsOutboundUplink: $statsOutboundUplink, statsOutboundDownlink: $statsOutboundDownlink)';
  }
}

/// @nodoc
abstract mixin class _$SystemPolicyCopyWith<$Res>
    implements $SystemPolicyCopyWith<$Res> {
  factory _$SystemPolicyCopyWith(
          _SystemPolicy value, $Res Function(_SystemPolicy) _then) =
      __$SystemPolicyCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool? statsInboundUplink,
      bool? statsInboundDownlink,
      bool? statsOutboundUplink,
      bool? statsOutboundDownlink});
}

/// @nodoc
class __$SystemPolicyCopyWithImpl<$Res>
    implements _$SystemPolicyCopyWith<$Res> {
  __$SystemPolicyCopyWithImpl(this._self, this._then);

  final _SystemPolicy _self;
  final $Res Function(_SystemPolicy) _then;

  /// Create a copy of SystemPolicy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? statsInboundUplink = freezed,
    Object? statsInboundDownlink = freezed,
    Object? statsOutboundUplink = freezed,
    Object? statsOutboundDownlink = freezed,
  }) {
    return _then(_SystemPolicy(
      statsInboundUplink: freezed == statsInboundUplink
          ? _self.statsInboundUplink
          : statsInboundUplink // ignore: cast_nullable_to_non_nullable
              as bool?,
      statsInboundDownlink: freezed == statsInboundDownlink
          ? _self.statsInboundDownlink
          : statsInboundDownlink // ignore: cast_nullable_to_non_nullable
              as bool?,
      statsOutboundUplink: freezed == statsOutboundUplink
          ? _self.statsOutboundUplink
          : statsOutboundUplink // ignore: cast_nullable_to_non_nullable
              as bool?,
      statsOutboundDownlink: freezed == statsOutboundDownlink
          ? _self.statsOutboundDownlink
          : statsOutboundDownlink // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$VersionConfig {
  @JsonKey(name: 'min')
  String? get minVersion;
  @JsonKey(name: 'max')
  String? get maxVersion;

  /// Create a copy of VersionConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VersionConfigCopyWith<VersionConfig> get copyWith =>
      _$VersionConfigCopyWithImpl<VersionConfig>(
          this as VersionConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VersionConfig &&
            (identical(other.minVersion, minVersion) ||
                other.minVersion == minVersion) &&
            (identical(other.maxVersion, maxVersion) ||
                other.maxVersion == maxVersion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minVersion, maxVersion);

  @override
  String toString() {
    return 'VersionConfig(minVersion: $minVersion, maxVersion: $maxVersion)';
  }
}

/// @nodoc
abstract mixin class $VersionConfigCopyWith<$Res> {
  factory $VersionConfigCopyWith(
          VersionConfig value, $Res Function(VersionConfig) _then) =
      _$VersionConfigCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'min') String? minVersion,
      @JsonKey(name: 'max') String? maxVersion});
}

/// @nodoc
class _$VersionConfigCopyWithImpl<$Res>
    implements $VersionConfigCopyWith<$Res> {
  _$VersionConfigCopyWithImpl(this._self, this._then);

  final VersionConfig _self;
  final $Res Function(VersionConfig) _then;

  /// Create a copy of VersionConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minVersion = freezed,
    Object? maxVersion = freezed,
  }) {
    return _then(_self.copyWith(
      minVersion: freezed == minVersion
          ? _self.minVersion
          : minVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      maxVersion: freezed == maxVersion
          ? _self.maxVersion
          : maxVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [VersionConfig].
extension VersionConfigPatterns on VersionConfig {
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
    TResult Function(_VersionConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VersionConfig() when $default != null:
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
    TResult Function(_VersionConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VersionConfig():
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
    TResult? Function(_VersionConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VersionConfig() when $default != null:
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
    TResult Function(@JsonKey(name: 'min') String? minVersion,
            @JsonKey(name: 'max') String? maxVersion)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _VersionConfig() when $default != null:
        return $default(_that.minVersion, _that.maxVersion);
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
    TResult Function(@JsonKey(name: 'min') String? minVersion,
            @JsonKey(name: 'max') String? maxVersion)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VersionConfig():
        return $default(_that.minVersion, _that.maxVersion);
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
    TResult? Function(@JsonKey(name: 'min') String? minVersion,
            @JsonKey(name: 'max') String? maxVersion)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _VersionConfig() when $default != null:
        return $default(_that.minVersion, _that.maxVersion);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _VersionConfig extends VersionConfig {
  const _VersionConfig(
      {@JsonKey(name: 'min') this.minVersion,
      @JsonKey(name: 'max') this.maxVersion})
      : super._();

  @override
  @JsonKey(name: 'min')
  final String? minVersion;
  @override
  @JsonKey(name: 'max')
  final String? maxVersion;

  /// Create a copy of VersionConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VersionConfigCopyWith<_VersionConfig> get copyWith =>
      __$VersionConfigCopyWithImpl<_VersionConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VersionConfig &&
            (identical(other.minVersion, minVersion) ||
                other.minVersion == minVersion) &&
            (identical(other.maxVersion, maxVersion) ||
                other.maxVersion == maxVersion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, minVersion, maxVersion);

  @override
  String toString() {
    return 'VersionConfig(minVersion: $minVersion, maxVersion: $maxVersion)';
  }
}

/// @nodoc
abstract mixin class _$VersionConfigCopyWith<$Res>
    implements $VersionConfigCopyWith<$Res> {
  factory _$VersionConfigCopyWith(
          _VersionConfig value, $Res Function(_VersionConfig) _then) =
      __$VersionConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'min') String? minVersion,
      @JsonKey(name: 'max') String? maxVersion});
}

/// @nodoc
class __$VersionConfigCopyWithImpl<$Res>
    implements _$VersionConfigCopyWith<$Res> {
  __$VersionConfigCopyWithImpl(this._self, this._then);

  final _VersionConfig _self;
  final $Res Function(_VersionConfig) _then;

  /// Create a copy of VersionConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? minVersion = freezed,
    Object? maxVersion = freezed,
  }) {
    return _then(_VersionConfig(
      minVersion: freezed == minVersion
          ? _self.minVersion
          : minVersion // ignore: cast_nullable_to_non_nullable
              as String?,
      maxVersion: freezed == maxVersion
          ? _self.maxVersion
          : maxVersion // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$WebhookRuleConfig {
  String get url;
  int? get deduplication;
  Map<String, String>? get headers;

  /// Create a copy of WebhookRuleConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $WebhookRuleConfigCopyWith<WebhookRuleConfig> get copyWith =>
      _$WebhookRuleConfigCopyWithImpl<WebhookRuleConfig>(
          this as WebhookRuleConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is WebhookRuleConfig &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.deduplication, deduplication) ||
                other.deduplication == deduplication) &&
            const DeepCollectionEquality().equals(other.headers, headers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, deduplication,
      const DeepCollectionEquality().hash(headers));

  @override
  String toString() {
    return 'WebhookRuleConfig(url: $url, deduplication: $deduplication, headers: $headers)';
  }
}

/// @nodoc
abstract mixin class $WebhookRuleConfigCopyWith<$Res> {
  factory $WebhookRuleConfigCopyWith(
          WebhookRuleConfig value, $Res Function(WebhookRuleConfig) _then) =
      _$WebhookRuleConfigCopyWithImpl;
  @useResult
  $Res call({String url, int? deduplication, Map<String, String>? headers});
}

/// @nodoc
class _$WebhookRuleConfigCopyWithImpl<$Res>
    implements $WebhookRuleConfigCopyWith<$Res> {
  _$WebhookRuleConfigCopyWithImpl(this._self, this._then);

  final WebhookRuleConfig _self;
  final $Res Function(WebhookRuleConfig) _then;

  /// Create a copy of WebhookRuleConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? deduplication = freezed,
    Object? headers = freezed,
  }) {
    return _then(_self.copyWith(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      deduplication: freezed == deduplication
          ? _self.deduplication
          : deduplication // ignore: cast_nullable_to_non_nullable
              as int?,
      headers: freezed == headers
          ? _self.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// Adds pattern-matching-related methods to [WebhookRuleConfig].
extension WebhookRuleConfigPatterns on WebhookRuleConfig {
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
    TResult Function(_WebhookRuleConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WebhookRuleConfig() when $default != null:
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
    TResult Function(_WebhookRuleConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WebhookRuleConfig():
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
    TResult? Function(_WebhookRuleConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WebhookRuleConfig() when $default != null:
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
            String url, int? deduplication, Map<String, String>? headers)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _WebhookRuleConfig() when $default != null:
        return $default(_that.url, _that.deduplication, _that.headers);
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
            String url, int? deduplication, Map<String, String>? headers)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WebhookRuleConfig():
        return $default(_that.url, _that.deduplication, _that.headers);
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
            String url, int? deduplication, Map<String, String>? headers)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _WebhookRuleConfig() when $default != null:
        return $default(_that.url, _that.deduplication, _that.headers);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _WebhookRuleConfig extends WebhookRuleConfig {
  const _WebhookRuleConfig(
      {required this.url,
      this.deduplication,
      final Map<String, String>? headers})
      : _headers = headers,
        super._();

  @override
  final String url;
  @override
  final int? deduplication;
  final Map<String, String>? _headers;
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableMapView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of WebhookRuleConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$WebhookRuleConfigCopyWith<_WebhookRuleConfig> get copyWith =>
      __$WebhookRuleConfigCopyWithImpl<_WebhookRuleConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WebhookRuleConfig &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.deduplication, deduplication) ||
                other.deduplication == deduplication) &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, deduplication,
      const DeepCollectionEquality().hash(_headers));

  @override
  String toString() {
    return 'WebhookRuleConfig(url: $url, deduplication: $deduplication, headers: $headers)';
  }
}

/// @nodoc
abstract mixin class _$WebhookRuleConfigCopyWith<$Res>
    implements $WebhookRuleConfigCopyWith<$Res> {
  factory _$WebhookRuleConfigCopyWith(
          _WebhookRuleConfig value, $Res Function(_WebhookRuleConfig) _then) =
      __$WebhookRuleConfigCopyWithImpl;
  @override
  @useResult
  $Res call({String url, int? deduplication, Map<String, String>? headers});
}

/// @nodoc
class __$WebhookRuleConfigCopyWithImpl<$Res>
    implements _$WebhookRuleConfigCopyWith<$Res> {
  __$WebhookRuleConfigCopyWithImpl(this._self, this._then);

  final _WebhookRuleConfig _self;
  final $Res Function(_WebhookRuleConfig) _then;

  /// Create a copy of WebhookRuleConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? url = null,
    Object? deduplication = freezed,
    Object? headers = freezed,
  }) {
    return _then(_WebhookRuleConfig(
      url: null == url
          ? _self.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      deduplication: freezed == deduplication
          ? _self.deduplication
          : deduplication // ignore: cast_nullable_to_non_nullable
              as int?,
      headers: freezed == headers
          ? _self._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

// dart format on

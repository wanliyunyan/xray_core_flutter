// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SniffingConfig {
  bool? get enabled;
  XrayStringList? get destOverride;
  XrayStringList? get domainsExcluded;
  XrayStringList? get ipsExcluded;
  bool? get metadataOnly;
  bool? get routeOnly;

  /// Create a copy of SniffingConfig
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SniffingConfigCopyWith<SniffingConfig> get copyWith =>
      _$SniffingConfigCopyWithImpl<SniffingConfig>(
          this as SniffingConfig, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SniffingConfig &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.destOverride, destOverride) ||
                other.destOverride == destOverride) &&
            (identical(other.domainsExcluded, domainsExcluded) ||
                other.domainsExcluded == domainsExcluded) &&
            (identical(other.ipsExcluded, ipsExcluded) ||
                other.ipsExcluded == ipsExcluded) &&
            (identical(other.metadataOnly, metadataOnly) ||
                other.metadataOnly == metadataOnly) &&
            (identical(other.routeOnly, routeOnly) ||
                other.routeOnly == routeOnly));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enabled, destOverride,
      domainsExcluded, ipsExcluded, metadataOnly, routeOnly);

  @override
  String toString() {
    return 'SniffingConfig(enabled: $enabled, destOverride: $destOverride, domainsExcluded: $domainsExcluded, ipsExcluded: $ipsExcluded, metadataOnly: $metadataOnly, routeOnly: $routeOnly)';
  }
}

/// @nodoc
abstract mixin class $SniffingConfigCopyWith<$Res> {
  factory $SniffingConfigCopyWith(
          SniffingConfig value, $Res Function(SniffingConfig) _then) =
      _$SniffingConfigCopyWithImpl;
  @useResult
  $Res call(
      {bool? enabled,
      XrayStringList? destOverride,
      XrayStringList? domainsExcluded,
      XrayStringList? ipsExcluded,
      bool? metadataOnly,
      bool? routeOnly});
}

/// @nodoc
class _$SniffingConfigCopyWithImpl<$Res>
    implements $SniffingConfigCopyWith<$Res> {
  _$SniffingConfigCopyWithImpl(this._self, this._then);

  final SniffingConfig _self;
  final $Res Function(SniffingConfig) _then;

  /// Create a copy of SniffingConfig
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = freezed,
    Object? destOverride = freezed,
    Object? domainsExcluded = freezed,
    Object? ipsExcluded = freezed,
    Object? metadataOnly = freezed,
    Object? routeOnly = freezed,
  }) {
    return _then(_self.copyWith(
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      destOverride: freezed == destOverride
          ? _self.destOverride
          : destOverride // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      domainsExcluded: freezed == domainsExcluded
          ? _self.domainsExcluded
          : domainsExcluded // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      ipsExcluded: freezed == ipsExcluded
          ? _self.ipsExcluded
          : ipsExcluded // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      metadataOnly: freezed == metadataOnly
          ? _self.metadataOnly
          : metadataOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      routeOnly: freezed == routeOnly
          ? _self.routeOnly
          : routeOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// Adds pattern-matching-related methods to [SniffingConfig].
extension SniffingConfigPatterns on SniffingConfig {
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
    TResult Function(_SniffingConfig value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SniffingConfig() when $default != null:
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
    TResult Function(_SniffingConfig value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SniffingConfig():
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
    TResult? Function(_SniffingConfig value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SniffingConfig() when $default != null:
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
            bool? enabled,
            XrayStringList? destOverride,
            XrayStringList? domainsExcluded,
            XrayStringList? ipsExcluded,
            bool? metadataOnly,
            bool? routeOnly)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _SniffingConfig() when $default != null:
        return $default(
            _that.enabled,
            _that.destOverride,
            _that.domainsExcluded,
            _that.ipsExcluded,
            _that.metadataOnly,
            _that.routeOnly);
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
            bool? enabled,
            XrayStringList? destOverride,
            XrayStringList? domainsExcluded,
            XrayStringList? ipsExcluded,
            bool? metadataOnly,
            bool? routeOnly)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SniffingConfig():
        return $default(
            _that.enabled,
            _that.destOverride,
            _that.domainsExcluded,
            _that.ipsExcluded,
            _that.metadataOnly,
            _that.routeOnly);
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
            bool? enabled,
            XrayStringList? destOverride,
            XrayStringList? domainsExcluded,
            XrayStringList? ipsExcluded,
            bool? metadataOnly,
            bool? routeOnly)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _SniffingConfig() when $default != null:
        return $default(
            _that.enabled,
            _that.destOverride,
            _that.domainsExcluded,
            _that.ipsExcluded,
            _that.metadataOnly,
            _that.routeOnly);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _SniffingConfig extends SniffingConfig {
  const _SniffingConfig(
      {this.enabled,
      this.destOverride,
      this.domainsExcluded,
      this.ipsExcluded,
      this.metadataOnly,
      this.routeOnly})
      : super._();

  @override
  final bool? enabled;
  @override
  final XrayStringList? destOverride;
  @override
  final XrayStringList? domainsExcluded;
  @override
  final XrayStringList? ipsExcluded;
  @override
  final bool? metadataOnly;
  @override
  final bool? routeOnly;

  /// Create a copy of SniffingConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SniffingConfigCopyWith<_SniffingConfig> get copyWith =>
      __$SniffingConfigCopyWithImpl<_SniffingConfig>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SniffingConfig &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.destOverride, destOverride) ||
                other.destOverride == destOverride) &&
            (identical(other.domainsExcluded, domainsExcluded) ||
                other.domainsExcluded == domainsExcluded) &&
            (identical(other.ipsExcluded, ipsExcluded) ||
                other.ipsExcluded == ipsExcluded) &&
            (identical(other.metadataOnly, metadataOnly) ||
                other.metadataOnly == metadataOnly) &&
            (identical(other.routeOnly, routeOnly) ||
                other.routeOnly == routeOnly));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enabled, destOverride,
      domainsExcluded, ipsExcluded, metadataOnly, routeOnly);

  @override
  String toString() {
    return 'SniffingConfig(enabled: $enabled, destOverride: $destOverride, domainsExcluded: $domainsExcluded, ipsExcluded: $ipsExcluded, metadataOnly: $metadataOnly, routeOnly: $routeOnly)';
  }
}

/// @nodoc
abstract mixin class _$SniffingConfigCopyWith<$Res>
    implements $SniffingConfigCopyWith<$Res> {
  factory _$SniffingConfigCopyWith(
          _SniffingConfig value, $Res Function(_SniffingConfig) _then) =
      __$SniffingConfigCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool? enabled,
      XrayStringList? destOverride,
      XrayStringList? domainsExcluded,
      XrayStringList? ipsExcluded,
      bool? metadataOnly,
      bool? routeOnly});
}

/// @nodoc
class __$SniffingConfigCopyWithImpl<$Res>
    implements _$SniffingConfigCopyWith<$Res> {
  __$SniffingConfigCopyWithImpl(this._self, this._then);

  final _SniffingConfig _self;
  final $Res Function(_SniffingConfig) _then;

  /// Create a copy of SniffingConfig
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? enabled = freezed,
    Object? destOverride = freezed,
    Object? domainsExcluded = freezed,
    Object? ipsExcluded = freezed,
    Object? metadataOnly = freezed,
    Object? routeOnly = freezed,
  }) {
    return _then(_SniffingConfig(
      enabled: freezed == enabled
          ? _self.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      destOverride: freezed == destOverride
          ? _self.destOverride
          : destOverride // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      domainsExcluded: freezed == domainsExcluded
          ? _self.domainsExcluded
          : domainsExcluded // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      ipsExcluded: freezed == ipsExcluded
          ? _self.ipsExcluded
          : ipsExcluded // ignore: cast_nullable_to_non_nullable
              as XrayStringList?,
      metadataOnly: freezed == metadataOnly
          ? _self.metadataOnly
          : metadataOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
      routeOnly: freezed == routeOnly
          ? _self.routeOnly
          : routeOnly // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
mixin _$XrayInt32Range {
  int get left;
  int get right;

  /// Create a copy of XrayInt32Range
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $XrayInt32RangeCopyWith<XrayInt32Range> get copyWith =>
      _$XrayInt32RangeCopyWithImpl<XrayInt32Range>(
          this as XrayInt32Range, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is XrayInt32Range &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.right, right) || other.right == right));
  }

  @override
  int get hashCode => Object.hash(runtimeType, left, right);

  @override
  String toString() {
    return 'XrayInt32Range(left: $left, right: $right)';
  }
}

/// @nodoc
abstract mixin class $XrayInt32RangeCopyWith<$Res> {
  factory $XrayInt32RangeCopyWith(
          XrayInt32Range value, $Res Function(XrayInt32Range) _then) =
      _$XrayInt32RangeCopyWithImpl;
  @useResult
  $Res call({int left, int right});
}

/// @nodoc
class _$XrayInt32RangeCopyWithImpl<$Res>
    implements $XrayInt32RangeCopyWith<$Res> {
  _$XrayInt32RangeCopyWithImpl(this._self, this._then);

  final XrayInt32Range _self;
  final $Res Function(XrayInt32Range) _then;

  /// Create a copy of XrayInt32Range
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? left = null,
    Object? right = null,
  }) {
    return _then(_self.copyWith(
      left: null == left
          ? _self.left
          : left // ignore: cast_nullable_to_non_nullable
              as int,
      right: null == right
          ? _self.right
          : right // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// Adds pattern-matching-related methods to [XrayInt32Range].
extension XrayInt32RangePatterns on XrayInt32Range {
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
    TResult Function(_XrayInt32Range value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _XrayInt32Range() when $default != null:
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
    TResult Function(_XrayInt32Range value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _XrayInt32Range():
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
    TResult? Function(_XrayInt32Range value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _XrayInt32Range() when $default != null:
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
    TResult Function(int left, int right)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _XrayInt32Range() when $default != null:
        return $default(_that.left, _that.right);
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
    TResult Function(int left, int right) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _XrayInt32Range():
        return $default(_that.left, _that.right);
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
    TResult? Function(int left, int right)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _XrayInt32Range() when $default != null:
        return $default(_that.left, _that.right);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _XrayInt32Range extends XrayInt32Range {
  const _XrayInt32Range({required this.left, required this.right}) : super._();

  @override
  final int left;
  @override
  final int right;

  /// Create a copy of XrayInt32Range
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$XrayInt32RangeCopyWith<_XrayInt32Range> get copyWith =>
      __$XrayInt32RangeCopyWithImpl<_XrayInt32Range>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _XrayInt32Range &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.right, right) || other.right == right));
  }

  @override
  int get hashCode => Object.hash(runtimeType, left, right);

  @override
  String toString() {
    return 'XrayInt32Range(left: $left, right: $right)';
  }
}

/// @nodoc
abstract mixin class _$XrayInt32RangeCopyWith<$Res>
    implements $XrayInt32RangeCopyWith<$Res> {
  factory _$XrayInt32RangeCopyWith(
          _XrayInt32Range value, $Res Function(_XrayInt32Range) _then) =
      __$XrayInt32RangeCopyWithImpl;
  @override
  @useResult
  $Res call({int left, int right});
}

/// @nodoc
class __$XrayInt32RangeCopyWithImpl<$Res>
    implements _$XrayInt32RangeCopyWith<$Res> {
  __$XrayInt32RangeCopyWithImpl(this._self, this._then);

  final _XrayInt32Range _self;
  final $Res Function(_XrayInt32Range) _then;

  /// Create a copy of XrayInt32Range
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? left = null,
    Object? right = null,
  }) {
    return _then(_XrayInt32Range(
      left: null == left
          ? _self.left
          : left // ignore: cast_nullable_to_non_nullable
              as int,
      right: null == right
          ? _self.right
          : right // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$XrayPortRange {
  int get from;
  int get to;
  String? get raw;

  /// Create a copy of XrayPortRange
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $XrayPortRangeCopyWith<XrayPortRange> get copyWith =>
      _$XrayPortRangeCopyWithImpl<XrayPortRange>(
          this as XrayPortRange, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is XrayPortRange &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.raw, raw) || other.raw == raw));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from, to, raw);

  @override
  String toString() {
    return 'XrayPortRange(from: $from, to: $to, raw: $raw)';
  }
}

/// @nodoc
abstract mixin class $XrayPortRangeCopyWith<$Res> {
  factory $XrayPortRangeCopyWith(
          XrayPortRange value, $Res Function(XrayPortRange) _then) =
      _$XrayPortRangeCopyWithImpl;
  @useResult
  $Res call({int from, int to, String? raw});
}

/// @nodoc
class _$XrayPortRangeCopyWithImpl<$Res>
    implements $XrayPortRangeCopyWith<$Res> {
  _$XrayPortRangeCopyWithImpl(this._self, this._then);

  final XrayPortRange _self;
  final $Res Function(XrayPortRange) _then;

  /// Create a copy of XrayPortRange
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? raw = freezed,
  }) {
    return _then(_self.copyWith(
      from: null == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      to: null == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      raw: freezed == raw
          ? _self.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [XrayPortRange].
extension XrayPortRangePatterns on XrayPortRange {
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
    TResult Function(_XrayPortRange value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _XrayPortRange() when $default != null:
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
    TResult Function(_XrayPortRange value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _XrayPortRange():
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
    TResult? Function(_XrayPortRange value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _XrayPortRange() when $default != null:
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
    TResult Function(int from, int to, String? raw)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _XrayPortRange() when $default != null:
        return $default(_that.from, _that.to, _that.raw);
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
    TResult Function(int from, int to, String? raw) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _XrayPortRange():
        return $default(_that.from, _that.to, _that.raw);
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
    TResult? Function(int from, int to, String? raw)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _XrayPortRange() when $default != null:
        return $default(_that.from, _that.to, _that.raw);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _XrayPortRange extends XrayPortRange {
  const _XrayPortRange({required this.from, required this.to, this.raw})
      : super._();

  @override
  final int from;
  @override
  final int to;
  @override
  final String? raw;

  /// Create a copy of XrayPortRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$XrayPortRangeCopyWith<_XrayPortRange> get copyWith =>
      __$XrayPortRangeCopyWithImpl<_XrayPortRange>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _XrayPortRange &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.raw, raw) || other.raw == raw));
  }

  @override
  int get hashCode => Object.hash(runtimeType, from, to, raw);

  @override
  String toString() {
    return 'XrayPortRange(from: $from, to: $to, raw: $raw)';
  }
}

/// @nodoc
abstract mixin class _$XrayPortRangeCopyWith<$Res>
    implements $XrayPortRangeCopyWith<$Res> {
  factory _$XrayPortRangeCopyWith(
          _XrayPortRange value, $Res Function(_XrayPortRange) _then) =
      __$XrayPortRangeCopyWithImpl;
  @override
  @useResult
  $Res call({int from, int to, String? raw});
}

/// @nodoc
class __$XrayPortRangeCopyWithImpl<$Res>
    implements _$XrayPortRangeCopyWith<$Res> {
  __$XrayPortRangeCopyWithImpl(this._self, this._then);

  final _XrayPortRange _self;
  final $Res Function(_XrayPortRange) _then;

  /// Create a copy of XrayPortRange
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? raw = freezed,
  }) {
    return _then(_XrayPortRange(
      from: null == from
          ? _self.from
          : from // ignore: cast_nullable_to_non_nullable
              as int,
      to: null == to
          ? _self.to
          : to // ignore: cast_nullable_to_non_nullable
              as int,
      raw: freezed == raw
          ? _self.raw
          : raw // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
mixin _$XrayUser {
  String? get email;
  int? get level;

  /// Create a copy of XrayUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $XrayUserCopyWith<XrayUser> get copyWith =>
      _$XrayUserCopyWithImpl<XrayUser>(this as XrayUser, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is XrayUser &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.level, level) || other.level == level));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, level);

  @override
  String toString() {
    return 'XrayUser(email: $email, level: $level)';
  }
}

/// @nodoc
abstract mixin class $XrayUserCopyWith<$Res> {
  factory $XrayUserCopyWith(XrayUser value, $Res Function(XrayUser) _then) =
      _$XrayUserCopyWithImpl;
  @useResult
  $Res call({String? email, int? level});
}

/// @nodoc
class _$XrayUserCopyWithImpl<$Res> implements $XrayUserCopyWith<$Res> {
  _$XrayUserCopyWithImpl(this._self, this._then);

  final XrayUser _self;
  final $Res Function(XrayUser) _then;

  /// Create a copy of XrayUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? level = freezed,
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
    ));
  }
}

/// Adds pattern-matching-related methods to [XrayUser].
extension XrayUserPatterns on XrayUser {
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
    TResult Function(_XrayUser value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _XrayUser() when $default != null:
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
    TResult Function(_XrayUser value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _XrayUser():
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
    TResult? Function(_XrayUser value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _XrayUser() when $default != null:
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
    TResult Function(String? email, int? level)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _XrayUser() when $default != null:
        return $default(_that.email, _that.level);
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
    TResult Function(String? email, int? level) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _XrayUser():
        return $default(_that.email, _that.level);
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
    TResult? Function(String? email, int? level)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _XrayUser() when $default != null:
        return $default(_that.email, _that.level);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _XrayUser extends XrayUser {
  const _XrayUser({this.email, this.level}) : super._();

  @override
  final String? email;
  @override
  final int? level;

  /// Create a copy of XrayUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$XrayUserCopyWith<_XrayUser> get copyWith =>
      __$XrayUserCopyWithImpl<_XrayUser>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _XrayUser &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.level, level) || other.level == level));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, level);

  @override
  String toString() {
    return 'XrayUser(email: $email, level: $level)';
  }
}

/// @nodoc
abstract mixin class _$XrayUserCopyWith<$Res>
    implements $XrayUserCopyWith<$Res> {
  factory _$XrayUserCopyWith(_XrayUser value, $Res Function(_XrayUser) _then) =
      __$XrayUserCopyWithImpl;
  @override
  @useResult
  $Res call({String? email, int? level});
}

/// @nodoc
class __$XrayUserCopyWithImpl<$Res> implements _$XrayUserCopyWith<$Res> {
  __$XrayUserCopyWithImpl(this._self, this._then);

  final _XrayUser _self;
  final $Res Function(_XrayUser) _then;

  /// Create a copy of XrayUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = freezed,
    Object? level = freezed,
  }) {
    return _then(_XrayUser(
      email: freezed == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on

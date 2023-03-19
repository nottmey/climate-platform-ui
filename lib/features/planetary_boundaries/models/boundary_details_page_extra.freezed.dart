// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'boundary_details_page_extra.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BoundaryDetailsPageExtra {
  AutoDisposeStateNotifierProvider<EntityStateNotifier<PlanetaryBoundary>,
          EntityState<PlanetaryBoundary>>?
      get provider => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoundaryDetailsPageExtraCopyWith<BoundaryDetailsPageExtra> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoundaryDetailsPageExtraCopyWith<$Res> {
  factory $BoundaryDetailsPageExtraCopyWith(BoundaryDetailsPageExtra value,
          $Res Function(BoundaryDetailsPageExtra) then) =
      _$BoundaryDetailsPageExtraCopyWithImpl<$Res, BoundaryDetailsPageExtra>;
  @useResult
  $Res call(
      {AutoDisposeStateNotifierProvider<EntityStateNotifier<PlanetaryBoundary>,
              EntityState<PlanetaryBoundary>>?
          provider});
}

/// @nodoc
class _$BoundaryDetailsPageExtraCopyWithImpl<$Res,
        $Val extends BoundaryDetailsPageExtra>
    implements $BoundaryDetailsPageExtraCopyWith<$Res> {
  _$BoundaryDetailsPageExtraCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = freezed,
  }) {
    return _then(_value.copyWith(
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AutoDisposeStateNotifierProvider<
                  EntityStateNotifier<PlanetaryBoundary>,
                  EntityState<PlanetaryBoundary>>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BoundaryDetailsPageStateCopyWith<$Res>
    implements $BoundaryDetailsPageExtraCopyWith<$Res> {
  factory _$$_BoundaryDetailsPageStateCopyWith(
          _$_BoundaryDetailsPageState value,
          $Res Function(_$_BoundaryDetailsPageState) then) =
      __$$_BoundaryDetailsPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AutoDisposeStateNotifierProvider<EntityStateNotifier<PlanetaryBoundary>,
              EntityState<PlanetaryBoundary>>?
          provider});
}

/// @nodoc
class __$$_BoundaryDetailsPageStateCopyWithImpl<$Res>
    extends _$BoundaryDetailsPageExtraCopyWithImpl<$Res,
        _$_BoundaryDetailsPageState>
    implements _$$_BoundaryDetailsPageStateCopyWith<$Res> {
  __$$_BoundaryDetailsPageStateCopyWithImpl(_$_BoundaryDetailsPageState _value,
      $Res Function(_$_BoundaryDetailsPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = freezed,
  }) {
    return _then(_$_BoundaryDetailsPageState(
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as AutoDisposeStateNotifierProvider<
                  EntityStateNotifier<PlanetaryBoundary>,
                  EntityState<PlanetaryBoundary>>?,
    ));
  }
}

/// @nodoc

class _$_BoundaryDetailsPageState implements _BoundaryDetailsPageState {
  const _$_BoundaryDetailsPageState({this.provider});

  @override
  final AutoDisposeStateNotifierProvider<EntityStateNotifier<PlanetaryBoundary>,
      EntityState<PlanetaryBoundary>>? provider;

  @override
  String toString() {
    return 'BoundaryDetailsPageExtra(provider: $provider)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BoundaryDetailsPageState &&
            (identical(other.provider, provider) ||
                other.provider == provider));
  }

  @override
  int get hashCode => Object.hash(runtimeType, provider);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoundaryDetailsPageStateCopyWith<_$_BoundaryDetailsPageState>
      get copyWith => __$$_BoundaryDetailsPageStateCopyWithImpl<
          _$_BoundaryDetailsPageState>(this, _$identity);
}

abstract class _BoundaryDetailsPageState implements BoundaryDetailsPageExtra {
  const factory _BoundaryDetailsPageState(
      {final AutoDisposeStateNotifierProvider<
              EntityStateNotifier<PlanetaryBoundary>,
              EntityState<PlanetaryBoundary>>?
          provider}) = _$_BoundaryDetailsPageState;

  @override
  AutoDisposeStateNotifierProvider<EntityStateNotifier<PlanetaryBoundary>,
      EntityState<PlanetaryBoundary>>? get provider;
  @override
  @JsonKey(ignore: true)
  _$$_BoundaryDetailsPageStateCopyWith<_$_BoundaryDetailsPageState>
      get copyWith => throw _privateConstructorUsedError;
}

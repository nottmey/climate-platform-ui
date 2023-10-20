// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entity_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntityState<T> {
  AsyncValue<T> get asyncEntity => throw _privateConstructorUsedError;
  EntityPhase get phase => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntityStateCopyWith<T, EntityState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityStateCopyWith<T, $Res> {
  factory $EntityStateCopyWith(
          EntityState<T> value, $Res Function(EntityState<T>) then) =
      _$EntityStateCopyWithImpl<T, $Res, EntityState<T>>;
  @useResult
  $Res call({AsyncValue<T> asyncEntity, EntityPhase phase});
}

/// @nodoc
class _$EntityStateCopyWithImpl<T, $Res, $Val extends EntityState<T>>
    implements $EntityStateCopyWith<T, $Res> {
  _$EntityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncEntity = null,
    Object? phase = null,
  }) {
    return _then(_value.copyWith(
      asyncEntity: null == asyncEntity
          ? _value.asyncEntity
          : asyncEntity // ignore: cast_nullable_to_non_nullable
              as AsyncValue<T>,
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as EntityPhase,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntityStateImplCopyWith<T, $Res>
    implements $EntityStateCopyWith<T, $Res> {
  factory _$$EntityStateImplCopyWith(_$EntityStateImpl<T> value,
          $Res Function(_$EntityStateImpl<T>) then) =
      __$$EntityStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({AsyncValue<T> asyncEntity, EntityPhase phase});
}

/// @nodoc
class __$$EntityStateImplCopyWithImpl<T, $Res>
    extends _$EntityStateCopyWithImpl<T, $Res, _$EntityStateImpl<T>>
    implements _$$EntityStateImplCopyWith<T, $Res> {
  __$$EntityStateImplCopyWithImpl(
      _$EntityStateImpl<T> _value, $Res Function(_$EntityStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asyncEntity = null,
    Object? phase = null,
  }) {
    return _then(_$EntityStateImpl<T>(
      asyncEntity: null == asyncEntity
          ? _value.asyncEntity
          : asyncEntity // ignore: cast_nullable_to_non_nullable
              as AsyncValue<T>,
      phase: null == phase
          ? _value.phase
          : phase // ignore: cast_nullable_to_non_nullable
              as EntityPhase,
    ));
  }
}

/// @nodoc

class _$EntityStateImpl<T> extends _EntityState<T> {
  const _$EntityStateImpl(
      {required this.asyncEntity, this.phase = EntityPhase.display})
      : super._();

  @override
  final AsyncValue<T> asyncEntity;
  @override
  @JsonKey()
  final EntityPhase phase;

  @override
  String toString() {
    return 'EntityState<$T>(asyncEntity: $asyncEntity, phase: $phase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntityStateImpl<T> &&
            (identical(other.asyncEntity, asyncEntity) ||
                other.asyncEntity == asyncEntity) &&
            (identical(other.phase, phase) || other.phase == phase));
  }

  @override
  int get hashCode => Object.hash(runtimeType, asyncEntity, phase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EntityStateImplCopyWith<T, _$EntityStateImpl<T>> get copyWith =>
      __$$EntityStateImplCopyWithImpl<T, _$EntityStateImpl<T>>(
          this, _$identity);
}

abstract class _EntityState<T> extends EntityState<T> {
  const factory _EntityState(
      {required final AsyncValue<T> asyncEntity,
      final EntityPhase phase}) = _$EntityStateImpl<T>;
  const _EntityState._() : super._();

  @override
  AsyncValue<T> get asyncEntity;
  @override
  EntityPhase get phase;
  @override
  @JsonKey(ignore: true)
  _$$EntityStateImplCopyWith<T, _$EntityStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

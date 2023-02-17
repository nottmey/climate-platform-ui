// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'entity_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntityState<T extends Entity> {
  T get value => throw _privateConstructorUsedError;
  bool get isDeleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntityStateCopyWith<T, EntityState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntityStateCopyWith<T extends Entity, $Res> {
  factory $EntityStateCopyWith(
          EntityState<T> value, $Res Function(EntityState<T>) then) =
      _$EntityStateCopyWithImpl<T, $Res, EntityState<T>>;
  @useResult
  $Res call({T value, bool isDeleted});
}

/// @nodoc
class _$EntityStateCopyWithImpl<T extends Entity, $Res,
    $Val extends EntityState<T>> implements $EntityStateCopyWith<T, $Res> {
  _$EntityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? isDeleted = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EntityStateCopyWith<T extends Entity, $Res>
    implements $EntityStateCopyWith<T, $Res> {
  factory _$$_EntityStateCopyWith(
          _$_EntityState<T> value, $Res Function(_$_EntityState<T>) then) =
      __$$_EntityStateCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T value, bool isDeleted});
}

/// @nodoc
class __$$_EntityStateCopyWithImpl<T extends Entity, $Res>
    extends _$EntityStateCopyWithImpl<T, $Res, _$_EntityState<T>>
    implements _$$_EntityStateCopyWith<T, $Res> {
  __$$_EntityStateCopyWithImpl(
      _$_EntityState<T> _value, $Res Function(_$_EntityState<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? isDeleted = null,
  }) {
    return _then(_$_EntityState<T>(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EntityState<T extends Entity> implements _EntityState<T> {
  const _$_EntityState({required this.value, this.isDeleted = false});

  @override
  final T value;
  @override
  @JsonKey()
  final bool isDeleted;

  @override
  String toString() {
    return 'EntityState<$T>(value: $value, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntityState<T> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(value), isDeleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EntityStateCopyWith<T, _$_EntityState<T>> get copyWith =>
      __$$_EntityStateCopyWithImpl<T, _$_EntityState<T>>(this, _$identity);
}

abstract class _EntityState<T extends Entity> implements EntityState<T> {
  const factory _EntityState({required final T value, final bool isDeleted}) =
      _$_EntityState<T>;

  @override
  T get value;
  @override
  bool get isDeleted;
  @override
  @JsonKey(ignore: true)
  _$$_EntityStateCopyWith<T, _$_EntityState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

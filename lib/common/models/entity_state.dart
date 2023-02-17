import 'package:climate_platform_ui/common/models/entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity_state.freezed.dart';

@freezed
class EntityState<T extends Entity> with _$EntityState<T> {
  const factory EntityState({
    required bool isDeleted,
    required T value,
  }) = _EntityState;
}

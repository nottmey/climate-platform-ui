import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'entity_state.freezed.dart';

enum EntityPhase {
  beforeCreation,
  display,
  afterDeletion,
}

@freezed
class EntityState<T> with _$EntityState<T> {
  const factory EntityState({
    required AsyncValue<T> value,
    @Default(EntityPhase.display) EntityPhase phase,
  }) = _EntityState;

  const EntityState._(); // enables use of custom getters

  bool get inCreation => phase == EntityPhase.beforeCreation;

  bool get isDeleted => phase == EntityPhase.afterDeletion;
}

import 'package:climate_platform_ui/common/models/entity.dart';
import 'package:climate_platform_ui/common/models/entity_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class EntityStateNotifier<T extends Entity>
    extends StateNotifier<EntityState<T>> {
  EntityStateNotifier({required T initialValue})
      : super(EntityState(value: initialValue));

  T get value => state.value;

  bool get isDeleted => state.isDeleted;

  void set(T value) {
    state = state.copyWith(value: value);
  }

  Future<void> update(T newValue) async {
    state = state.copyWith(value: newValue);
    if (newValue.id == null) {
      final responseValue = await requestCreation(newValue);
      state = state.copyWith(value: responseValue);
    } else {
      // TODO update in database
    }
  }

  Future<void> delete() async {
    state = state.copyWith(isDeleted: true);
    if (state.value.id != null) {
      final responseValue = await requestDeletion(state.value.id!);
      state = state.copyWith(value: responseValue);
    }
  }

  Future<T> requestCreation(T value);

  Future<T> requestDeletion(String id);
}

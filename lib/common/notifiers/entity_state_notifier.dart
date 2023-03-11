import 'package:climate_platform_ui/common/models/entity.dart';
import 'package:climate_platform_ui/common/models/entity_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class EntityStateNotifier<T extends Entity>
    extends StateNotifier<EntityState<T>> {
  EntityStateNotifier({required T defaultValue})
      : super(
          EntityState(
            value: defaultValue,
            isDefault: true,
            isLoading: false,
          ),
        ) {
    _startSubscriptions(defaultValue);
  }

  void _startSubscriptions(T value) {
    final id = value.id;
    if (id != null) {
      // TODO cancel subscriptions on dispose
      try {
        subscribeToDeletion(id).first.then((value) {
          if (mounted) {
            state = state.copyWith(
              value: value,
              isDeleted: true,
              isLoading: false,
              isDefault: false,
            );
          }
        });
      } catch (e) {
        print(e);
      }
    }
  }

  void set(T initialValue) {
    state = state.copyWith(
      value: initialValue,
      isDefault: false,
    );
  }

  Future<void> initLoad() async {
    final id = state.value.id;
    if (state.isDefault && !state.isLoading && !state.isDeleted && id != null) {
      state = state.copyWith(isLoading: true);
      final value = await requestGet(id);
      if (mounted) {
        if (value != null) {
          state = state.copyWith(
            value: value,
            isLoading: false,
            isDefault: false,
          );
        } else {
          state = state.copyWith(
            isLoading: false,
            isDefault: false,
            isDeleted: true,
          );
        }
      }
    }
  }

  Future<void> update(T newValue) async {
    state = state.copyWith(
      value: newValue,
      isLoading: true,
    );
    if (newValue.id == null) {
      final responseValue = await requestCreation(newValue);
      if (mounted) {
        _startSubscriptions(responseValue);
        state = state.copyWith(
          value: responseValue,
          isLoading: false,
        );
      }
    } else {
      final responseValue = await requestUpdate(newValue);
      if (mounted) {
        state = state.copyWith(
          value: responseValue,
          isLoading: false,
        );
      }
    }
  }

  Future<void> delete() async {
    state = state.copyWith(
      isDeleted: true,
      isLoading: true,
    );
    if (state.value.id != null) {
      final responseValue = await requestDeletion(state.value.id!);
      if (mounted && responseValue != null) {
        state = state.copyWith(
          value: responseValue,
          isLoading: false,
        );
      }
    }
  }

  Stream<T> subscribeToDeletion(String id);

  Future<T?> requestGet(String id);

  Future<T> requestCreation(T value);

  Future<T> requestUpdate(T value);

  Future<T?> requestDeletion(String id);
}

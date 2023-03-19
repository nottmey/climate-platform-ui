import 'package:climate_platform_ui/common/models/entity.dart';
import 'package:climate_platform_ui/common/models/entity_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

abstract class EntityStateNotifier<T extends Entity>
    extends StateNotifier<EntityState<T>> {
  final String session;

  EntityStateNotifier({
    required this.session,
    required T defaultValue,
  }) : super(
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
      subscribeToDeletion(id)
          .where((event) => event.id == id)
          .first
          .then((value) {
        if (mounted) {
          state = state.copyWith(
            value: value,
            isDeleted: true,
            isLoading: false,
            isDefault: false,
          );
        }
      });
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
      final responseValue = await requestCreation(session, newValue);
      if (mounted) {
        _startSubscriptions(responseValue);
        state = state.copyWith(
          value: responseValue,
          isLoading: false,
        );
      }
    } else {
      final responseValue = await requestUpdate(session, newValue);
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
      final responseValue = await requestDeletion(state.value.id!, session);
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

  Future<T> requestCreation(String session, T value);

  Future<T> requestUpdate(String session, T value);

  Future<T?> requestDeletion(String id, String session);
}

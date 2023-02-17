import 'package:climate_platform_ui/common/models/entity.dart';
import 'package:climate_platform_ui/common/models/entity_state.dart';
import 'package:climate_platform_ui/common/notifiers/entity_cache_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EntityStateNotifier<T extends Entity>
    extends StateNotifier<EntityState<T>> {
  final EntityCacheNotifier<T> cache;

  EntityStateNotifier({
    required T value,
    required this.cache,
  }) : super(EntityState(value: value, isDeleted: false));

  T get value => state.value;

  bool get isDeleted => state.isDeleted;

  void update(T newValue) {
    // TODO save to database
    if (newValue.id != null) {
      cache.update(newValue.id!, newValue);
    }
    state = EntityState(value: newValue, isDeleted: false);
  }

  void delete() {
    // TODO delete from database
    if (state.value.id != null) {
      cache.delete(state.value.id!);
    }
    state = EntityState(value: state.value, isDeleted: true);
  }
}

import 'package:climate_platform_ui/common/models/entity.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EntityCacheNotifier<T extends Entity>
    extends StateNotifier<Map<String, T>> {
  EntityCacheNotifier() : super({});

  void add(List<T> values) {
    // TODO make efficient
    state = {
      ...state,
      ...{
        for (final value in values)
          if (value.id != null) value.id!: value,
      },
    };
  }

  T? get(String id) {
    return state[id];
  }

  void update(String id, T value) {
    // TODO make efficient
    state = {
      ...{
        for (final entry in state.entries)
          if (entry.key != id) entry.key: entry.value
      },
      id: value,
    };
  }

  void delete(String id) {
    // TODO make efficient
    state = {
      ...{
        for (final entry in state.entries)
          if (entry.key != id) entry.key: entry.value
      },
    };
  }
}

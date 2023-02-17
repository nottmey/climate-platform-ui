import 'package:climate_platform_ui/common/models/entity.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// Device local source of truth for entity data. Used for optimistic updates,
/// and to pass already present data into entity provider families, which only
/// use an id as argument.
class EntityCacheNotifier<T extends Entity>
    extends StateNotifier<Map<String, T>> {
  EntityCacheNotifier() : super({});

  T? get(String id) {
    return state[id];
  }

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

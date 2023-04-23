import 'package:hooks_riverpod/hooks_riverpod.dart';

enum _CacheState {
  /// value estimated, and request in progress
  optimistic,

  /// real value present and entity notifier is actively keeping it in sync
  synced,

  /// real value present and entity notifier is not longer keeping it in sync
  stale,
}

class _CacheEntry {
  final dynamic value;
  final _CacheState state;

  _CacheEntry(this.value, this.state);
}

class EntityCacheNotifier extends StateNotifier<Map<String, _CacheEntry>> {
  EntityCacheNotifier() : super({});

  bool isStale(String id) {
    if (mounted) {
      final entry = state[id];
      return entry == null || entry.state == _CacheState.stale;
    } else {
      return true;
    }
  }

  T? get<T>(String id) {
    if (mounted) {
      return state[id]?.value as T?;
    } else {
      return null;
    }
  }

  AsyncValue<T> getAsync<T>(String id) {
    final value = get<T>(id);
    return value != null ? AsyncValue.data(value) : const AsyncValue.loading();
  }

  void setOptimistic<T>(String id, T value) {
    // TODO check performance
    if (mounted) {
      state = {
        ...state,
        id: _CacheEntry(value, _CacheState.optimistic),
      };
    }
    // TODO evict stale data at some point
  }

  void setSynced<T>(String id, T value) {
    // TODO check performance
    if (mounted) {
      state = {
        ...state,
        id: _CacheEntry(value, _CacheState.synced),
      };
    }
    // TODO evict stale data at some point
  }

  void setStale(String id) {
    final value = get<dynamic>(id);
    if (value != null) {
      if (mounted) {
        state = {
          ...state,
          id: _CacheEntry(value, _CacheState.stale),
        };
      }
    }
  }
}

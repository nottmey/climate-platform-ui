import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';

enum _CacheState {
  /// value estimated, and request in progress
  optimistic,

  /// real value present and entity notifier is actively keeping it in sync
  synced,

  /// real value present and entity notifier is not longer keeping it in sync
  stale,
}

final _typePrefix = RegExp(r'^.*\$');
String _shortenType(Type runtimeType) {
  return runtimeType.toString().replaceAll(_typePrefix, '');
}

class _CacheEntry {
  final dynamic value;
  final _CacheState state;

  _CacheEntry(this.value, this.state);

  @override
  String toString() {
    return '(${_shortenType(value.runtimeType)}, ${state.name})';
  }
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

  T? _get<T>(String id) {
    if (mounted) {
      log('[$EntityCacheNotifier]: get<${_shortenType(T)}>($id) => ${state[id]}');
      return state[id]?.value as T?;
    } else {
      return null;
    }
  }

  AsyncValue<T> getAsync<T>(String id) {
    final value = _get<T>(id);
    return value != null ? AsyncValue.data(value) : const AsyncValue.loading();
  }

  void _set<T>(String id, T value, _CacheState cacheState) {
    if (mounted) {
      log('[$EntityCacheNotifier]: set<${_shortenType(T)}>($id, ${_shortenType(value.runtimeType)})');
      // TODO check performance
      state = {
        ...state,
        id: _CacheEntry(value, cacheState),
      };
    }
    // TODO evict stale data at some point
  }

  void setOptimistic<T>(String id, T value) {
    _set(id, value, _CacheState.optimistic);
  }

  void setSynced<T>(String id, T value) {
    _set(id, value, _CacheState.synced);
  }

  void setStale(String id) {
    final value = _get<dynamic>(id);
    if (value != null) {
      _set(id, value, _CacheState.stale);
    }
  }
}

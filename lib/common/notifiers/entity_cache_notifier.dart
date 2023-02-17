import 'package:hooks_riverpod/hooks_riverpod.dart';

class EntityCacheNotifier<T> extends StateNotifier<Map<String, T>> {
  final String Function(T value) getId;

  EntityCacheNotifier(this.getId) : super({});

  void add(List<T> values) {
    state = {
      ...state,
      ...{for (final value in values) getId(value): value},
    };
  }

  T? get(String id) {
    return state[id];
  }
}

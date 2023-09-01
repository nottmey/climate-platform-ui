import 'package:climate/api/api.graphql.dart';
import 'package:climate/common/models/entity_state.dart';
import 'package:climate/common/providers/entity_cache_provider.dart';
import 'package:climate/features/quantifications/notifiers/quantification_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final quantificationFamily = StateNotifierProvider.autoDispose.family<
    QuantificationStateNotifier, EntityState<QuantificationMixin>, String>(
  (ref, id) {
    final cache = ref.read(entityCacheProvider.notifier);
    return QuantificationStateNotifier(id: id, cache: cache);
  },
);

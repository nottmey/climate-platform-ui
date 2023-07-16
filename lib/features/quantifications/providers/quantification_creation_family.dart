import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/common/models/entity_state.dart';
import 'package:climate_platform_ui/common/providers/entity_cache_provider.dart';
import 'package:climate_platform_ui/features/quantifications/notifiers/quantification_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final quantificationCreationFamily = StateNotifierProvider.autoDispose.family<
    QuantificationStateNotifier, EntityState<QuantificationMixin>, String>(
  (ref, id) {
    final cache = ref.read(entityCacheProvider.notifier);
    return QuantificationStateNotifier(
      id: id,
      cache: cache,
      managesCreation: true,
    );
  },
);

import 'package:climate/api/api.graphql.dart';
import 'package:climate/common/models/entity_state.dart';
import 'package:climate/common/providers/entity_cache_provider.dart';
import 'package:climate/features/planetary_boundaries/notifiers/planetary_boundary_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final planetaryBoundaryCreationFamily = StateNotifierProvider.autoDispose
    .family<PlanetaryBoundaryStateNotifier, EntityState<PlanetaryBoundaryMixin>,
        String>(
  (ref, id) {
    final cache = ref.read(entityCacheProvider.notifier);
    return PlanetaryBoundaryStateNotifier(
      id: id,
      cache: cache,
      managesCreation: true,
    );
  },
);

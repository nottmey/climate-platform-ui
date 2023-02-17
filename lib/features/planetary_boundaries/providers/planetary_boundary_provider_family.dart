import 'package:climate_platform_ui/common/models/entity_state.dart';
import 'package:climate_platform_ui/common/notifiers/entity_state_notifier.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/models/planetary_boundary.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/providers/planetary_boundary_cache_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final planetaryBoundaryProviderFamily = StateNotifierProvider.autoDispose
    .family<EntityStateNotifier<PlanetaryBoundary>,
        EntityState<PlanetaryBoundary>, String>(
  (ref, id) {
    final cache = ref.read(planetaryBoundaryCacheProvider.notifier);
    final cachedValue = cache.get(id);

    if (cachedValue != null) {
      return EntityStateNotifier(value: cachedValue, cache: cache);
    } else {
      throw AssertionError('cache miss'); // TODO implement get
    }
  },
);

import 'package:climate_platform_ui/common/notifiers/entity_cache_notifier.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/models/planetary_boundary.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final planetaryBoundaryCacheProvider = StateNotifierProvider(
  (ref) => EntityCacheNotifier<PlanetaryBoundary>(),
);

import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/common/notifiers/entity_cache_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final planetaryBoundaryCacheProvider = StateNotifierProvider(
  (ref) => EntityCacheNotifier<PlanetaryBoundaryMixin>((pb) => pb.id),
);

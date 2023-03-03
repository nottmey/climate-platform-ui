import 'dart:async';

import 'package:async/async.dart';
import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/api/utils/stream.dart';
import 'package:climate_platform_ui/common/models/entity_state.dart';
import 'package:climate_platform_ui/common/notifiers/entity_state_notifier.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/models/planetary_boundary.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/providers/planetary_boundary_provider_family.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final planetaryBoundaryCreationsSink = StreamController<
    AutoDisposeStateNotifierProvider<EntityStateNotifier<PlanetaryBoundary>,
        EntityState<PlanetaryBoundary>>>();

final planetaryBoundaryCreationsProvider = StreamProvider<
    AutoDisposeStateNotifierProvider<EntityStateNotifier<PlanetaryBoundary>,
        EntityState<PlanetaryBoundary>>>((ref) {
  // TODO send stop events when not needed
  final onlineCreations = stream(OnCreatedPlanetaryBoundarySubscription())
      .where((event) => event.onCreatedPlanetaryBoundary != null)
      .map((event) {
    final newPlanetaryBoundary = event.onCreatedPlanetaryBoundary!;
    final provider = planetaryBoundaryProviderFamily(newPlanetaryBoundary.id);
    final existing = PlanetaryBoundary.existing(newPlanetaryBoundary);
    ref.read(provider.notifier).set(existing);
    return provider;
  });
  final localCreations = planetaryBoundaryCreationsSink.stream;
  // TODO deduplicate local creations (once they appear -> make backend report creations first)
  return StreamGroup.merge([onlineCreations, localCreations]);
});

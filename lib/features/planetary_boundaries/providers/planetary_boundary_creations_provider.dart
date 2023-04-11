import 'dart:async';

import 'package:async/async.dart';
import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/api/utils/subscribe.dart';
import 'package:climate_platform_ui/common/models/entity_state.dart';
import 'package:climate_platform_ui/common/notifiers/entity_state_notifier.dart';
import 'package:climate_platform_ui/common/providers/session_provider.dart';
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
  final onlineCreations = subscribe(
    OnCreatedPlanetaryBoundarySubscription(),
    ref.read(sessionProvider),
    (event) => event.onCreatedPlanetaryBoundary,
    (result) => result.session,
    // ignore: unnecessary_lambdas
    (result) => PlanetaryBoundary.existing(result),
  ).map((entity) {
    final provider = planetaryBoundaryProviderFamily(entity.id!);
    ref.read(provider.notifier).set(entity);
    return provider;
  });
  final localCreations = planetaryBoundaryCreationsSink.stream;
  return StreamGroup.merge([onlineCreations, localCreations]);
});

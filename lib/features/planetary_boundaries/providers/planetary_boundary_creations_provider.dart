import 'dart:async';

import 'package:climate_platform_ui/common/models/entity_state.dart';
import 'package:climate_platform_ui/common/notifiers/entity_state_notifier.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/models/planetary_boundary.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final planetaryBoundaryCreationsController = StreamController<
    AutoDisposeStateNotifierProvider<EntityStateNotifier<PlanetaryBoundary>,
        EntityState<PlanetaryBoundary>>>();

final planetaryBoundaryCreationsProvider = StreamProvider((ref) {
  return planetaryBoundaryCreationsController.stream;
});

import 'dart:async';

import 'package:climate_platform_ui/common/notifiers/entity_state_notifier.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/models/planetary_boundary.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final planetaryBoundaryCreationsController =
    StreamController<EntityStateNotifier<PlanetaryBoundary>>();

final planetaryBoundaryCreationsProvider = StreamProvider((ref) {
  return planetaryBoundaryCreationsController.stream;
});

import 'package:climate_platform_ui/common/models/entity_state.dart';
import 'package:climate_platform_ui/common/notifiers/entity_state_notifier.dart';
import 'package:climate_platform_ui/common/providers/session_provider.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/models/planetary_boundary.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/notifiers/planetary_boundary_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final planetaryBoundaryProviderFamily = StateNotifierProvider.autoDispose
    .family<EntityStateNotifier<PlanetaryBoundary>,
        EntityState<PlanetaryBoundary>, String>(
  (ref, id) {
    final session = ref.read(sessionProvider);
    // keep notifier alive until it is used (allows us to pre-fill it's state)
    final initialKeepAliveLink = ref.keepAlive();
    ref.onAddListener(initialKeepAliveLink.close);
    return PlanetaryBoundaryStateNotifier(session: session, id: id);
  },
);

import 'package:climate_platform_ui/common/models/entity_state.dart';
import 'package:climate_platform_ui/common/notifiers/entity_state_notifier.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/models/planetary_boundary.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'boundary_details_page_extra.freezed.dart';

@freezed
class BoundaryDetailsPageExtra with _$BoundaryDetailsPageExtra {
  const factory BoundaryDetailsPageExtra({
    AutoDisposeStateNotifierProvider<EntityStateNotifier<PlanetaryBoundary>,
            EntityState<PlanetaryBoundary>>?
        provider,
  }) = _BoundaryDetailsPageState;
}

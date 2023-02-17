import 'package:climate_platform_ui/common/notifiers/entity_state_notifier.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/models/planetary_boundary.dart';

class PlanetaryBoundaryStateNotifier
    extends EntityStateNotifier<PlanetaryBoundary> {
  PlanetaryBoundaryStateNotifier() : super(initialValue: PlanetaryBoundary());

  @override
  Future<PlanetaryBoundary> requestCreation(PlanetaryBoundary value) async {
    // TODO: implement createInDatabase
    await Future<void>.delayed(const Duration(seconds: 1));
    final copy = value.copy();
    copy.id = '123';
    copy.name = 'Newly created planetary boundary';
    return copy;
  }

  @override
  Future<PlanetaryBoundary> requestDeletion(String id) async {
    // TODO: implement deleteInDatabase
    await Future<void>.delayed(const Duration(seconds: 1));
    final copy = value.copy();
    copy.name = 'deleted planetary boundary';
    return copy;
  }
}

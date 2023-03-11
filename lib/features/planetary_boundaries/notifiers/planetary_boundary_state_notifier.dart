import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/api/utils/execute.dart';
import 'package:climate_platform_ui/api/utils/subscribe.dart';
import 'package:climate_platform_ui/common/notifiers/entity_state_notifier.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/models/planetary_boundary.dart';

class PlanetaryBoundaryStateNotifier
    extends EntityStateNotifier<PlanetaryBoundary> {
  PlanetaryBoundaryStateNotifier({String? id})
      : super(defaultValue: PlanetaryBoundary(id: id));

  @override
  Stream<PlanetaryBoundary> subscribeToDeletion(String id) {
    return subscribe(
      OnDeletedPlanetaryBoundarySubscription(
        variables: OnDeletedPlanetaryBoundaryArguments(id: id),
      ),
    ).where((event) {
      return event.onDeletedPlanetaryBoundary != null;
    }).map((event) {
      return PlanetaryBoundary.existing(event.onDeletedPlanetaryBoundary!);
    });
  }

  @override
  Future<PlanetaryBoundary?> requestGet(String id) async {
    final result = await execute(
      GetPlanetaryBoundaryQuery(
        variables: GetPlanetaryBoundaryArguments(id: id),
      ),
    );
    if (result.getPlanetaryBoundary != null) {
      return PlanetaryBoundary.existing(result.getPlanetaryBoundary!);
    } else {
      return null;
    }
  }

  @override
  Future<PlanetaryBoundary> requestCreation(PlanetaryBoundary value) async {
    final result = await execute(
      CreatePlanetaryBoundaryMutation(
        variables: CreatePlanetaryBoundaryArguments(value: value),
      ),
    );
    return PlanetaryBoundary.existing(result.createPlanetaryBoundary);
  }

  @override
  Future<PlanetaryBoundary> requestUpdate(PlanetaryBoundary value) async {
    // TODO: implement requestUpdate
    await Future<void>.delayed(const Duration(seconds: 1));
    final copy = value.copy();
    copy.id = '123';
    copy.name = 'updated planetary boundary';
    return copy;
  }

  @override
  Future<PlanetaryBoundary?> requestDeletion(String id) async {
    final result = await execute(
      DeletePlanetaryBoundaryMutation(
        variables: DeletePlanetaryBoundaryArguments(id: id),
      ),
    );
    if (result.deletePlanetaryBoundary != null) {
      return PlanetaryBoundary.existing(result.deletePlanetaryBoundary!);
    } else {
      return null;
    }
  }
}

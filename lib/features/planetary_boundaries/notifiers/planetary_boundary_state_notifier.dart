import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/api/utils/execute.dart';
import 'package:climate_platform_ui/api/utils/subscribe.dart';
import 'package:climate_platform_ui/common/notifiers/entity_state_notifier.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/models/planetary_boundary.dart';

class PlanetaryBoundaryStateNotifier
    extends EntityStateNotifier<PlanetaryBoundary> {
  PlanetaryBoundaryStateNotifier({required super.session, String? id})
      : super(defaultValue: PlanetaryBoundary(id: id));

  @override
  Stream<PlanetaryBoundary> subscribeToUpdates(String id) {
    return subscribe(
      OnUpdatedPlanetaryBoundarySubscription(
        variables: OnUpdatedPlanetaryBoundaryArguments(id: id),
      ),
      session,
      (event) => event.onUpdatedPlanetaryBoundary,
      (result) => result.session,
      // ignore: unnecessary_lambdas
      (result) => PlanetaryBoundary.existing(result),
    );
  }

  @override
  Stream<PlanetaryBoundary> subscribeToDeletion(String id) {
    return subscribe(
      OnDeletedPlanetaryBoundarySubscription(
        variables: OnDeletedPlanetaryBoundaryArguments(id: id),
      ),
      session,
      (event) => event.onDeletedPlanetaryBoundary,
      (result) => result.session,
      // ignore: unnecessary_lambdas
      (result) => PlanetaryBoundary.existing(result),
    );
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
  Future<PlanetaryBoundary> requestCreation(
    String session,
    PlanetaryBoundary value,
  ) async {
    final result = await execute(
      CreatePlanetaryBoundaryMutation(
        variables: CreatePlanetaryBoundaryArguments(
          session: session,
          value: value,
        ),
      ),
    );
    return PlanetaryBoundary.existing(result.createPlanetaryBoundary);
  }

  @override
  Future<PlanetaryBoundary> requestUpdate(
    String session,
    PlanetaryBoundary value,
  ) async {
    // TODO: implement requestUpdate
    await Future<void>.delayed(const Duration(seconds: 1));
    final copy = value.copy();
    copy.id = '123';
    copy.session = session;
    copy.name = 'updated planetary boundary';
    return copy;
  }

  @override
  Future<PlanetaryBoundary?> requestDeletion(String id, String session) async {
    final result = await execute(
      DeletePlanetaryBoundaryMutation(
        variables: DeletePlanetaryBoundaryArguments(id: id, session: session),
      ),
    );
    if (result.deletePlanetaryBoundary != null) {
      return PlanetaryBoundary.existing(result.deletePlanetaryBoundary!);
    } else {
      return null;
    }
  }
}

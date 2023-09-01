import 'package:climate/api/api.graphql.dart';
import 'package:climate/api/utils/execute.dart';
import 'package:climate/api/utils/subscribe.dart';
import 'package:climate/common/notifiers/entity_state_notifier.dart';

class _OptimisticUpdateResult with PlanetaryBoundaryMixin {}

class PlanetaryBoundaryStateNotifier extends EntityStateNotifier<
    PlanetaryBoundaryMixin, PlanetaryBoundaryInput> {
  PlanetaryBoundaryStateNotifier({
    required super.id,
    required super.cache,
    super.managesCreation,
  }) : super();

  @override
  Stream<PlanetaryBoundaryMixin> subscribeToUpdates(String id) {
    return subscribe(
      OnUpdatedPlanetaryBoundarySubscription(
        variables: OnUpdatedPlanetaryBoundaryArguments(id: id),
      ),
      (event) => event.onUpdatedPlanetaryBoundary,
    ).where((event) => event.id == id);
  }

  @override
  Stream<PlanetaryBoundaryMixin> subscribeToDeletion(String id) {
    return subscribe(
      OnDeletedPlanetaryBoundarySubscription(
        variables: OnDeletedPlanetaryBoundaryArguments(id: id),
      ),
      (event) => event.onDeletedPlanetaryBoundary,
    ).where((event) => event.id == id);
  }

  @override
  Future<PlanetaryBoundaryMixin?> requestGet(String id) async {
    final result = await execute(
      GetPlanetaryBoundaryQuery(
        variables: GetPlanetaryBoundaryArguments(id: id),
      ),
    );
    return result.getPlanetaryBoundary;
  }

  @override
  PlanetaryBoundaryMixin estimateCreation(
    PlanetaryBoundaryInput input,
  ) {
    final result = _OptimisticUpdateResult();
    result.id = input.id;
    result.name = input.name;
    result.description = input.description;
    return result;
  }

  @override
  Future<PlanetaryBoundaryMixin> requestCreation(
    PlanetaryBoundaryInput input,
  ) async {
    final result = await execute(
      CreatePlanetaryBoundaryMutation(
        variables: CreatePlanetaryBoundaryArguments(
          value: input,
        ),
      ),
    );
    return result.createPlanetaryBoundary;
  }

  @override
  PlanetaryBoundaryMixin estimateMerge(
    PlanetaryBoundaryMixin value,
    PlanetaryBoundaryInput input,
  ) {
    final result = _OptimisticUpdateResult();
    result.id = input.id;
    result.name = input.name ?? value.name;
    result.description = input.description ?? value.description;
    return result;
  }

  @override
  Future<PlanetaryBoundaryMixin?> requestMerge(
    PlanetaryBoundaryInput input,
  ) async {
    final result = await execute(
      MergePlanetaryBoundaryMutation(
        variables: MergePlanetaryBoundaryArguments(
          value: input,
        ),
      ),
    );
    return result.mergePlanetaryBoundary;
  }

  @override
  Future<PlanetaryBoundaryMixin?> requestDeletion(String id) async {
    final result = await execute(
      DeletePlanetaryBoundaryMutation(
        variables: DeletePlanetaryBoundaryArguments(id: id),
      ),
    );
    return result.deletePlanetaryBoundary;
  }
}

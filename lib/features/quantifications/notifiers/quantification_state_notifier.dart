import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/api/utils/execute.dart';
import 'package:climate_platform_ui/api/utils/subscribe.dart';
import 'package:climate_platform_ui/common/notifiers/entity_state_notifier.dart';

class _OptimisticUpdateResult with QuantificationMixin {}

class QuantificationStateNotifier
    extends EntityStateNotifier<QuantificationMixin, QuantificationInput> {
  QuantificationStateNotifier({
    required super.id,
    required super.cache,
    super.managesCreation,
  }) : super();

  @override
  Stream<QuantificationMixin> subscribeToUpdates(String id) {
    return subscribe(
      OnUpdatedQuantificationSubscription(
        variables: OnUpdatedQuantificationArguments(id: id),
      ),
      (event) => event.onUpdatedQuantification,
    ).where((event) => event.id == id);
  }

  @override
  Stream<QuantificationMixin> subscribeToDeletion(String id) {
    return subscribe(
      OnDeletedQuantificationSubscription(
        variables: OnDeletedQuantificationArguments(id: id),
      ),
      (event) => event.onDeletedQuantification,
    ).where((event) => event.id == id);
  }

  @override
  Future<QuantificationMixin?> requestGet(String id) async {
    final result = await execute(
      GetQuantificationQuery(
        variables: GetQuantificationArguments(id: id),
      ),
    );
    return result.getQuantification;
  }

  @override
  QuantificationMixin estimateCreation(QuantificationInput input) {
    final result = _OptimisticUpdateResult();
    result.id = input.id;
    result.name = input.name;
    return result;
  }

  @override
  Future<QuantificationMixin> requestCreation(QuantificationInput input) async {
    final result = await execute(
      CreateQuantificationMutation(
        variables: CreateQuantificationArguments(
          value: input,
        ),
      ),
    );
    return result.createQuantification;
  }

  @override
  QuantificationMixin estimateMerge(
    QuantificationMixin value,
    QuantificationInput input,
  ) {
    final result = _OptimisticUpdateResult();
    result.id = input.id;
    result.name = input.name ?? value.name;
    return result;
  }

  @override
  Future<QuantificationMixin?> requestMerge(QuantificationInput input) async {
    final result = await execute(
      MergeQuantificationMutation(
        variables: MergeQuantificationArguments(value: input),
      ),
    );
    return result.mergeQuantification;
  }

  @override
  Future<QuantificationMixin?> requestDeletion(String id) async {
    final result = await execute(
      DeleteQuantificationMutation(
        variables: DeleteQuantificationArguments(id: id),
      ),
    );
    return result.deleteQuantification;
  }
}

import 'package:climate/api/api.graphql.dart';
import 'package:climate/api/utils/execute.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final quantificationDataPointsFamily = FutureProvider.autoDispose
    .family<List<DataPointMixin>?, String>((ref, id) async {
  final response = await execute(
    GetDataPointsOnQuantificationQuery(
      variables: GetDataPointsOnQuantificationArguments(
        parentQuantificationId: id,
      ),
    ),
  );
  return response.getQuantification?.dataPoints;
});

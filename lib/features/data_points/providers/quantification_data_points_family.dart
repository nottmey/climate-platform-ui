import 'package:climate/api/api.graphql.dart';
import 'package:climate/api/utils/execute.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final quantificationDataPointsFamily = FutureProvider.autoDispose
    .family<GetDataPointsOnQuantification$Query, String>((ref, id) {
  return execute(
    GetDataPointsOnQuantificationQuery(
      variables: GetDataPointsOnQuantificationArguments(
        parentQuantificationId: id,
      ),
    ),
  );
});

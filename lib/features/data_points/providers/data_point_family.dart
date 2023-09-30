import 'package:climate/api/api.graphql.dart';
import 'package:climate/api/utils/execute.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dataPointFamily =
    FutureProvider.autoDispose.family<DataPointMixin?, String>((ref, id) async {
  final response = await execute(
    GetDataPointQuery(variables: GetDataPointArguments(id: id)),
  );

  return response.getDataPoint;
});

import 'package:climate/api/api.graphql.dart';
import 'package:climate/api/utils/execute.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final breakdownFamily =
    FutureProvider.autoDispose.family<BreakdownMixin?, String>((ref, id) async {
  final response = await execute(
    GetBreakdownQuery(variables: GetBreakdownArguments(id: id)),
  );

  return response.getBreakdown;
});

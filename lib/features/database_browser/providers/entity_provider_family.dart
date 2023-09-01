import 'package:climate/api/api.graphql.dart';
import 'package:climate/api/utils/execute.dart';
import 'package:climate/api/utils/throw_not_found_error.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final entityProviderFamily = FutureProvider.autoDispose
    .family<EntityMixin, GetEntityArguments>((ref, arguments) async {
  final result = await execute(GetEntityQuery(variables: arguments));
  return throwNotFoundError(result.getEntity);
});

import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/api/utils/stream.dart';
import 'package:climate_platform_ui/api/utils/throw_not_found_error.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final entityProviderFamily = StreamProvider.autoDispose
    .family<EntityMixin, GetEntityArguments>((ref, arguments) {
  return stream(GetEntityQuery(variables: arguments))
      .map((data) => data.getEntity)
      .map(throwNotFoundError);
});

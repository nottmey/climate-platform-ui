import 'package:artemis/artemis.dart';
import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final entityProviderFamily =
    StreamProvider.autoDispose.family((ref, GetEntityArguments arguments) {
  return getIt<ArtemisClient>().stream(GetEntityQuery(variables: arguments));
});

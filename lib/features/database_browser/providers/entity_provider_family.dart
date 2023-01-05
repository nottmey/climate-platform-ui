import 'dart:developer';

import 'package:artemis/artemis.dart';
import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/api/utils/throw_not_found_error.dart';
import 'package:climate_platform_ui/api/utils/throw_response_errors.dart';
import 'package:climate_platform_ui/get_it.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final entityProviderFamily = StreamProvider.autoDispose
    .family<EntityMixin, GetEntityArguments>((ref, arguments) {
  log('fetch entity "${arguments.id}"');
  return getIt<ArtemisClient>()
      .stream(GetEntityQuery(variables: arguments))
      .map(throwResponseErrors)
      .map((data) => data.kw$get)
      .map(throwNotFoundError);
});

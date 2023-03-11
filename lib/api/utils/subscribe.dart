import 'dart:developer';

import 'package:artemis/artemis.dart';
import 'package:climate_platform_ui/api/utils/throw_response_errors.dart';
import 'package:climate_platform_ui/get_it.dart';
import 'package:json_annotation/json_annotation.dart';

Stream<T> subscribe<T, U extends JsonSerializable>(GraphQLQuery<T, U> query) {
  final stopwatch = Stopwatch();
  stopwatch.start();
  // TODO close when no longer needed!
  return getIt<ArtemisClient>(instanceName: InstanceName.wssClient)
      .stream(query)
      .map(throwResponseErrors)
      .map((data) {
    final elapsedMs = stopwatch.elapsedMilliseconds;
    log('streamed ${query.variables ?? query.operationName} after ${elapsedMs}ms');
    return data;
  }).handleError((Object e, StackTrace st) {
    final elapsedMs = stopwatch.elapsedMilliseconds;
    log(
      'streamed with error ${query.variables ?? query.operationName} after ${elapsedMs}ms',
      error: e,
      stackTrace: st,
    );
    // ignore: only_throw_errors
    throw e; // acts like rethrow
  });
}

import 'dart:developer';

import 'package:artemis/artemis.dart';
import 'package:climate_platform_ui/api/utils/throw_response_errors.dart';
import 'package:climate_platform_ui/get_it.dart';
import 'package:json_annotation/json_annotation.dart';

/// close via closing the stream subscription
Stream<R> subscribe<T, U extends JsonSerializable, R>(
  GraphQLQuery<T, U> query,
  R? Function(T) getResult,
) {
  final stopwatch = Stopwatch();
  stopwatch.start();
  return getIt<ArtemisClient>(instanceName: InstanceName.wssClient)
      .stream(query)
      .map(throwResponseErrors)
      .map((event) => getResult(event))
      .where((result) => result != null)
      .map((result) => result!)
      .map((result) {
    final elapsedMs = stopwatch.elapsedMilliseconds;
    log('streamed ${query.variables ?? query.operationName} after ${elapsedMs}ms with value $result');
    return result;
  }).handleError((Object e, StackTrace st) {
    final elapsedMs = stopwatch.elapsedMilliseconds;
    // TODO subscription causes error in web (use debugger)
    log(
      'streamed with error ${query.variables ?? query.operationName} after ${elapsedMs}ms',
      error: e,
      stackTrace: st,
    );
    // ignore: only_throw_errors
    throw e; // acts like rethrow
  });
}

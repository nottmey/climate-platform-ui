import 'dart:developer';

import 'package:artemis/artemis.dart';
import 'package:climate_platform_ui/api/utils/throw_response_errors.dart';
import 'package:climate_platform_ui/common/models/entity.dart';
import 'package:climate_platform_ui/get_it.dart';
import 'package:json_annotation/json_annotation.dart';

Stream<E> subscribe<T, U extends JsonSerializable, R extends JsonSerializable,
    E extends Entity>(
  GraphQLQuery<T, U> query,
  String session,
  R? Function(T) getResult,
  String? Function(R) getSession,
  E Function(R) createEntity,
) {
  final stopwatch = Stopwatch();
  stopwatch.start();
  // TODO close when no longer needed!
  return getIt<ArtemisClient>(instanceName: InstanceName.wssClient)
      .stream(query)
      .map(throwResponseErrors)
      .map((event) => getResult(event))
      .where((result) => result != null)
      .where((result) => getSession(result!) != session)
      .map((result) => createEntity(result!))
      .map((entity) {
    final elapsedMs = stopwatch.elapsedMilliseconds;
    log('streamed ${query.variables ?? query.operationName} after ${elapsedMs}ms with value $entity');
    return entity;
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

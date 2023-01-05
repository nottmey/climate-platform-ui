import 'dart:developer';

import 'package:artemis/artemis.dart';
import 'package:climate_platform_ui/api/utils/throw_response_errors.dart';
import 'package:climate_platform_ui/get_it.dart';
import 'package:json_annotation/json_annotation.dart';

Future<T> execute<T, U extends JsonSerializable>(
  GraphQLQuery<T, U> query,
) async {
  final stopwatch = Stopwatch();
  stopwatch.start();
  try {
    final result =
        await getIt<ArtemisClient>().execute(query).then(throwResponseErrors);
    stopwatch.stop();
    log('executed ${query.variables ?? query.operationName} in ${stopwatch.elapsedMilliseconds}ms');
    return result;
  } catch (e, st) {
    stopwatch.stop();
    log(
      'executed with error ${query.variables ?? query.operationName} in ${stopwatch.elapsedMilliseconds}ms',
      error: e,
      stackTrace: st,
    );
    rethrow;
  }
}
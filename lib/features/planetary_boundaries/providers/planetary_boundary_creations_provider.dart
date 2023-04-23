import 'dart:async';

import 'package:async/async.dart';
import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/api/utils/subscribe.dart';
import 'package:climate_platform_ui/common/providers/entity_cache_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final planetaryBoundaryCreationsSink = StreamController<String>();

final planetaryBoundaryCreationsProvider = StreamProvider<String>((ref) {
  // remember to check whether the stream provider subscription is closed, once you implement connection closing/reopening
  final onlineCreations = subscribe(
    OnCreatedPlanetaryBoundarySubscription(),
    (event) => event.onCreatedPlanetaryBoundary,
  ).map((value) {
    ref.read(entityCacheProvider.notifier).setSynced(value.id, value);
    return value.id;
  });
  final localCreations = planetaryBoundaryCreationsSink.stream;
  return StreamGroup.merge([onlineCreations, localCreations]);
});

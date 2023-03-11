import 'dart:async';

import 'package:artemis/artemis.dart';
import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/app.dart';
import 'package:climate_platform_ui/get_it.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import './mocked_app_start_test.mocks.dart';
import '../utils/capture_screen.dart';
import '../utils/load_internal_icon_font.dart';

@GenerateMocks([ArtemisClient])
void main() {
  final devices = [
    const Device(
      name: 'phone',
      size: Size(390, 844),
      safeArea: EdgeInsets.fromLTRB(0, 47, 0, 34),
      // devicePixelRatio breaks responsiveness (MediaQuery size is wrong)
      // using it nevertheless, because else we get false 'Pixel test failed, 0.00% diff detected.' errors
      devicePixelRatio: 2,
    ),
    const Device(
      name: 'tablet',
      size: Size(820, 1180),
      devicePixelRatio: 2,
    ),
    // larger devices cause false 'Pixel test failed, 0.00% diff detected.' errors
    // const Device(
    //   name: 'laptop',
    //   size: Size(1366, 768),
    //   devicePixelRatio: 2,
    // ),
    // const Device(
    //   name: 'desktop',
    //   size: Size(1920, 1080),
    //   devicePixelRatio: 2,
    // ),
  ];

  final onCreatedStreamController = StreamController<
      GraphQLResponse<OnCreatedPlanetaryBoundary$Subscription>>();
  final onCreatedBroadcastStream =
      onCreatedStreamController.stream.asBroadcastStream();

  final onDeletedStreamController = StreamController<
      GraphQLResponse<OnDeletedPlanetaryBoundary$Subscription>>();
  final onDeletedBroadcastStream =
      onDeletedStreamController.stream.asBroadcastStream();

  setUp(() async {
    GoogleFonts.config.allowRuntimeFetching = false;

    await loadInternalIconFont();

    final mockHttpsClient = MockArtemisClient();
    when(
      mockHttpsClient.execute<GetPlanetaryBoundaryPage$Query,
          GetPlanetaryBoundaryPageArguments>(any),
    ).thenAnswer((_) async {
      final query = GetPlanetaryBoundaryPage$Query();
      final listPlanetaryBoundary =
          GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage();
      listPlanetaryBoundary.values = [1, 2, 3].map((e) {
        final value =
            GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PlanetaryBoundary();
        value.id = e.toString();
        value.name = 'Test $e';
        return value;
      }).toList();
      final pageInfo =
          GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PageInfo();
      pageInfo.size = 3;
      listPlanetaryBoundary.info = pageInfo;
      query.listPlanetaryBoundary = listPlanetaryBoundary;
      return GraphQLResponse(data: query);
    });
    getIt.registerSingleton<ArtemisClient>(
      instanceName: InstanceName.httpsClient,
      mockHttpsClient,
    );

    final mockWssClient = MockArtemisClient();
    when(
      mockWssClient.stream<dynamic, JsonSerializable>(any),
    ).thenAnswer((invocation) {
      final firstArg = invocation.positionalArguments.first;
      if (firstArg is OnCreatedPlanetaryBoundarySubscription) {
        return onCreatedBroadcastStream;
      } else if (firstArg is OnDeletedPlanetaryBoundarySubscription) {
        return onDeletedBroadcastStream;
      } else {
        throw AssertionError('not able to mock $firstArg');
      }
    });

    getIt.registerSingleton<ArtemisClient>(
      instanceName: InstanceName.wssClient,
      mockWssClient,
    );
  });

  testGoldens('app start with pushed update', (tester) async {
    await tester.pumpWidgetBuilder(
      ProviderScope(
        child: App(),
      ),
      surfaceSize: const Size(390, 763), // height = 844 - 47 - 34
    );

    await tester.pumpAndSettle();

    await multiScreenGolden(tester, 'mocked_app_start', devices: devices);

    await captureScreen(tester, 'mocked_app_start');

    expect(find.text('Planetary boundaries'), findsAtLeastNWidgets(1));
    expect(find.text('Test 1'), findsOneWidget);
    expect(find.text('Test 2'), findsOneWidget);
    expect(find.text('Test 3'), findsOneWidget);

    final creation =
        OnCreatedPlanetaryBoundary$Subscription$PlanetaryBoundary();
    creation.id = '4';
    creation.name = 'Test 4';
    final onCreatedData = OnCreatedPlanetaryBoundary$Subscription();
    onCreatedData.onCreatedPlanetaryBoundary = creation;
    onCreatedStreamController.add(GraphQLResponse(data: onCreatedData));

    await multiScreenGolden(
      tester,
      'mocked_app_start_with_pushed_update',
      devices: devices,
    );

    await captureScreen(tester, 'mocked_app_start_with_pushed_update');

    expect(find.text('Test 4'), findsOneWidget);

    final deletion =
        OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundary();
    deletion.id = '1';
    deletion.name = 'Test 1';
    final onDeletedData = OnDeletedPlanetaryBoundary$Subscription();
    onDeletedData.onDeletedPlanetaryBoundary = deletion;
    onDeletedStreamController.add(GraphQLResponse(data: onDeletedData));

    await multiScreenGolden(
      tester,
      'mocked_app_start_with_pushed_deletion',
      devices: devices,
    );

    await captureScreen(tester, 'mocked_app_start_with_pushed_deletion');
  });
}

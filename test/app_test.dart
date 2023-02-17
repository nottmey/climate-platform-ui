import 'package:artemis/artemis.dart';
import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/app.dart';
import 'package:climate_platform_ui/get_it.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'app_test.mocks.dart';
import 'utils/load_internal_icon_font.dart';

@GenerateMocks([ArtemisClient])
void main() {
  setUp(() async {
    GoogleFonts.config.allowRuntimeFetching = false;

    await loadInternalIconFont();

    final mockArtemisClient = MockArtemisClient();
    when(
      mockArtemisClient.execute<GetPlanetaryBoundaryPage$Query,
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
    getIt.registerSingleton<ArtemisClient>(mockArtemisClient);
  });

  testGoldens('app start', (tester) async {
    await tester.pumpWidgetBuilder(
      ProviderScope(
        child: App(),
      ),
    );

    await tester.pumpAndSettle();

    await multiScreenGolden(
      tester,
      'app_start',
      devices: [
        const Device(
          name: 'phone',
          size: Size(360, 640),
          devicePixelRatio: 2.0,
        )
      ],
    );

    expect(find.text('Planetary boundaries'), findsAtLeastNWidgets(1));
    expect(find.text('Test 1'), findsOneWidget);
    expect(find.text('Test 2'), findsOneWidget);
    expect(find.text('Test 3'), findsOneWidget);
  });
}

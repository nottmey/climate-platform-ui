import 'package:climate_platform_ui/common/widgets/app_entity_card.dart';
import 'package:climate_platform_ui/common/widgets/app_page_widget.dart';
import 'package:climate_platform_ui/common/widgets/main_top_bar.dart';
import 'package:climate_platform_ui/router.dart';
import 'package:go_router/go_router.dart';

class PlanetOverviewPage extends AppPageWidget {
  const PlanetOverviewPage({super.key});

  @override
  List<Widget> buildSlivers(BuildContext context, WidgetRef ref) {
    return [
      const MainTopBar(title: 'Planetary boundaries'),
      // TODO sketch content
      // TODO content card grid
      SliverToBoxAdapter(
        child: AppEntityCard(
          // TODO connect with database
          onTab: () {
            context.go(overviewDetailsPath);
          },
        ),
      ),
    ];
  }
}

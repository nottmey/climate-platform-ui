import 'package:climate_platform_ui/common/widgets/app_header_sliver.dart';
import 'package:climate_platform_ui/common/widgets/app_page_widget.dart';
import 'package:climate_platform_ui/features/planetary_boundaries/widgets/planetary_boundary_card.dart';

class PlanetOverviewPage extends AppPageWidget {
  const PlanetOverviewPage({super.key});

  @override
  List<Widget> buildSlivers(BuildContext context, WidgetRef ref) {
    return [
      const AppHeaderSliver(title: 'Planetary boundaries'),
      const SliverToBoxAdapter(
        child: PlanetaryBoundaryCard(),
      ),
    ];
  }
}

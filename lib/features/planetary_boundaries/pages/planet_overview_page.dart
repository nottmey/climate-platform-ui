import 'package:climate/common/widgets/app_card.dart';
import 'package:climate/common/widgets/app_header_sliver.dart';
import 'package:climate/common/widgets/app_page_widget.dart';
import 'package:climate/common/widgets/app_text.dart';
import 'package:climate/features/planetary_boundaries/widgets/planetary_boundary_card.dart';
import 'package:climate/features/planetary_boundaries/widgets/planetary_boundary_list_sliver.dart';

class PlanetOverviewPage extends AppPageWidget {
  const PlanetOverviewPage({super.key});

  @override
  List<Widget> buildSlivers(BuildContext context, WidgetRef ref) {
    return [
      const AppHeaderSliver(title: 'Planetary Boundaries'),
      SliverToBoxAdapter(
        child: AppCard(
          preset: AppCardPreset.filled,
          builder: (_) {
            return const AppText(
              value: 'The concept of planetary boundaries highlights the '
                  "interconnectedness of Earth's systems and emphasizes "
                  'the importance of maintaining their balance for the '
                  "planet's overall health. By understanding these boundaries, "
                  'policymakers, businesses, and individuals can work together '
                  'to develop sustainable practices to safeguard the Earth for '
                  'future generations. \n\n'
                  'The planetary boundaries framework outlines nine key '
                  "Earth system processes that regulate the planet's stability "
                  'and functioning:',
            );
          },
        ),
      ),
      const PlanetaryBoundaryListSliver(),
      SliverToBoxAdapter(
        child: PlanetaryBoundaryCard.creation(),
      ),
      SliverToBoxAdapter(
        child: SizedBox(height: MediaQuery.of(context).size.height / 4),
      ),
    ];
  }
}

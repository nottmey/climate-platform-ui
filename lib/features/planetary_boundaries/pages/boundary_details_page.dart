import 'package:climate_platform_ui/common/widgets/app_header_sliver.dart';
import 'package:climate_platform_ui/common/widgets/app_page_widget.dart';

class BoundaryDetailsPage extends AppPageWidget {
  const BoundaryDetailsPage({super.key});

  @override
  List<Widget> buildSlivers(BuildContext context, WidgetRef ref) {
    return const [
      AppHeaderSliver(title: 'CO2'),
    ];
  }
}

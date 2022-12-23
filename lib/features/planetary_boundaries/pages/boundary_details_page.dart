import 'package:climate_platform_ui/common/widgets/app_page_widget.dart';
import 'package:climate_platform_ui/common/widgets/main_top_bar.dart';

class BoundaryDetailsPage extends AppPageWidget {
  const BoundaryDetailsPage({super.key});

  @override
  List<Widget> buildSlivers(BuildContext context, WidgetRef ref) {
    return const [
      MainTopBar(title: 'CO2'),
    ];
  }
}

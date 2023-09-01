import 'package:climate/common/widgets/app_header_sliver.dart';
import 'package:climate/common/widgets/app_page_widget.dart';

class DevMenuPage extends AppPageWidget {
  const DevMenuPage({super.key});

  @override
  List<Widget> buildSlivers(BuildContext context, WidgetRef ref) {
    return [
      const AppHeaderSliver(title: 'Dev Menu'),
    ];
  }
}

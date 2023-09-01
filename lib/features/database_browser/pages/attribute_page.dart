import 'package:climate/common/widgets/app_header_sliver.dart';
import 'package:climate/common/widgets/app_page_widget.dart';
import 'package:climate/features/database_browser/widgets/database_entity_list_sliver.dart';
import 'package:climate/features/theming/utils/context_theme_extension.dart';
import 'package:climate/features/theming/utils/spacing_utils_extension.dart';

class AttributePage extends AppPageWidget {
  final String id;
  final String name;

  const AttributePage({
    super.key,
    required this.id,
    required this.name,
  });

  @override
  List<Widget> buildSlivers(BuildContext context, WidgetRef ref) {
    final theme = context.theme;
    return [
      AppHeaderSliver(title: 'Attribute $name'),
      theme.spacedSliverSizedBox(height: 2),
      DatabaseEntityListSliver(attributes: [id]),
      theme.spacedSliverSizedBox(height: 2),
    ];
  }
}

import 'package:climate/common/widgets/app_header_sliver.dart';
import 'package:climate/common/widgets/app_page_widget.dart';
import 'package:climate/features/quantifications/providers/quantifications_family.dart';

class QuantificationDetailsPage extends AppPageWidget {
  final String id;

  const QuantificationDetailsPage({
    super.key,
    required this.id,
  });

  @override
  List<Widget> buildSlivers(BuildContext context, WidgetRef ref) {
    final provider = quantificationFamily(id);
    return [
      AppHeaderSliver(
        provider: provider.select(
          (state) => state.asyncEntity.whenData((value) => value.name),
        ),
      ),
    ];
  }
}

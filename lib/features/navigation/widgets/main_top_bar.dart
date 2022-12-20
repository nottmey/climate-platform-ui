import 'package:climate_platform_ui/common/widgets/app_text.dart';
import 'package:flutter/material.dart';

class MainTopBar extends StatelessWidget {
  final String title;

  const MainTopBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar.large(
      title: AppText(value: title, overflow: TextOverflow.visible),
      pinned: true,
      actions: [
        IconButton(
          onPressed: () {
            // TODO
          },
          icon: const Icon(Icons.person),
        ),
      ],
    );
  }
}

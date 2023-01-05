import 'package:climate_platform_ui/api/api.graphql.dart';
import 'package:climate_platform_ui/common/widgets/app_text.dart';
import 'package:climate_platform_ui/common/widgets/app_widget.dart';
import 'package:climate_platform_ui/features/navigation/helpers/context_router_extension.dart';
import 'package:climate_platform_ui/features/theming/models/text_style_preset.dart';
import 'package:climate_platform_ui/features/theming/utils/context_theme_extension.dart';
import 'package:climate_platform_ui/features/theming/utils/spacing_utils_extension.dart';
import 'package:climate_platform_ui/router.dart';

class EntityDetailsSegment extends AppWidget {
  final EntityMixin entity;

  final List<String>? attributes;
  final bool showInlineTitle;

  const EntityDetailsSegment({
    super.key,
    required this.entity,
    this.attributes,
    this.showInlineTitle = true,
  });

  Widget buildValue(BuildContext context, String value) {
    final theme = context.theme;
    return theme.spacedPadding(
      left: 4,
      child: AppText(value: value),
    );
  }

  Widget buildEntityLink(BuildContext context, String id) {
    return ElevatedButton(
      onPressed: () => context.pushIfNew(databaseEntityPath(id)),
      child: AppText(value: 'Entity "$id"'),
    );
  }

  Widget buildAttributeLink(
    BuildContext context,
    EntityMixin$Attribute attribute,
  ) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppText(
          value: attribute.name,
          preset: TextStylePreset.titleMedium,
        ),
        context.theme.spacedSizedBox(width: 1),
        Expanded(
          child: AppText(
            value: '(${attribute.$$typename})',
            textAlign: TextAlign.end,
            preset: TextStylePreset.labelMedium,
            maxLines: 1,
            softWrap: false,
          ),
        ),
        context.theme.spacedSizedBox(width: 1),
        ElevatedButton(
          onPressed: () =>
              context.pushIfNew(databaseAttributePath(attribute.id)),
          child: AppText(
            value: 'id=${attribute.id}',
            preset: TextStylePreset.labelMedium,
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = context.theme;
    return theme.spacedPadding(
      horizontal: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showInlineTitle)
            ElevatedButton(
              onPressed: () => context.pushIfNew(databaseEntityPath(entity.id)),
              child: AppText(
                value: 'Entity "${entity.id}"',
                preset: TextStylePreset.titleLarge,
              ),
            ),
          ...entity.attributes
              .where((a) => attributes?.contains(a.id) ?? true)
              .map((a) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                theme.spacedPadding(
                  left: 2,
                  child: buildAttributeLink(context, a),
                ),
                if (a is EntityMixin$Attribute$StringAttribute)
                  buildValue(context, '"${a.string}"'),
                if (a is EntityMixin$Attribute$MultiStringAttribute)
                  ...a.strings.map(
                    (s) => buildValue(context, '"$s"'),
                  ),
                if (a is EntityMixin$Attribute$BooleanAttribute)
                  buildValue(context, a.boolean.toString()),
                if (a is EntityMixin$Attribute$MultiBooleanAttribute)
                  ...a.booleans.map(
                    (b) => buildValue(context, b.toString()),
                  ),
                if (a is EntityMixin$Attribute$DateTimeAttribute)
                  buildValue(context, a.dateTime.toIso8601String()),
                if (a is EntityMixin$Attribute$MultiDateTimeAttribute)
                  ...a.dateTimes.map(
                    (dt) => buildValue(context, dt.toIso8601String()),
                  ),
                if (a is EntityMixin$Attribute$ReferenceAttribute)
                  theme.spacedPadding(
                    left: 4,
                    child: buildEntityLink(context, a.ref),
                  ),
                if (a is EntityMixin$Attribute$MultiReferenceAttribute)
                  theme.spacedPadding(
                    left: 4,
                    child: theme.spacedWrap(
                      spacing: 2,
                      children: a.refs
                          .map((r) => buildEntityLink(context, r))
                          .toList(),
                    ),
                  ),
              ],
            );
          })
        ],
      ),
    );
  }
}

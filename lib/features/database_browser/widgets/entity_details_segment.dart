import 'package:climate/api/api.graphql.dart';
import 'package:climate/common/widgets/app_card.dart';
import 'package:climate/common/widgets/app_text.dart';
import 'package:climate/common/widgets/app_widget.dart';
import 'package:climate/features/theming/models/text_style_preset.dart';
import 'package:climate/features/theming/utils/context_theme_extension.dart';
import 'package:climate/features/theming/utils/spacing_utils_extension.dart';
import 'package:climate/router.dart';
import 'package:collection/collection.dart';

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
    return context.theme.spacedPadding(
      horizontal: 4,
      vertical: 2,
      child: AppText(value: '"$value"'),
    );
  }

  Widget buildEntityLink(BuildContext context, String id) {
    final theme = context.theme;
    return ElevatedButton(
      onPressed: () => context.goToDatabaseEntityIfNew(id),
      style: ElevatedButton.styleFrom(
        foregroundColor: theme.colorScheme.onPrimary,
        backgroundColor: theme.colorScheme.primary,
      ),
      // TODO enable presets to use the color of the surrounding button, like Text
      child: AppText(value: 'Entity $id'),
    );
  }

  Widget buildAttributeLink(
    BuildContext context,
    EntityMixin$Attribute attribute,
  ) {
    return OutlinedButton(
      onPressed: () =>
          context.goToDatabaseAttributeIfNew(attribute.id, attribute.name),
      child: AppText(
        value: attribute.name,
        preset: TextStylePreset.labelMedium,
      ),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = context.theme;
    final nameAttribute =
        entity.attributes.firstWhereOrNull((a) => a.name == ':db/ident');
    return AppCard(
      onTab: () => context.goToDatabaseEntityIfNew(entity.id),
      builder: (_) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (showInlineTitle)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Flexible(
                  child: AppText(
                    value: nameAttribute != null &&
                            nameAttribute
                                is EntityMixin$Attribute$StringAttribute
                        ? 'Entity ${nameAttribute.string}'
                        : 'Entity ${entity.id}',
                    preset: TextStylePreset.headlineSmall,
                    softWrap: false,
                    overflow: TextOverflow.fade,
                  ),
                ),
                if (nameAttribute != null)
                  AppText(
                    value: entity.id,
                    preset: TextStylePreset.labelMedium,
                  ),
              ],
            ),
          if (showInlineTitle) const Divider(),
          ...entity.attributes
              .where((a) => a.name != ':db/ident')
              .where((a) => attributes?.contains(a.id) ?? true)
              .mapIndexed((i, a) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (i != 0) const Divider(),
                buildAttributeLink(context, a),
                if (a is EntityMixin$Attribute$StringAttribute)
                  buildValue(context, a.string),
                if (a is EntityMixin$Attribute$MultiStringAttribute)
                  ...a.strings.map(
                    (s) => buildValue(context, s),
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
                  buildEntityLink(context, a.ref),
                if (a is EntityMixin$Attribute$MultiReferenceAttribute)
                  theme.spacedWrap(
                    spacing: 2,
                    children:
                        a.refs.map((r) => buildEntityLink(context, r)).toList(),
                  ),
                if (a is EntityMixin$Attribute$TupleAttribute)
                  buildValue(context, a.tuple),
                if (a is EntityMixin$Attribute$MultiTupleAttribute)
                  ...a.tuples.map((tuple) => buildValue(context, tuple)),
              ],
            );
          }),
        ],
      ),
    );
  }
}

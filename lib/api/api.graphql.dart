// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'api.graphql.g.dart';

mixin EntityMixin {
  late String id;
  late List<EntityMixin$Attribute> attributes;
}
mixin PageInfoMixin {
  int? next;
  late int size;
}
mixin PlanetaryBoundaryMixin {
  late String id;
  String? name;
}

@JsonSerializable(explicitToJson: true)
class GetEntity$Query$Entity extends JsonSerializable
    with EquatableMixin, EntityMixin {
  GetEntity$Query$Entity();

  factory GetEntity$Query$Entity.fromJson(Map<String, dynamic> json) =>
      _$GetEntity$Query$EntityFromJson(json);

  @override
  List<Object?> get props => [id, attributes];
  @override
  Map<String, dynamic> toJson() => _$GetEntity$Query$EntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetEntity$Query extends JsonSerializable with EquatableMixin {
  GetEntity$Query();

  factory GetEntity$Query.fromJson(Map<String, dynamic> json) =>
      _$GetEntity$QueryFromJson(json);

  GetEntity$Query$Entity? getEntity;

  @override
  List<Object?> get props => [getEntity];
  @override
  Map<String, dynamic> toJson() => _$GetEntity$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityMixin$Attribute$StringAttribute extends EntityMixin$Attribute
    with EquatableMixin {
  EntityMixin$Attribute$StringAttribute();

  factory EntityMixin$Attribute$StringAttribute.fromJson(
          Map<String, dynamic> json) =>
      _$EntityMixin$Attribute$StringAttributeFromJson(json);

  late String string;

  @override
  List<Object?> get props => [string];
  @override
  Map<String, dynamic> toJson() =>
      _$EntityMixin$Attribute$StringAttributeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityMixin$Attribute$BooleanAttribute extends EntityMixin$Attribute
    with EquatableMixin {
  EntityMixin$Attribute$BooleanAttribute();

  factory EntityMixin$Attribute$BooleanAttribute.fromJson(
          Map<String, dynamic> json) =>
      _$EntityMixin$Attribute$BooleanAttributeFromJson(json);

  late bool boolean;

  @override
  List<Object?> get props => [boolean];
  @override
  Map<String, dynamic> toJson() =>
      _$EntityMixin$Attribute$BooleanAttributeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityMixin$Attribute$DateTimeAttribute extends EntityMixin$Attribute
    with EquatableMixin {
  EntityMixin$Attribute$DateTimeAttribute();

  factory EntityMixin$Attribute$DateTimeAttribute.fromJson(
          Map<String, dynamic> json) =>
      _$EntityMixin$Attribute$DateTimeAttributeFromJson(json);

  late DateTime dateTime;

  @override
  List<Object?> get props => [dateTime];
  @override
  Map<String, dynamic> toJson() =>
      _$EntityMixin$Attribute$DateTimeAttributeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityMixin$Attribute$ReferenceAttribute extends EntityMixin$Attribute
    with EquatableMixin {
  EntityMixin$Attribute$ReferenceAttribute();

  factory EntityMixin$Attribute$ReferenceAttribute.fromJson(
          Map<String, dynamic> json) =>
      _$EntityMixin$Attribute$ReferenceAttributeFromJson(json);

  late String ref;

  @override
  List<Object?> get props => [ref];
  @override
  Map<String, dynamic> toJson() =>
      _$EntityMixin$Attribute$ReferenceAttributeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityMixin$Attribute$TupleAttribute extends EntityMixin$Attribute
    with EquatableMixin {
  EntityMixin$Attribute$TupleAttribute();

  factory EntityMixin$Attribute$TupleAttribute.fromJson(
          Map<String, dynamic> json) =>
      _$EntityMixin$Attribute$TupleAttributeFromJson(json);

  late String tuple;

  @override
  List<Object?> get props => [tuple];
  @override
  Map<String, dynamic> toJson() =>
      _$EntityMixin$Attribute$TupleAttributeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityMixin$Attribute$MultiStringAttribute extends EntityMixin$Attribute
    with EquatableMixin {
  EntityMixin$Attribute$MultiStringAttribute();

  factory EntityMixin$Attribute$MultiStringAttribute.fromJson(
          Map<String, dynamic> json) =>
      _$EntityMixin$Attribute$MultiStringAttributeFromJson(json);

  late List<String> strings;

  @override
  List<Object?> get props => [strings];
  @override
  Map<String, dynamic> toJson() =>
      _$EntityMixin$Attribute$MultiStringAttributeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityMixin$Attribute$MultiBooleanAttribute extends EntityMixin$Attribute
    with EquatableMixin {
  EntityMixin$Attribute$MultiBooleanAttribute();

  factory EntityMixin$Attribute$MultiBooleanAttribute.fromJson(
          Map<String, dynamic> json) =>
      _$EntityMixin$Attribute$MultiBooleanAttributeFromJson(json);

  late List<bool> booleans;

  @override
  List<Object?> get props => [booleans];
  @override
  Map<String, dynamic> toJson() =>
      _$EntityMixin$Attribute$MultiBooleanAttributeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityMixin$Attribute$MultiDateTimeAttribute extends EntityMixin$Attribute
    with EquatableMixin {
  EntityMixin$Attribute$MultiDateTimeAttribute();

  factory EntityMixin$Attribute$MultiDateTimeAttribute.fromJson(
          Map<String, dynamic> json) =>
      _$EntityMixin$Attribute$MultiDateTimeAttributeFromJson(json);

  late List<DateTime> dateTimes;

  @override
  List<Object?> get props => [dateTimes];
  @override
  Map<String, dynamic> toJson() =>
      _$EntityMixin$Attribute$MultiDateTimeAttributeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityMixin$Attribute$MultiReferenceAttribute
    extends EntityMixin$Attribute with EquatableMixin {
  EntityMixin$Attribute$MultiReferenceAttribute();

  factory EntityMixin$Attribute$MultiReferenceAttribute.fromJson(
          Map<String, dynamic> json) =>
      _$EntityMixin$Attribute$MultiReferenceAttributeFromJson(json);

  late List<String> refs;

  @override
  List<Object?> get props => [refs];
  @override
  Map<String, dynamic> toJson() =>
      _$EntityMixin$Attribute$MultiReferenceAttributeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityMixin$Attribute$MultiTupleAttribute extends EntityMixin$Attribute
    with EquatableMixin {
  EntityMixin$Attribute$MultiTupleAttribute();

  factory EntityMixin$Attribute$MultiTupleAttribute.fromJson(
          Map<String, dynamic> json) =>
      _$EntityMixin$Attribute$MultiTupleAttributeFromJson(json);

  late List<String> tuples;

  @override
  List<Object?> get props => [tuples];
  @override
  Map<String, dynamic> toJson() =>
      _$EntityMixin$Attribute$MultiTupleAttributeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityMixin$Attribute extends JsonSerializable with EquatableMixin {
  EntityMixin$Attribute();

  factory EntityMixin$Attribute.fromJson(Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'StringAttribute':
        return EntityMixin$Attribute$StringAttribute.fromJson(json);
      case r'BooleanAttribute':
        return EntityMixin$Attribute$BooleanAttribute.fromJson(json);
      case r'DateTimeAttribute':
        return EntityMixin$Attribute$DateTimeAttribute.fromJson(json);
      case r'ReferenceAttribute':
        return EntityMixin$Attribute$ReferenceAttribute.fromJson(json);
      case r'TupleAttribute':
        return EntityMixin$Attribute$TupleAttribute.fromJson(json);
      case r'MultiStringAttribute':
        return EntityMixin$Attribute$MultiStringAttribute.fromJson(json);
      case r'MultiBooleanAttribute':
        return EntityMixin$Attribute$MultiBooleanAttribute.fromJson(json);
      case r'MultiDateTimeAttribute':
        return EntityMixin$Attribute$MultiDateTimeAttribute.fromJson(json);
      case r'MultiReferenceAttribute':
        return EntityMixin$Attribute$MultiReferenceAttribute.fromJson(json);
      case r'MultiTupleAttribute':
        return EntityMixin$Attribute$MultiTupleAttribute.fromJson(json);
      default:
    }
    return _$EntityMixin$AttributeFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  late String id;

  late String name;

  @override
  List<Object?> get props => [$$typename, id, name];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'StringAttribute':
        return (this as EntityMixin$Attribute$StringAttribute).toJson();
      case r'BooleanAttribute':
        return (this as EntityMixin$Attribute$BooleanAttribute).toJson();
      case r'DateTimeAttribute':
        return (this as EntityMixin$Attribute$DateTimeAttribute).toJson();
      case r'ReferenceAttribute':
        return (this as EntityMixin$Attribute$ReferenceAttribute).toJson();
      case r'TupleAttribute':
        return (this as EntityMixin$Attribute$TupleAttribute).toJson();
      case r'MultiStringAttribute':
        return (this as EntityMixin$Attribute$MultiStringAttribute).toJson();
      case r'MultiBooleanAttribute':
        return (this as EntityMixin$Attribute$MultiBooleanAttribute).toJson();
      case r'MultiDateTimeAttribute':
        return (this as EntityMixin$Attribute$MultiDateTimeAttribute).toJson();
      case r'MultiReferenceAttribute':
        return (this as EntityMixin$Attribute$MultiReferenceAttribute).toJson();
      case r'MultiTupleAttribute':
        return (this as EntityMixin$Attribute$MultiTupleAttribute).toJson();
      default:
    }
    return _$EntityMixin$AttributeToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class GetEntityPage$Query$EntityListPage$PageInfo extends JsonSerializable
    with EquatableMixin, PageInfoMixin {
  GetEntityPage$Query$EntityListPage$PageInfo();

  factory GetEntityPage$Query$EntityListPage$PageInfo.fromJson(
          Map<String, dynamic> json) =>
      _$GetEntityPage$Query$EntityListPage$PageInfoFromJson(json);

  @override
  List<Object?> get props => [next, size];
  @override
  Map<String, dynamic> toJson() =>
      _$GetEntityPage$Query$EntityListPage$PageInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetEntityPage$Query$EntityListPage$Entity extends JsonSerializable
    with EquatableMixin, EntityMixin {
  GetEntityPage$Query$EntityListPage$Entity();

  factory GetEntityPage$Query$EntityListPage$Entity.fromJson(
          Map<String, dynamic> json) =>
      _$GetEntityPage$Query$EntityListPage$EntityFromJson(json);

  @override
  List<Object?> get props => [id, attributes];
  @override
  Map<String, dynamic> toJson() =>
      _$GetEntityPage$Query$EntityListPage$EntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetEntityPage$Query$EntityListPage extends JsonSerializable
    with EquatableMixin {
  GetEntityPage$Query$EntityListPage();

  factory GetEntityPage$Query$EntityListPage.fromJson(
          Map<String, dynamic> json) =>
      _$GetEntityPage$Query$EntityListPageFromJson(json);

  late GetEntityPage$Query$EntityListPage$PageInfo info;

  late List<GetEntityPage$Query$EntityListPage$Entity> values;

  @override
  List<Object?> get props => [info, values];
  @override
  Map<String, dynamic> toJson() =>
      _$GetEntityPage$Query$EntityListPageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetEntityPage$Query extends JsonSerializable with EquatableMixin {
  GetEntityPage$Query();

  factory GetEntityPage$Query.fromJson(Map<String, dynamic> json) =>
      _$GetEntityPage$QueryFromJson(json);

  late GetEntityPage$Query$EntityListPage listEntity;

  @override
  List<Object?> get props => [listEntity];
  @override
  Map<String, dynamic> toJson() => _$GetEntityPage$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityFilter extends JsonSerializable with EquatableMixin {
  EntityFilter({this.attributes});

  factory EntityFilter.fromJson(Map<String, dynamic> json) =>
      _$EntityFilterFromJson(json);

  List<String>? attributes;

  @override
  List<Object?> get props => [attributes];
  @override
  Map<String, dynamic> toJson() => _$EntityFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreatePlanetaryBoundary$Mutation$PlanetaryBoundary
    extends JsonSerializable with EquatableMixin, PlanetaryBoundaryMixin {
  CreatePlanetaryBoundary$Mutation$PlanetaryBoundary();

  factory CreatePlanetaryBoundary$Mutation$PlanetaryBoundary.fromJson(
          Map<String, dynamic> json) =>
      _$CreatePlanetaryBoundary$Mutation$PlanetaryBoundaryFromJson(json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$CreatePlanetaryBoundary$Mutation$PlanetaryBoundaryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreatePlanetaryBoundary$Mutation extends JsonSerializable
    with EquatableMixin {
  CreatePlanetaryBoundary$Mutation();

  factory CreatePlanetaryBoundary$Mutation.fromJson(
          Map<String, dynamic> json) =>
      _$CreatePlanetaryBoundary$MutationFromJson(json);

  late CreatePlanetaryBoundary$Mutation$PlanetaryBoundary
      createPlanetaryBoundary;

  @override
  List<Object?> get props => [createPlanetaryBoundary];
  @override
  Map<String, dynamic> toJson() =>
      _$CreatePlanetaryBoundary$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanetaryBoundaryInput extends JsonSerializable with EquatableMixin {
  PlanetaryBoundaryInput({this.name});

  factory PlanetaryBoundaryInput.fromJson(Map<String, dynamic> json) =>
      _$PlanetaryBoundaryInputFromJson(json);

  String? name;

  @override
  List<Object?> get props => [name];
  @override
  Map<String, dynamic> toJson() => _$PlanetaryBoundaryInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeletePlanetaryBoundary$Mutation$PlanetaryBoundary
    extends JsonSerializable with EquatableMixin, PlanetaryBoundaryMixin {
  DeletePlanetaryBoundary$Mutation$PlanetaryBoundary();

  factory DeletePlanetaryBoundary$Mutation$PlanetaryBoundary.fromJson(
          Map<String, dynamic> json) =>
      _$DeletePlanetaryBoundary$Mutation$PlanetaryBoundaryFromJson(json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$DeletePlanetaryBoundary$Mutation$PlanetaryBoundaryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeletePlanetaryBoundary$Mutation extends JsonSerializable
    with EquatableMixin {
  DeletePlanetaryBoundary$Mutation();

  factory DeletePlanetaryBoundary$Mutation.fromJson(
          Map<String, dynamic> json) =>
      _$DeletePlanetaryBoundary$MutationFromJson(json);

  DeletePlanetaryBoundary$Mutation$PlanetaryBoundary? deletePlanetaryBoundary;

  @override
  List<Object?> get props => [deletePlanetaryBoundary];
  @override
  Map<String, dynamic> toJson() =>
      _$DeletePlanetaryBoundary$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPlanetaryBoundary$Query$PlanetaryBoundary extends JsonSerializable
    with EquatableMixin, PlanetaryBoundaryMixin {
  GetPlanetaryBoundary$Query$PlanetaryBoundary();

  factory GetPlanetaryBoundary$Query$PlanetaryBoundary.fromJson(
          Map<String, dynamic> json) =>
      _$GetPlanetaryBoundary$Query$PlanetaryBoundaryFromJson(json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPlanetaryBoundary$Query$PlanetaryBoundaryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPlanetaryBoundary$Query extends JsonSerializable with EquatableMixin {
  GetPlanetaryBoundary$Query();

  factory GetPlanetaryBoundary$Query.fromJson(Map<String, dynamic> json) =>
      _$GetPlanetaryBoundary$QueryFromJson(json);

  GetPlanetaryBoundary$Query$PlanetaryBoundary? getPlanetaryBoundary;

  @override
  List<Object?> get props => [getPlanetaryBoundary];
  @override
  Map<String, dynamic> toJson() => _$GetPlanetaryBoundary$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PageInfo
    extends JsonSerializable with EquatableMixin, PageInfoMixin {
  GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PageInfo();

  factory GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PageInfo.fromJson(
          Map<String, dynamic> json) =>
      _$GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PageInfoFromJson(
          json);

  @override
  List<Object?> get props => [next, size];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PageInfoToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PlanetaryBoundary
    extends JsonSerializable with EquatableMixin, PlanetaryBoundaryMixin {
  GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PlanetaryBoundary();

  factory GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PlanetaryBoundary.fromJson(
          Map<String, dynamic> json) =>
      _$GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PlanetaryBoundaryFromJson(
          json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PlanetaryBoundaryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage
    extends JsonSerializable with EquatableMixin {
  GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage();

  factory GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage.fromJson(
          Map<String, dynamic> json) =>
      _$GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPageFromJson(json);

  late GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PageInfo info;

  late List<
          GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PlanetaryBoundary>
      values;

  @override
  List<Object?> get props => [info, values];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPlanetaryBoundaryPage$Query extends JsonSerializable
    with EquatableMixin {
  GetPlanetaryBoundaryPage$Query();

  factory GetPlanetaryBoundaryPage$Query.fromJson(Map<String, dynamic> json) =>
      _$GetPlanetaryBoundaryPage$QueryFromJson(json);

  late GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage
      listPlanetaryBoundary;

  @override
  List<Object?> get props => [listPlanetaryBoundary];
  @override
  Map<String, dynamic> toJson() => _$GetPlanetaryBoundaryPage$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OnCreatedPlanetaryBoundary$Subscription$PlanetaryBoundary
    extends JsonSerializable with EquatableMixin, PlanetaryBoundaryMixin {
  OnCreatedPlanetaryBoundary$Subscription$PlanetaryBoundary();

  factory OnCreatedPlanetaryBoundary$Subscription$PlanetaryBoundary.fromJson(
          Map<String, dynamic> json) =>
      _$OnCreatedPlanetaryBoundary$Subscription$PlanetaryBoundaryFromJson(json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$OnCreatedPlanetaryBoundary$Subscription$PlanetaryBoundaryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OnCreatedPlanetaryBoundary$Subscription extends JsonSerializable
    with EquatableMixin {
  OnCreatedPlanetaryBoundary$Subscription();

  factory OnCreatedPlanetaryBoundary$Subscription.fromJson(
          Map<String, dynamic> json) =>
      _$OnCreatedPlanetaryBoundary$SubscriptionFromJson(json);

  OnCreatedPlanetaryBoundary$Subscription$PlanetaryBoundary?
      onCreatedPlanetaryBoundary;

  @override
  List<Object?> get props => [onCreatedPlanetaryBoundary];
  @override
  Map<String, dynamic> toJson() =>
      _$OnCreatedPlanetaryBoundary$SubscriptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundary
    extends JsonSerializable with EquatableMixin, PlanetaryBoundaryMixin {
  OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundary();

  factory OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundary.fromJson(
          Map<String, dynamic> json) =>
      _$OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundaryFromJson(json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundaryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OnDeletedPlanetaryBoundary$Subscription extends JsonSerializable
    with EquatableMixin {
  OnDeletedPlanetaryBoundary$Subscription();

  factory OnDeletedPlanetaryBoundary$Subscription.fromJson(
          Map<String, dynamic> json) =>
      _$OnDeletedPlanetaryBoundary$SubscriptionFromJson(json);

  OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundary?
      onDeletedPlanetaryBoundary;

  @override
  List<Object?> get props => [onDeletedPlanetaryBoundary];
  @override
  Map<String, dynamic> toJson() =>
      _$OnDeletedPlanetaryBoundary$SubscriptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetEntityArguments extends JsonSerializable with EquatableMixin {
  GetEntityArguments({required this.id});

  @override
  factory GetEntityArguments.fromJson(Map<String, dynamic> json) =>
      _$GetEntityArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$GetEntityArgumentsToJson(this);
}

final GET_ENTITY_QUERY_DOCUMENT_OPERATION_NAME = 'GetEntity';
final GET_ENTITY_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetEntity'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getEntity'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Entity'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'Entity'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Entity'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'attributes'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'StringAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'string'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'BooleanAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'boolean'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'DateTimeAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'dateTime'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReferenceAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'ref'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'TupleAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'tuple'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'MultiStringAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'strings'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'MultiBooleanAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'booleans'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'MultiDateTimeAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'dateTimes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'MultiReferenceAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'refs'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'MultiTupleAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'tuples'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
        ]),
      ),
    ]),
  ),
]);

class GetEntityQuery extends GraphQLQuery<GetEntity$Query, GetEntityArguments> {
  GetEntityQuery({required this.variables});

  @override
  final DocumentNode document = GET_ENTITY_QUERY_DOCUMENT;

  @override
  final String operationName = GET_ENTITY_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetEntityArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetEntity$Query parse(Map<String, dynamic> json) =>
      GetEntity$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetEntityPageArguments extends JsonSerializable with EquatableMixin {
  GetEntityPageArguments({
    this.filter,
    required this.page,
    required this.size,
  });

  @override
  factory GetEntityPageArguments.fromJson(Map<String, dynamic> json) =>
      _$GetEntityPageArgumentsFromJson(json);

  final EntityFilter? filter;

  late int page;

  late int size;

  @override
  List<Object?> get props => [filter, page, size];
  @override
  Map<String, dynamic> toJson() => _$GetEntityPageArgumentsToJson(this);
}

final GET_ENTITY_PAGE_QUERY_DOCUMENT_OPERATION_NAME = 'GetEntityPage';
final GET_ENTITY_PAGE_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetEntityPage'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'EntityFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'size')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'listEntity'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'filter')),
          ),
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'number'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'size'),
                value: VariableNode(name: NameNode(value: 'size')),
              ),
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'info'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'PageInfo'),
                directives: [],
              )
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'values'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Entity'),
                directives: [],
              )
            ]),
          ),
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'PageInfo'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'PageInfo'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'next'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'size'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'Entity'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Entity'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'attributes'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'StringAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'string'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'BooleanAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'boolean'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'DateTimeAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'dateTime'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReferenceAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'ref'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'TupleAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'tuple'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'MultiStringAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'strings'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'MultiBooleanAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'booleans'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'MultiDateTimeAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'dateTimes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'MultiReferenceAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'refs'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'MultiTupleAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'tuples'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
        ]),
      ),
    ]),
  ),
]);

class GetEntityPageQuery
    extends GraphQLQuery<GetEntityPage$Query, GetEntityPageArguments> {
  GetEntityPageQuery({required this.variables});

  @override
  final DocumentNode document = GET_ENTITY_PAGE_QUERY_DOCUMENT;

  @override
  final String operationName = GET_ENTITY_PAGE_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetEntityPageArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetEntityPage$Query parse(Map<String, dynamic> json) =>
      GetEntityPage$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreatePlanetaryBoundaryArguments extends JsonSerializable
    with EquatableMixin {
  CreatePlanetaryBoundaryArguments({required this.value});

  @override
  factory CreatePlanetaryBoundaryArguments.fromJson(
          Map<String, dynamic> json) =>
      _$CreatePlanetaryBoundaryArgumentsFromJson(json);

  late PlanetaryBoundaryInput value;

  @override
  List<Object?> get props => [value];
  @override
  Map<String, dynamic> toJson() =>
      _$CreatePlanetaryBoundaryArgumentsToJson(this);
}

final CREATE_PLANETARY_BOUNDARY_MUTATION_DOCUMENT_OPERATION_NAME =
    'CreatePlanetaryBoundary';
final CREATE_PLANETARY_BOUNDARY_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreatePlanetaryBoundary'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'value')),
        type: NamedTypeNode(
          name: NameNode(value: 'PlanetaryBoundaryInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createPlanetaryBoundary'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'value'),
            value: VariableNode(name: NameNode(value: 'value')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PlanetaryBoundary'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'PlanetaryBoundary'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'PlanetaryBoundary'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class CreatePlanetaryBoundaryMutation extends GraphQLQuery<
    CreatePlanetaryBoundary$Mutation, CreatePlanetaryBoundaryArguments> {
  CreatePlanetaryBoundaryMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_PLANETARY_BOUNDARY_MUTATION_DOCUMENT;

  @override
  final String operationName =
      CREATE_PLANETARY_BOUNDARY_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreatePlanetaryBoundaryArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreatePlanetaryBoundary$Mutation parse(Map<String, dynamic> json) =>
      CreatePlanetaryBoundary$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class DeletePlanetaryBoundaryArguments extends JsonSerializable
    with EquatableMixin {
  DeletePlanetaryBoundaryArguments({required this.id});

  @override
  factory DeletePlanetaryBoundaryArguments.fromJson(
          Map<String, dynamic> json) =>
      _$DeletePlanetaryBoundaryArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$DeletePlanetaryBoundaryArgumentsToJson(this);
}

final DELETE_PLANETARY_BOUNDARY_MUTATION_DOCUMENT_OPERATION_NAME =
    'DeletePlanetaryBoundary';
final DELETE_PLANETARY_BOUNDARY_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeletePlanetaryBoundary'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deletePlanetaryBoundary'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PlanetaryBoundary'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'PlanetaryBoundary'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'PlanetaryBoundary'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class DeletePlanetaryBoundaryMutation extends GraphQLQuery<
    DeletePlanetaryBoundary$Mutation, DeletePlanetaryBoundaryArguments> {
  DeletePlanetaryBoundaryMutation({required this.variables});

  @override
  final DocumentNode document = DELETE_PLANETARY_BOUNDARY_MUTATION_DOCUMENT;

  @override
  final String operationName =
      DELETE_PLANETARY_BOUNDARY_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final DeletePlanetaryBoundaryArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  DeletePlanetaryBoundary$Mutation parse(Map<String, dynamic> json) =>
      DeletePlanetaryBoundary$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetPlanetaryBoundaryArguments extends JsonSerializable
    with EquatableMixin {
  GetPlanetaryBoundaryArguments({required this.id});

  @override
  factory GetPlanetaryBoundaryArguments.fromJson(Map<String, dynamic> json) =>
      _$GetPlanetaryBoundaryArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$GetPlanetaryBoundaryArgumentsToJson(this);
}

final GET_PLANETARY_BOUNDARY_QUERY_DOCUMENT_OPERATION_NAME =
    'GetPlanetaryBoundary';
final GET_PLANETARY_BOUNDARY_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetPlanetaryBoundary'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getPlanetaryBoundary'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PlanetaryBoundary'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'PlanetaryBoundary'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'PlanetaryBoundary'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class GetPlanetaryBoundaryQuery extends GraphQLQuery<GetPlanetaryBoundary$Query,
    GetPlanetaryBoundaryArguments> {
  GetPlanetaryBoundaryQuery({required this.variables});

  @override
  final DocumentNode document = GET_PLANETARY_BOUNDARY_QUERY_DOCUMENT;

  @override
  final String operationName =
      GET_PLANETARY_BOUNDARY_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetPlanetaryBoundaryArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetPlanetaryBoundary$Query parse(Map<String, dynamic> json) =>
      GetPlanetaryBoundary$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetPlanetaryBoundaryPageArguments extends JsonSerializable
    with EquatableMixin {
  GetPlanetaryBoundaryPageArguments({
    required this.page,
    required this.size,
  });

  @override
  factory GetPlanetaryBoundaryPageArguments.fromJson(
          Map<String, dynamic> json) =>
      _$GetPlanetaryBoundaryPageArgumentsFromJson(json);

  late int page;

  late int size;

  @override
  List<Object?> get props => [page, size];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPlanetaryBoundaryPageArgumentsToJson(this);
}

final GET_PLANETARY_BOUNDARY_PAGE_QUERY_DOCUMENT_OPERATION_NAME =
    'GetPlanetaryBoundaryPage';
final GET_PLANETARY_BOUNDARY_PAGE_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetPlanetaryBoundaryPage'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'size')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'listPlanetaryBoundary'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'number'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'size'),
                value: VariableNode(name: NameNode(value: 'size')),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'info'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'PageInfo'),
                directives: [],
              )
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'values'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'PlanetaryBoundary'),
                directives: [],
              )
            ]),
          ),
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'PageInfo'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'PageInfo'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'next'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'size'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'PlanetaryBoundary'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'PlanetaryBoundary'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class GetPlanetaryBoundaryPageQuery extends GraphQLQuery<
    GetPlanetaryBoundaryPage$Query, GetPlanetaryBoundaryPageArguments> {
  GetPlanetaryBoundaryPageQuery({required this.variables});

  @override
  final DocumentNode document = GET_PLANETARY_BOUNDARY_PAGE_QUERY_DOCUMENT;

  @override
  final String operationName =
      GET_PLANETARY_BOUNDARY_PAGE_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetPlanetaryBoundaryPageArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetPlanetaryBoundaryPage$Query parse(Map<String, dynamic> json) =>
      GetPlanetaryBoundaryPage$Query.fromJson(json);
}

final ON_CREATED_PLANETARY_BOUNDARY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'OnCreatedPlanetaryBoundary';
final ON_CREATED_PLANETARY_BOUNDARY_SUBSCRIPTION_DOCUMENT =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'OnCreatedPlanetaryBoundary'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'onCreatedPlanetaryBoundary'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PlanetaryBoundary'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'PlanetaryBoundary'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'PlanetaryBoundary'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class OnCreatedPlanetaryBoundarySubscription extends GraphQLQuery<
    OnCreatedPlanetaryBoundary$Subscription, JsonSerializable> {
  OnCreatedPlanetaryBoundarySubscription();

  @override
  final DocumentNode document =
      ON_CREATED_PLANETARY_BOUNDARY_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      ON_CREATED_PLANETARY_BOUNDARY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  OnCreatedPlanetaryBoundary$Subscription parse(Map<String, dynamic> json) =>
      OnCreatedPlanetaryBoundary$Subscription.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class OnDeletedPlanetaryBoundaryArguments extends JsonSerializable
    with EquatableMixin {
  OnDeletedPlanetaryBoundaryArguments({required this.id});

  @override
  factory OnDeletedPlanetaryBoundaryArguments.fromJson(
          Map<String, dynamic> json) =>
      _$OnDeletedPlanetaryBoundaryArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$OnDeletedPlanetaryBoundaryArgumentsToJson(this);
}

final ON_DELETED_PLANETARY_BOUNDARY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'OnDeletedPlanetaryBoundary';
final ON_DELETED_PLANETARY_BOUNDARY_SUBSCRIPTION_DOCUMENT =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'OnDeletedPlanetaryBoundary'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'onDeletedPlanetaryBoundary'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PlanetaryBoundary'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'PlanetaryBoundary'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'PlanetaryBoundary'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class OnDeletedPlanetaryBoundarySubscription extends GraphQLQuery<
    OnDeletedPlanetaryBoundary$Subscription,
    OnDeletedPlanetaryBoundaryArguments> {
  OnDeletedPlanetaryBoundarySubscription({required this.variables});

  @override
  final DocumentNode document =
      ON_DELETED_PLANETARY_BOUNDARY_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      ON_DELETED_PLANETARY_BOUNDARY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final OnDeletedPlanetaryBoundaryArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  OnDeletedPlanetaryBoundary$Subscription parse(Map<String, dynamic> json) =>
      OnDeletedPlanetaryBoundary$Subscription.fromJson(json);
}

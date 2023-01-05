// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'api.graphql.g.dart';

mixin PageInfoMixin {
  int? next;
  late int size;
}
mixin EntityMixin {
  late String id;
  late List<EntityMixin$Attribute> attributes;
}

@JsonSerializable(explicitToJson: true)
class GetEntityPage$Query$EntityList$EntityListPage$PageInfo
    extends JsonSerializable with EquatableMixin, PageInfoMixin {
  GetEntityPage$Query$EntityList$EntityListPage$PageInfo();

  factory GetEntityPage$Query$EntityList$EntityListPage$PageInfo.fromJson(
          Map<String, dynamic> json) =>
      _$GetEntityPage$Query$EntityList$EntityListPage$PageInfoFromJson(json);

  @override
  List<Object?> get props => [next, size];
  @override
  Map<String, dynamic> toJson() =>
      _$GetEntityPage$Query$EntityList$EntityListPage$PageInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetEntityPage$Query$EntityList$EntityListPage$Entity
    extends JsonSerializable with EquatableMixin, EntityMixin {
  GetEntityPage$Query$EntityList$EntityListPage$Entity();

  factory GetEntityPage$Query$EntityList$EntityListPage$Entity.fromJson(
          Map<String, dynamic> json) =>
      _$GetEntityPage$Query$EntityList$EntityListPage$EntityFromJson(json);

  @override
  List<Object?> get props => [id, attributes];
  @override
  Map<String, dynamic> toJson() =>
      _$GetEntityPage$Query$EntityList$EntityListPage$EntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetEntityPage$Query$EntityList$EntityListPage extends JsonSerializable
    with EquatableMixin {
  GetEntityPage$Query$EntityList$EntityListPage();

  factory GetEntityPage$Query$EntityList$EntityListPage.fromJson(
          Map<String, dynamic> json) =>
      _$GetEntityPage$Query$EntityList$EntityListPageFromJson(json);

  late GetEntityPage$Query$EntityList$EntityListPage$PageInfo info;

  late List<GetEntityPage$Query$EntityList$EntityListPage$Entity> entities;

  @override
  List<Object?> get props => [info, entities];
  @override
  Map<String, dynamic> toJson() =>
      _$GetEntityPage$Query$EntityList$EntityListPageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetEntityPage$Query$EntityList extends JsonSerializable
    with EquatableMixin {
  GetEntityPage$Query$EntityList();

  factory GetEntityPage$Query$EntityList.fromJson(Map<String, dynamic> json) =>
      _$GetEntityPage$Query$EntityListFromJson(json);

  late GetEntityPage$Query$EntityList$EntityListPage page;

  @override
  List<Object?> get props => [page];
  @override
  Map<String, dynamic> toJson() => _$GetEntityPage$Query$EntityListToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetEntityPage$Query extends JsonSerializable with EquatableMixin {
  GetEntityPage$Query();

  factory GetEntityPage$Query.fromJson(Map<String, dynamic> json) =>
      _$GetEntityPage$QueryFromJson(json);

  late GetEntityPage$Query$EntityList list;

  @override
  List<Object?> get props => [list];
  @override
  Map<String, dynamic> toJson() => _$GetEntityPage$QueryToJson(this);
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
      case r'MultiStringAttribute':
        return EntityMixin$Attribute$MultiStringAttribute.fromJson(json);
      case r'MultiBooleanAttribute':
        return EntityMixin$Attribute$MultiBooleanAttribute.fromJson(json);
      case r'MultiDateTimeAttribute':
        return EntityMixin$Attribute$MultiDateTimeAttribute.fromJson(json);
      case r'MultiReferenceAttribute':
        return EntityMixin$Attribute$MultiReferenceAttribute.fromJson(json);
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
      case r'MultiStringAttribute':
        return (this as EntityMixin$Attribute$MultiStringAttribute).toJson();
      case r'MultiBooleanAttribute':
        return (this as EntityMixin$Attribute$MultiBooleanAttribute).toJson();
      case r'MultiDateTimeAttribute':
        return (this as EntityMixin$Attribute$MultiDateTimeAttribute).toJson();
      case r'MultiReferenceAttribute':
        return (this as EntityMixin$Attribute$MultiReferenceAttribute).toJson();
      default:
    }
    return _$EntityMixin$AttributeToJson(this);
  }
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
class Databases$Query extends JsonSerializable with EquatableMixin {
  Databases$Query();

  factory Databases$Query.fromJson(Map<String, dynamic> json) =>
      _$Databases$QueryFromJson(json);

  late List<String> databases;

  @override
  List<Object?> get props => [databases];
  @override
  Map<String, dynamic> toJson() => _$Databases$QueryToJson(this);
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

  @JsonKey(name: 'get')
  GetEntity$Query$Entity? kw$get;

  @override
  List<Object?> get props => [kw$get];
  @override
  Map<String, dynamic> toJson() => _$GetEntity$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetEntityPageArguments extends JsonSerializable with EquatableMixin {
  GetEntityPageArguments({
    required this.database,
    this.page,
    this.size,
    this.filter,
  });

  @override
  factory GetEntityPageArguments.fromJson(Map<String, dynamic> json) =>
      _$GetEntityPageArgumentsFromJson(json);

  late String database;

  final int? page;

  final int? size;

  final EntityFilter? filter;

  @override
  List<Object?> get props => [database, page, size, filter];
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
        variable: VariableNode(name: NameNode(value: 'database')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'size')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'EntityFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'list'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'database'),
            value: VariableNode(name: NameNode(value: 'database')),
          ),
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'filter')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'page'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'page'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ArgumentNode(
                name: NameNode(value: 'size'),
                value: VariableNode(name: NameNode(value: 'size')),
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
                name: NameNode(value: 'entities'),
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

final DATABASES_QUERY_DOCUMENT_OPERATION_NAME = 'Databases';
final DATABASES_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Databases'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'databases'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      )
    ]),
  )
]);

class DatabasesQuery extends GraphQLQuery<Databases$Query, JsonSerializable> {
  DatabasesQuery();

  @override
  final DocumentNode document = DATABASES_QUERY_DOCUMENT;

  @override
  final String operationName = DATABASES_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  Databases$Query parse(Map<String, dynamic> json) =>
      Databases$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetEntityArguments extends JsonSerializable with EquatableMixin {
  GetEntityArguments({
    required this.database,
    required this.id,
  });

  @override
  factory GetEntityArguments.fromJson(Map<String, dynamic> json) =>
      _$GetEntityArgumentsFromJson(json);

  late String database;

  late String id;

  @override
  List<Object?> get props => [database, id];
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
        variable: VariableNode(name: NameNode(value: 'database')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'get'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'database'),
            value: VariableNode(name: NameNode(value: 'database')),
          ),
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          ),
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

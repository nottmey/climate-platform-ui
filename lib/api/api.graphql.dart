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
class EntityMixin$Attribute extends JsonSerializable with EquatableMixin {
  EntityMixin$Attribute();

  factory EntityMixin$Attribute.fromJson(Map<String, dynamic> json) =>
      _$EntityMixin$AttributeFromJson(json);

  @JsonKey(name: '__typename')
  String? $$typename;

  late String id;

  late String name;

  late String type;

  late List<String> values;

  @override
  List<Object?> get props => [$$typename, id, name, type, values];
  @override
  Map<String, dynamic> toJson() => _$EntityMixin$AttributeToJson(this);
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
class GetEntityPageArguments extends JsonSerializable with EquatableMixin {
  GetEntityPageArguments({
    required this.database,
    this.page,
    this.size,
  });

  @override
  factory GetEntityPageArguments.fromJson(Map<String, dynamic> json) =>
      _$GetEntityPageArgumentsFromJson(json);

  late String database;

  final int? page;

  final int? size;

  @override
  List<Object?> get props => [database, page, size];
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
          )
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
          FieldNode(
            name: NameNode(value: 'type'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'values'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
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

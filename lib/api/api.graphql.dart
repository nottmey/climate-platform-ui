// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'api.graphql.g.dart';

mixin EntityMixin {
  late String id;
  late List<EntityMixin$Attribute> attributes;
}

@JsonSerializable(explicitToJson: true)
class Data$Query$EntityList$EntityListSlice$Entity extends JsonSerializable
    with EquatableMixin, EntityMixin {
  Data$Query$EntityList$EntityListSlice$Entity();

  factory Data$Query$EntityList$EntityListSlice$Entity.fromJson(
          Map<String, dynamic> json) =>
      _$Data$Query$EntityList$EntityListSlice$EntityFromJson(json);

  @override
  List<Object?> get props => [id, attributes];
  @override
  Map<String, dynamic> toJson() =>
      _$Data$Query$EntityList$EntityListSlice$EntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Data$Query$EntityList$EntityListSlice extends JsonSerializable
    with EquatableMixin {
  Data$Query$EntityList$EntityListSlice();

  factory Data$Query$EntityList$EntityListSlice.fromJson(
          Map<String, dynamic> json) =>
      _$Data$Query$EntityList$EntityListSliceFromJson(json);

  late int usedLimit;

  late int usedOffset;

  late List<Data$Query$EntityList$EntityListSlice$Entity> entities;

  @override
  List<Object?> get props => [usedLimit, usedOffset, entities];
  @override
  Map<String, dynamic> toJson() =>
      _$Data$Query$EntityList$EntityListSliceToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Data$Query$EntityList extends JsonSerializable with EquatableMixin {
  Data$Query$EntityList();

  factory Data$Query$EntityList.fromJson(Map<String, dynamic> json) =>
      _$Data$Query$EntityListFromJson(json);

  late int total;

  late Data$Query$EntityList$EntityListSlice slice;

  @override
  List<Object?> get props => [total, slice];
  @override
  Map<String, dynamic> toJson() => _$Data$Query$EntityListToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Data$Query extends JsonSerializable with EquatableMixin {
  Data$Query();

  factory Data$Query.fromJson(Map<String, dynamic> json) =>
      _$Data$QueryFromJson(json);

  late Data$Query$EntityList list;

  @override
  List<Object?> get props => [list];
  @override
  Map<String, dynamic> toJson() => _$Data$QueryToJson(this);
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
class DataArguments extends JsonSerializable with EquatableMixin {
  DataArguments({required this.database});

  @override
  factory DataArguments.fromJson(Map<String, dynamic> json) =>
      _$DataArgumentsFromJson(json);

  late String database;

  @override
  List<Object?> get props => [database];
  @override
  Map<String, dynamic> toJson() => _$DataArgumentsToJson(this);
}

final DATA_QUERY_DOCUMENT_OPERATION_NAME = 'Data';
final DATA_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Data'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'database')),
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
            name: NameNode(value: 'total'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'slice'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'usedLimit'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'usedOffset'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
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
          ),
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

class DataQuery extends GraphQLQuery<Data$Query, DataArguments> {
  DataQuery({required this.variables});

  @override
  final DocumentNode document = DATA_QUERY_DOCUMENT;

  @override
  final String operationName = DATA_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final DataArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  Data$Query parse(Map<String, dynamic> json) => Data$Query.fromJson(json);
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

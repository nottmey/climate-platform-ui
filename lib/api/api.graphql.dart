// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class EntityById$Query$Entity$DbContext extends JsonSerializable
    with EquatableMixin {
  EntityById$Query$Entity$DbContext();

  factory EntityById$Query$Entity$DbContext.fromJson(
          Map<String, dynamic> json) =>
      _$EntityById$Query$Entity$DbContextFromJson(json);

  String? id;

  String? ident;

  String? doc;

  @override
  List<Object?> get props => [id, ident, doc];
  @override
  Map<String, dynamic> toJson() =>
      _$EntityById$Query$Entity$DbContextToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityById$Query$Entity extends JsonSerializable with EquatableMixin {
  EntityById$Query$Entity();

  factory EntityById$Query$Entity.fromJson(Map<String, dynamic> json) =>
      _$EntityById$Query$EntityFromJson(json);

  EntityById$Query$Entity$DbContext? db_;

  @override
  List<Object?> get props => [db_];
  @override
  Map<String, dynamic> toJson() => _$EntityById$Query$EntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityById$Query extends JsonSerializable with EquatableMixin {
  EntityById$Query();

  factory EntityById$Query.fromJson(Map<String, dynamic> json) =>
      _$EntityById$QueryFromJson(json);

  @JsonKey(name: 'get')
  EntityById$Query$Entity? kw$get;

  @override
  List<Object?> get props => [kw$get];
  @override
  Map<String, dynamic> toJson() => _$EntityById$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityByIdArguments extends JsonSerializable with EquatableMixin {
  EntityByIdArguments({this.id});

  @override
  factory EntityByIdArguments.fromJson(Map<String, dynamic> json) =>
      _$EntityByIdArgumentsFromJson(json);

  final String? id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$EntityByIdArgumentsToJson(this);
}

final ENTITY_BY_ID_QUERY_DOCUMENT_OPERATION_NAME = 'EntityById';
final ENTITY_BY_ID_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'EntityById'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'id')),
            type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: false),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'get'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'id'),
                  value: VariableNode(name: NameNode(value: 'id')))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'db_'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'ident'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'doc'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null)
                  ]))
            ]))
      ]))
]);

class EntityByIdQuery
    extends GraphQLQuery<EntityById$Query, EntityByIdArguments> {
  EntityByIdQuery({required this.variables});

  @override
  final DocumentNode document = ENTITY_BY_ID_QUERY_DOCUMENT;

  @override
  final String operationName = ENTITY_BY_ID_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final EntityByIdArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  EntityById$Query parse(Map<String, dynamic> json) =>
      EntityById$Query.fromJson(json);
}

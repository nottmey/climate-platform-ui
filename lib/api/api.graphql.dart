// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart = 2.12

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class Databases$Query extends JsonSerializable with EquatableMixin {
  Databases$Query();

  factory Databases$Query.fromJson(Map<String, dynamic> json) =>
      _$Databases$QueryFromJson(json);

  List<String>? databases;

  @override
  List<Object?> get props => [databases];
  @override
  Map<String, dynamic> toJson() => _$Databases$QueryToJson(this);
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
            selectionSet: null)
      ]))
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

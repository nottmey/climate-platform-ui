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

  @override
  List<Object?> get props => [id, ident];
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
class DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContext$TimeSlotCustomContext
    extends JsonSerializable with EquatableMixin {
  DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContext$TimeSlotCustomContext();

  factory DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContext$TimeSlotCustomContext.fromJson(
          Map<String, dynamic> json) =>
      _$DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContext$TimeSlotCustomContextFromJson(
          json);

  String? consecutiveYears;

  @override
  List<Object?> get props => [consecutiveYears];
  @override
  Map<String, dynamic> toJson() =>
      _$DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContext$TimeSlotCustomContextToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContext
    extends JsonSerializable with EquatableMixin {
  DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContext();

  factory DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContext.fromJson(
          Map<String, dynamic> json) =>
      _$DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContextFromJson(
          json);

  DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContext$TimeSlotCustomContext?
      custom_;

  @override
  List<Object?> get props => [custom_];
  @override
  Map<String, dynamic> toJson() =>
      _$DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContextToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext
    extends JsonSerializable with EquatableMixin {
  DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext();

  factory DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext.fromJson(
          Map<String, dynamic> json) =>
      _$DatasetByName$Query$Entity$DatasetContext$Entity$TimeContextFromJson(
          json);

  DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContext?
      slot_;

  @override
  List<Object?> get props => [slot_];
  @override
  Map<String, dynamic> toJson() =>
      _$DatasetByName$Query$Entity$DatasetContext$Entity$TimeContextToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DatasetByName$Query$Entity$DatasetContext$Entity extends JsonSerializable
    with EquatableMixin {
  DatasetByName$Query$Entity$DatasetContext$Entity();

  factory DatasetByName$Query$Entity$DatasetContext$Entity.fromJson(
          Map<String, dynamic> json) =>
      _$DatasetByName$Query$Entity$DatasetContext$EntityFromJson(json);

  DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext? time_;

  @override
  List<Object?> get props => [time_];
  @override
  Map<String, dynamic> toJson() =>
      _$DatasetByName$Query$Entity$DatasetContext$EntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DatasetByName$Query$Entity$DatasetContext extends JsonSerializable
    with EquatableMixin {
  DatasetByName$Query$Entity$DatasetContext();

  factory DatasetByName$Query$Entity$DatasetContext.fromJson(
          Map<String, dynamic> json) =>
      _$DatasetByName$Query$Entity$DatasetContextFromJson(json);

  String? name;

  DatasetByName$Query$Entity$DatasetContext$Entity? basePeriod;

  @override
  List<Object?> get props => [name, basePeriod];
  @override
  Map<String, dynamic> toJson() =>
      _$DatasetByName$Query$Entity$DatasetContextToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContext$TimeSlotContext
    extends JsonSerializable with EquatableMixin {
  DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContext$TimeSlotContext();

  factory DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContext$TimeSlotContext.fromJson(
          Map<String, dynamic> json) =>
      _$DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContext$TimeSlotContextFromJson(
          json);

  int? month;

  int? year;

  @override
  List<Object?> get props => [month, year];
  @override
  Map<String, dynamic> toJson() =>
      _$DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContext$TimeSlotContextToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContext
    extends JsonSerializable with EquatableMixin {
  DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContext();

  factory DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContext.fromJson(
          Map<String, dynamic> json) =>
      _$DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContextFromJson(
          json);

  DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContext$TimeSlotContext?
      slot_;

  @override
  List<Object?> get props => [slot_];
  @override
  Map<String, dynamic> toJson() =>
      _$DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContextToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$ValueContext
    extends JsonSerializable with EquatableMixin {
  DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$ValueContext();

  factory DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$ValueContext.fromJson(
          Map<String, dynamic> json) =>
      _$DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$ValueContextFromJson(
          json);

  double? temperature;

  @override
  List<Object?> get props => [temperature];
  @override
  Map<String, dynamic> toJson() =>
      _$DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$ValueContextToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity
    extends JsonSerializable with EquatableMixin {
  DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity();

  factory DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity.fromJson(
          Map<String, dynamic> json) =>
      _$DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$EntityFromJson(
          json);

  DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContext?
      time_;

  DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$ValueContext?
      value_;

  @override
  List<Object?> get props => [time_, value_];
  @override
  Map<String, dynamic> toJson() =>
      _$DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$EntityToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext
    extends JsonSerializable with EquatableMixin {
  DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext();

  factory DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext.fromJson(
          Map<String, dynamic> json) =>
      _$DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContextFromJson(
          json);

  List<DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity?>?
      dataset;

  @override
  List<Object?> get props => [dataset];
  @override
  Map<String, dynamic> toJson() =>
      _$DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContextToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class DatasetByName$Query$Entity$ReferencedByContext extends JsonSerializable
    with EquatableMixin {
  DatasetByName$Query$Entity$ReferencedByContext();

  factory DatasetByName$Query$Entity$ReferencedByContext.fromJson(
          Map<String, dynamic> json) =>
      _$DatasetByName$Query$Entity$ReferencedByContextFromJson(json);

  DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext?
      value_;

  @override
  List<Object?> get props => [value_];
  @override
  Map<String, dynamic> toJson() =>
      _$DatasetByName$Query$Entity$ReferencedByContextToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DatasetByName$Query$Entity extends JsonSerializable with EquatableMixin {
  DatasetByName$Query$Entity();

  factory DatasetByName$Query$Entity.fromJson(Map<String, dynamic> json) =>
      _$DatasetByName$Query$EntityFromJson(json);

  DatasetByName$Query$Entity$DatasetContext? dataset_;

  DatasetByName$Query$Entity$ReferencedByContext? referencedBy_;

  @override
  List<Object?> get props => [dataset_, referencedBy_];
  @override
  Map<String, dynamic> toJson() => _$DatasetByName$Query$EntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DatasetByName$Query extends JsonSerializable with EquatableMixin {
  DatasetByName$Query();

  factory DatasetByName$Query.fromJson(Map<String, dynamic> json) =>
      _$DatasetByName$QueryFromJson(json);

  List<DatasetByName$Query$Entity?>? match;

  @override
  List<Object?> get props => [match];
  @override
  Map<String, dynamic> toJson() => _$DatasetByName$QueryToJson(this);
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

@JsonSerializable(explicitToJson: true)
class DatasetByNameArguments extends JsonSerializable with EquatableMixin {
  DatasetByNameArguments({required this.name});

  @override
  factory DatasetByNameArguments.fromJson(Map<String, dynamic> json) =>
      _$DatasetByNameArgumentsFromJson(json);

  late String name;

  @override
  List<Object?> get props => [name];
  @override
  Map<String, dynamic> toJson() => _$DatasetByNameArgumentsToJson(this);
}

final DATASET_BY_NAME_QUERY_DOCUMENT_OPERATION_NAME = 'DatasetByName';
final DATASET_BY_NAME_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'DatasetByName'),
      variableDefinitions: [
        VariableDefinitionNode(
            variable: VariableNode(name: NameNode(value: 'name')),
            type:
                NamedTypeNode(name: NameNode(value: 'String'), isNonNull: true),
            defaultValue: DefaultValueNode(value: null),
            directives: [])
      ],
      directives: [],
      selectionSet: SelectionSetNode(selections: [
        FieldNode(
            name: NameNode(value: 'match'),
            alias: null,
            arguments: [
              ArgumentNode(
                  name: NameNode(value: 'template'),
                  value: ObjectValueNode(fields: [
                    ObjectFieldNode(
                        name: NameNode(value: 'dataset_'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                              name: NameNode(value: 'name'),
                              value:
                                  VariableNode(name: NameNode(value: 'name')))
                        ]))
                  ]))
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                  name: NameNode(value: 'dataset_'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null),
                    FieldNode(
                        name: NameNode(value: 'basePeriod'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'time_'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'slot_'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'custom_'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(
                                                    value: 'consecutiveYears'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ]))
                                    ]))
                              ]))
                        ]))
                  ])),
              FieldNode(
                  name: NameNode(value: 'referencedBy_'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(selections: [
                    FieldNode(
                        name: NameNode(value: 'value_'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                              name: NameNode(value: 'dataset'),
                              alias: null,
                              arguments: [],
                              directives: [],
                              selectionSet: SelectionSetNode(selections: [
                                FieldNode(
                                    name: NameNode(value: 'time_'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'slot_'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet:
                                              SelectionSetNode(selections: [
                                            FieldNode(
                                                name: NameNode(value: 'month'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null),
                                            FieldNode(
                                                name: NameNode(value: 'year'),
                                                alias: null,
                                                arguments: [],
                                                directives: [],
                                                selectionSet: null)
                                          ]))
                                    ])),
                                FieldNode(
                                    name: NameNode(value: 'value_'),
                                    alias: null,
                                    arguments: [],
                                    directives: [],
                                    selectionSet: SelectionSetNode(selections: [
                                      FieldNode(
                                          name: NameNode(value: 'temperature'),
                                          alias: null,
                                          arguments: [],
                                          directives: [],
                                          selectionSet: null)
                                    ]))
                              ]))
                        ]))
                  ]))
            ]))
      ]))
]);

class DatasetByNameQuery
    extends GraphQLQuery<DatasetByName$Query, DatasetByNameArguments> {
  DatasetByNameQuery({required this.variables});

  @override
  final DocumentNode document = DATASET_BY_NAME_QUERY_DOCUMENT;

  @override
  final String operationName = DATASET_BY_NAME_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final DatasetByNameArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  DatasetByName$Query parse(Map<String, dynamic> json) =>
      DatasetByName$Query.fromJson(json);
}

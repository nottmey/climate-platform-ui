// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data$Query$EntityList$EntityListSlice$Entity
    _$Data$Query$EntityList$EntityListSlice$EntityFromJson(
            Map<String, dynamic> json) =>
        Data$Query$EntityList$EntityListSlice$Entity()
          ..id = json['id'] as String
          ..attributes = (json['attributes'] as List<dynamic>)
              .map((e) =>
                  EntityMixin$Attribute.fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$Data$Query$EntityList$EntityListSlice$EntityToJson(
        Data$Query$EntityList$EntityListSlice$Entity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes.map((e) => e.toJson()).toList(),
    };

Data$Query$EntityList$EntityListSlice
    _$Data$Query$EntityList$EntityListSliceFromJson(
            Map<String, dynamic> json) =>
        Data$Query$EntityList$EntityListSlice()
          ..usedLimit = json['usedLimit'] as int
          ..usedOffset = json['usedOffset'] as int
          ..entities = (json['entities'] as List<dynamic>)
              .map((e) => Data$Query$EntityList$EntityListSlice$Entity.fromJson(
                  e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$Data$Query$EntityList$EntityListSliceToJson(
        Data$Query$EntityList$EntityListSlice instance) =>
    <String, dynamic>{
      'usedLimit': instance.usedLimit,
      'usedOffset': instance.usedOffset,
      'entities': instance.entities.map((e) => e.toJson()).toList(),
    };

Data$Query$EntityList _$Data$Query$EntityListFromJson(
        Map<String, dynamic> json) =>
    Data$Query$EntityList()
      ..total = json['total'] as int
      ..slice = Data$Query$EntityList$EntityListSlice.fromJson(
          json['slice'] as Map<String, dynamic>);

Map<String, dynamic> _$Data$Query$EntityListToJson(
        Data$Query$EntityList instance) =>
    <String, dynamic>{
      'total': instance.total,
      'slice': instance.slice.toJson(),
    };

Data$Query _$Data$QueryFromJson(Map<String, dynamic> json) => Data$Query()
  ..list = Data$Query$EntityList.fromJson(json['list'] as Map<String, dynamic>);

Map<String, dynamic> _$Data$QueryToJson(Data$Query instance) =>
    <String, dynamic>{
      'list': instance.list.toJson(),
    };

EntityMixin$Attribute _$EntityMixin$AttributeFromJson(
        Map<String, dynamic> json) =>
    EntityMixin$Attribute()
      ..$$typename = json['__typename'] as String?
      ..id = json['id'] as String
      ..name = json['name'] as String
      ..type = json['type'] as String
      ..values =
          (json['values'] as List<dynamic>).map((e) => e as String).toList();

Map<String, dynamic> _$EntityMixin$AttributeToJson(
        EntityMixin$Attribute instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'values': instance.values,
    };

Databases$Query _$Databases$QueryFromJson(Map<String, dynamic> json) =>
    Databases$Query()
      ..databases =
          (json['databases'] as List<dynamic>).map((e) => e as String).toList();

Map<String, dynamic> _$Databases$QueryToJson(Databases$Query instance) =>
    <String, dynamic>{
      'databases': instance.databases,
    };

DataArguments _$DataArgumentsFromJson(Map<String, dynamic> json) =>
    DataArguments(
      database: json['database'] as String,
    );

Map<String, dynamic> _$DataArgumentsToJson(DataArguments instance) =>
    <String, dynamic>{
      'database': instance.database,
    };

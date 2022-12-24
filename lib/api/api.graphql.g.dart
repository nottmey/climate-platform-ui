// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data$Query$Entity _$Data$Query$EntityFromJson(Map<String, dynamic> json) =>
    Data$Query$Entity()
      ..id = json['id'] as String
      ..attributes = (json['attributes'] as List<dynamic>?)
          ?.map(
              (e) => EntityMixin$Attribute.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$Data$Query$EntityToJson(Data$Query$Entity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes?.map((e) => e.toJson()).toList(),
    };

Data$Query _$Data$QueryFromJson(Map<String, dynamic> json) => Data$Query()
  ..list = (json['list'] as List<dynamic>?)
      ?.map((e) => Data$Query$Entity.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$Data$QueryToJson(Data$Query instance) =>
    <String, dynamic>{
      'list': instance.list?.map((e) => e.toJson()).toList(),
    };

EntityMixin$Attribute _$EntityMixin$AttributeFromJson(
        Map<String, dynamic> json) =>
    EntityMixin$Attribute()
      ..id = json['id'] as String
      ..name = json['name'] as String
      ..type = json['type'] as String
      ..values =
          (json['values'] as List<dynamic>?)?.map((e) => e as String).toList();

Map<String, dynamic> _$EntityMixin$AttributeToJson(
        EntityMixin$Attribute instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'values': instance.values,
    };

Databases$Query _$Databases$QueryFromJson(Map<String, dynamic> json) =>
    Databases$Query()
      ..databases = (json['databases'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList();

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

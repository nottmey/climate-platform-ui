// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EntityById$Query$Entity$DbContext _$EntityById$Query$Entity$DbContextFromJson(
        Map<String, dynamic> json) =>
    EntityById$Query$Entity$DbContext()
      ..id = json['id'] as String?
      ..ident = json['ident'] as String?
      ..doc = json['doc'] as String?;

Map<String, dynamic> _$EntityById$Query$Entity$DbContextToJson(
        EntityById$Query$Entity$DbContext instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ident': instance.ident,
      'doc': instance.doc,
    };

EntityById$Query$Entity _$EntityById$Query$EntityFromJson(
        Map<String, dynamic> json) =>
    EntityById$Query$Entity()
      ..db_ = json['db_'] == null
          ? null
          : EntityById$Query$Entity$DbContext.fromJson(
              json['db_'] as Map<String, dynamic>);

Map<String, dynamic> _$EntityById$Query$EntityToJson(
        EntityById$Query$Entity instance) =>
    <String, dynamic>{
      'db_': instance.db_?.toJson(),
    };

EntityById$Query _$EntityById$QueryFromJson(Map<String, dynamic> json) =>
    EntityById$Query()
      ..kw$get = json['get'] == null
          ? null
          : EntityById$Query$Entity.fromJson(
              json['get'] as Map<String, dynamic>);

Map<String, dynamic> _$EntityById$QueryToJson(EntityById$Query instance) =>
    <String, dynamic>{
      'get': instance.kw$get?.toJson(),
    };

EntityByIdArguments _$EntityByIdArgumentsFromJson(Map<String, dynamic> json) =>
    EntityByIdArguments(
      id: json['id'] as String?,
    );

Map<String, dynamic> _$EntityByIdArgumentsToJson(
        EntityByIdArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

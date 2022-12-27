// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Databases$Query _$Databases$QueryFromJson(Map<String, dynamic> json) =>
    Databases$Query()
      ..databases =
          (json['databases'] as List<dynamic>).map((e) => e as String).toList();

Map<String, dynamic> _$Databases$QueryToJson(Databases$Query instance) =>
    <String, dynamic>{
      'databases': instance.databases,
    };

GetEntityPage$Query$EntityList$EntityListPage$PageInfo
    _$GetEntityPage$Query$EntityList$EntityListPage$PageInfoFromJson(
            Map<String, dynamic> json) =>
        GetEntityPage$Query$EntityList$EntityListPage$PageInfo()
          ..next = json['next'] as int?
          ..size = json['size'] as int;

Map<String, dynamic>
    _$GetEntityPage$Query$EntityList$EntityListPage$PageInfoToJson(
            GetEntityPage$Query$EntityList$EntityListPage$PageInfo instance) =>
        <String, dynamic>{
          'next': instance.next,
          'size': instance.size,
        };

GetEntityPage$Query$EntityList$EntityListPage$Entity
    _$GetEntityPage$Query$EntityList$EntityListPage$EntityFromJson(
            Map<String, dynamic> json) =>
        GetEntityPage$Query$EntityList$EntityListPage$Entity()
          ..id = json['id'] as String
          ..attributes = (json['attributes'] as List<dynamic>)
              .map((e) =>
                  EntityMixin$Attribute.fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$GetEntityPage$Query$EntityList$EntityListPage$EntityToJson(
            GetEntityPage$Query$EntityList$EntityListPage$Entity instance) =>
        <String, dynamic>{
          'id': instance.id,
          'attributes': instance.attributes.map((e) => e.toJson()).toList(),
        };

GetEntityPage$Query$EntityList$EntityListPage
    _$GetEntityPage$Query$EntityList$EntityListPageFromJson(
            Map<String, dynamic> json) =>
        GetEntityPage$Query$EntityList$EntityListPage()
          ..info =
              GetEntityPage$Query$EntityList$EntityListPage$PageInfo.fromJson(
                  json['info'] as Map<String, dynamic>)
          ..entities = (json['entities'] as List<dynamic>)
              .map((e) =>
                  GetEntityPage$Query$EntityList$EntityListPage$Entity.fromJson(
                      e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$GetEntityPage$Query$EntityList$EntityListPageToJson(
        GetEntityPage$Query$EntityList$EntityListPage instance) =>
    <String, dynamic>{
      'info': instance.info.toJson(),
      'entities': instance.entities.map((e) => e.toJson()).toList(),
    };

GetEntityPage$Query$EntityList _$GetEntityPage$Query$EntityListFromJson(
        Map<String, dynamic> json) =>
    GetEntityPage$Query$EntityList()
      ..page = GetEntityPage$Query$EntityList$EntityListPage.fromJson(
          json['page'] as Map<String, dynamic>);

Map<String, dynamic> _$GetEntityPage$Query$EntityListToJson(
        GetEntityPage$Query$EntityList instance) =>
    <String, dynamic>{
      'page': instance.page.toJson(),
    };

GetEntityPage$Query _$GetEntityPage$QueryFromJson(Map<String, dynamic> json) =>
    GetEntityPage$Query()
      ..list = GetEntityPage$Query$EntityList.fromJson(
          json['list'] as Map<String, dynamic>);

Map<String, dynamic> _$GetEntityPage$QueryToJson(
        GetEntityPage$Query instance) =>
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

GetEntityPageArguments _$GetEntityPageArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetEntityPageArguments(
      database: json['database'] as String,
      page: json['page'] as int?,
      size: json['size'] as int?,
    );

Map<String, dynamic> _$GetEntityPageArgumentsToJson(
        GetEntityPageArguments instance) =>
    <String, dynamic>{
      'database': instance.database,
      'page': instance.page,
      'size': instance.size,
    };

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

EntityMixin$Attribute$StringAttribute
    _$EntityMixin$Attribute$StringAttributeFromJson(
            Map<String, dynamic> json) =>
        EntityMixin$Attribute$StringAttribute()
          ..$$typename = json['__typename'] as String?
          ..id = json['id'] as String
          ..name = json['name'] as String
          ..string = json['string'] as String;

Map<String, dynamic> _$EntityMixin$Attribute$StringAttributeToJson(
        EntityMixin$Attribute$StringAttribute instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'id': instance.id,
      'name': instance.name,
      'string': instance.string,
    };

EntityMixin$Attribute$BooleanAttribute
    _$EntityMixin$Attribute$BooleanAttributeFromJson(
            Map<String, dynamic> json) =>
        EntityMixin$Attribute$BooleanAttribute()
          ..$$typename = json['__typename'] as String?
          ..id = json['id'] as String
          ..name = json['name'] as String
          ..boolean = json['boolean'] as bool;

Map<String, dynamic> _$EntityMixin$Attribute$BooleanAttributeToJson(
        EntityMixin$Attribute$BooleanAttribute instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'id': instance.id,
      'name': instance.name,
      'boolean': instance.boolean,
    };

EntityMixin$Attribute$DateTimeAttribute
    _$EntityMixin$Attribute$DateTimeAttributeFromJson(
            Map<String, dynamic> json) =>
        EntityMixin$Attribute$DateTimeAttribute()
          ..$$typename = json['__typename'] as String?
          ..id = json['id'] as String
          ..name = json['name'] as String
          ..dateTime = DateTime.parse(json['dateTime'] as String);

Map<String, dynamic> _$EntityMixin$Attribute$DateTimeAttributeToJson(
        EntityMixin$Attribute$DateTimeAttribute instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'id': instance.id,
      'name': instance.name,
      'dateTime': instance.dateTime.toIso8601String(),
    };

EntityMixin$Attribute$ReferenceAttribute
    _$EntityMixin$Attribute$ReferenceAttributeFromJson(
            Map<String, dynamic> json) =>
        EntityMixin$Attribute$ReferenceAttribute()
          ..$$typename = json['__typename'] as String?
          ..id = json['id'] as String
          ..name = json['name'] as String
          ..ref = json['ref'] as String;

Map<String, dynamic> _$EntityMixin$Attribute$ReferenceAttributeToJson(
        EntityMixin$Attribute$ReferenceAttribute instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'id': instance.id,
      'name': instance.name,
      'ref': instance.ref,
    };

EntityMixin$Attribute$MultiStringAttribute
    _$EntityMixin$Attribute$MultiStringAttributeFromJson(
            Map<String, dynamic> json) =>
        EntityMixin$Attribute$MultiStringAttribute()
          ..$$typename = json['__typename'] as String?
          ..id = json['id'] as String
          ..name = json['name'] as String
          ..strings = (json['strings'] as List<dynamic>)
              .map((e) => e as String)
              .toList();

Map<String, dynamic> _$EntityMixin$Attribute$MultiStringAttributeToJson(
        EntityMixin$Attribute$MultiStringAttribute instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'id': instance.id,
      'name': instance.name,
      'strings': instance.strings,
    };

EntityMixin$Attribute$MultiBooleanAttribute
    _$EntityMixin$Attribute$MultiBooleanAttributeFromJson(
            Map<String, dynamic> json) =>
        EntityMixin$Attribute$MultiBooleanAttribute()
          ..$$typename = json['__typename'] as String?
          ..id = json['id'] as String
          ..name = json['name'] as String
          ..booleans = (json['booleans'] as List<dynamic>)
              .map((e) => e as bool)
              .toList();

Map<String, dynamic> _$EntityMixin$Attribute$MultiBooleanAttributeToJson(
        EntityMixin$Attribute$MultiBooleanAttribute instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'id': instance.id,
      'name': instance.name,
      'booleans': instance.booleans,
    };

EntityMixin$Attribute$MultiDateTimeAttribute
    _$EntityMixin$Attribute$MultiDateTimeAttributeFromJson(
            Map<String, dynamic> json) =>
        EntityMixin$Attribute$MultiDateTimeAttribute()
          ..$$typename = json['__typename'] as String?
          ..id = json['id'] as String
          ..name = json['name'] as String
          ..dateTimes = (json['dateTimes'] as List<dynamic>)
              .map((e) => DateTime.parse(e as String))
              .toList();

Map<String, dynamic> _$EntityMixin$Attribute$MultiDateTimeAttributeToJson(
        EntityMixin$Attribute$MultiDateTimeAttribute instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'id': instance.id,
      'name': instance.name,
      'dateTimes': instance.dateTimes.map((e) => e.toIso8601String()).toList(),
    };

EntityMixin$Attribute$MultiReferenceAttribute
    _$EntityMixin$Attribute$MultiReferenceAttributeFromJson(
            Map<String, dynamic> json) =>
        EntityMixin$Attribute$MultiReferenceAttribute()
          ..$$typename = json['__typename'] as String?
          ..id = json['id'] as String
          ..name = json['name'] as String
          ..refs =
              (json['refs'] as List<dynamic>).map((e) => e as String).toList();

Map<String, dynamic> _$EntityMixin$Attribute$MultiReferenceAttributeToJson(
        EntityMixin$Attribute$MultiReferenceAttribute instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'id': instance.id,
      'name': instance.name,
      'refs': instance.refs,
    };

EntityMixin$Attribute _$EntityMixin$AttributeFromJson(
        Map<String, dynamic> json) =>
    EntityMixin$Attribute()
      ..$$typename = json['__typename'] as String?
      ..id = json['id'] as String
      ..name = json['name'] as String;

Map<String, dynamic> _$EntityMixin$AttributeToJson(
        EntityMixin$Attribute instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'id': instance.id,
      'name': instance.name,
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

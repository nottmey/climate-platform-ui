// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetEntityPage$Query$EntityListPage$PageInfo
    _$GetEntityPage$Query$EntityListPage$PageInfoFromJson(
            Map<String, dynamic> json) =>
        GetEntityPage$Query$EntityListPage$PageInfo()
          ..next = json['next'] as int?
          ..size = json['size'] as int;

Map<String, dynamic> _$GetEntityPage$Query$EntityListPage$PageInfoToJson(
        GetEntityPage$Query$EntityListPage$PageInfo instance) =>
    <String, dynamic>{
      'next': instance.next,
      'size': instance.size,
    };

GetEntityPage$Query$EntityListPage$Entity
    _$GetEntityPage$Query$EntityListPage$EntityFromJson(
            Map<String, dynamic> json) =>
        GetEntityPage$Query$EntityListPage$Entity()
          ..id = json['id'] as String
          ..attributes = (json['attributes'] as List<dynamic>)
              .map((e) =>
                  EntityMixin$Attribute.fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$GetEntityPage$Query$EntityListPage$EntityToJson(
        GetEntityPage$Query$EntityListPage$Entity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes.map((e) => e.toJson()).toList(),
    };

GetEntityPage$Query$EntityListPage _$GetEntityPage$Query$EntityListPageFromJson(
        Map<String, dynamic> json) =>
    GetEntityPage$Query$EntityListPage()
      ..info = GetEntityPage$Query$EntityListPage$PageInfo.fromJson(
          json['info'] as Map<String, dynamic>)
      ..values = (json['values'] as List<dynamic>)
          .map((e) => GetEntityPage$Query$EntityListPage$Entity.fromJson(
              e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetEntityPage$Query$EntityListPageToJson(
        GetEntityPage$Query$EntityListPage instance) =>
    <String, dynamic>{
      'info': instance.info.toJson(),
      'values': instance.values.map((e) => e.toJson()).toList(),
    };

GetEntityPage$Query _$GetEntityPage$QueryFromJson(Map<String, dynamic> json) =>
    GetEntityPage$Query()
      ..listEntity = GetEntityPage$Query$EntityListPage.fromJson(
          json['listEntity'] as Map<String, dynamic>);

Map<String, dynamic> _$GetEntityPage$QueryToJson(
        GetEntityPage$Query instance) =>
    <String, dynamic>{
      'listEntity': instance.listEntity.toJson(),
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

EntityMixin$Attribute$TupleAttribute
    _$EntityMixin$Attribute$TupleAttributeFromJson(Map<String, dynamic> json) =>
        EntityMixin$Attribute$TupleAttribute()
          ..$$typename = json['__typename'] as String?
          ..id = json['id'] as String
          ..name = json['name'] as String
          ..tuple = json['tuple'] as String;

Map<String, dynamic> _$EntityMixin$Attribute$TupleAttributeToJson(
        EntityMixin$Attribute$TupleAttribute instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'id': instance.id,
      'name': instance.name,
      'tuple': instance.tuple,
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

EntityMixin$Attribute$MultiTupleAttribute
    _$EntityMixin$Attribute$MultiTupleAttributeFromJson(
            Map<String, dynamic> json) =>
        EntityMixin$Attribute$MultiTupleAttribute()
          ..$$typename = json['__typename'] as String?
          ..id = json['id'] as String
          ..name = json['name'] as String
          ..tuples = (json['tuples'] as List<dynamic>)
              .map((e) => e as String)
              .toList();

Map<String, dynamic> _$EntityMixin$Attribute$MultiTupleAttributeToJson(
        EntityMixin$Attribute$MultiTupleAttribute instance) =>
    <String, dynamic>{
      '__typename': instance.$$typename,
      'id': instance.id,
      'name': instance.name,
      'tuples': instance.tuples,
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

EntityFilter _$EntityFilterFromJson(Map<String, dynamic> json) => EntityFilter(
      attributes: (json['attributes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$EntityFilterToJson(EntityFilter instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
    };

GetEntity$Query$Entity _$GetEntity$Query$EntityFromJson(
        Map<String, dynamic> json) =>
    GetEntity$Query$Entity()
      ..id = json['id'] as String
      ..attributes = (json['attributes'] as List<dynamic>)
          .map((e) => EntityMixin$Attribute.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetEntity$Query$EntityToJson(
        GetEntity$Query$Entity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes.map((e) => e.toJson()).toList(),
    };

GetEntity$Query _$GetEntity$QueryFromJson(Map<String, dynamic> json) =>
    GetEntity$Query()
      ..getEntity = json['getEntity'] == null
          ? null
          : GetEntity$Query$Entity.fromJson(
              json['getEntity'] as Map<String, dynamic>);

Map<String, dynamic> _$GetEntity$QueryToJson(GetEntity$Query instance) =>
    <String, dynamic>{
      'getEntity': instance.getEntity?.toJson(),
    };

GetEntityPageArguments _$GetEntityPageArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetEntityPageArguments(
      filter: json['filter'] == null
          ? null
          : EntityFilter.fromJson(json['filter'] as Map<String, dynamic>),
      page: json['page'] as int,
      size: json['size'] as int,
    );

Map<String, dynamic> _$GetEntityPageArgumentsToJson(
        GetEntityPageArguments instance) =>
    <String, dynamic>{
      'filter': instance.filter?.toJson(),
      'page': instance.page,
      'size': instance.size,
    };

GetEntityArguments _$GetEntityArgumentsFromJson(Map<String, dynamic> json) =>
    GetEntityArguments(
      id: json['id'] as String,
    );

Map<String, dynamic> _$GetEntityArgumentsToJson(GetEntityArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

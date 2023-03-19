// GENERATED CODE - DO NOT MODIFY BY HAND

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

CreatePlanetaryBoundary$Mutation$PlanetaryBoundary
    _$CreatePlanetaryBoundary$Mutation$PlanetaryBoundaryFromJson(
            Map<String, dynamic> json) =>
        CreatePlanetaryBoundary$Mutation$PlanetaryBoundary()
          ..id = json['id'] as String
          ..session = json['session'] as String?
          ..name = json['name'] as String?;

Map<String, dynamic> _$CreatePlanetaryBoundary$Mutation$PlanetaryBoundaryToJson(
        CreatePlanetaryBoundary$Mutation$PlanetaryBoundary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'session': instance.session,
      'name': instance.name,
    };

CreatePlanetaryBoundary$Mutation _$CreatePlanetaryBoundary$MutationFromJson(
        Map<String, dynamic> json) =>
    CreatePlanetaryBoundary$Mutation()
      ..createPlanetaryBoundary =
          CreatePlanetaryBoundary$Mutation$PlanetaryBoundary.fromJson(
              json['createPlanetaryBoundary'] as Map<String, dynamic>);

Map<String, dynamic> _$CreatePlanetaryBoundary$MutationToJson(
        CreatePlanetaryBoundary$Mutation instance) =>
    <String, dynamic>{
      'createPlanetaryBoundary': instance.createPlanetaryBoundary.toJson(),
    };

PlanetaryBoundaryInput _$PlanetaryBoundaryInputFromJson(
        Map<String, dynamic> json) =>
    PlanetaryBoundaryInput(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$PlanetaryBoundaryInputToJson(
        PlanetaryBoundaryInput instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundary
    _$OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundaryFromJson(
            Map<String, dynamic> json) =>
        OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundary()
          ..id = json['id'] as String
          ..session = json['session'] as String?
          ..name = json['name'] as String?;

Map<String,
    dynamic> _$OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundaryToJson(
        OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'session': instance.session,
      'name': instance.name,
    };

OnDeletedPlanetaryBoundary$Subscription
    _$OnDeletedPlanetaryBoundary$SubscriptionFromJson(
            Map<String, dynamic> json) =>
        OnDeletedPlanetaryBoundary$Subscription()
          ..onDeletedPlanetaryBoundary =
              json['onDeletedPlanetaryBoundary'] == null
                  ? null
                  : OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundary
                      .fromJson(json['onDeletedPlanetaryBoundary']
                          as Map<String, dynamic>);

Map<String, dynamic> _$OnDeletedPlanetaryBoundary$SubscriptionToJson(
        OnDeletedPlanetaryBoundary$Subscription instance) =>
    <String, dynamic>{
      'onDeletedPlanetaryBoundary':
          instance.onDeletedPlanetaryBoundary?.toJson(),
    };

DeletePlanetaryBoundary$Mutation$PlanetaryBoundary
    _$DeletePlanetaryBoundary$Mutation$PlanetaryBoundaryFromJson(
            Map<String, dynamic> json) =>
        DeletePlanetaryBoundary$Mutation$PlanetaryBoundary()
          ..id = json['id'] as String
          ..session = json['session'] as String?
          ..name = json['name'] as String?;

Map<String, dynamic> _$DeletePlanetaryBoundary$Mutation$PlanetaryBoundaryToJson(
        DeletePlanetaryBoundary$Mutation$PlanetaryBoundary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'session': instance.session,
      'name': instance.name,
    };

DeletePlanetaryBoundary$Mutation _$DeletePlanetaryBoundary$MutationFromJson(
        Map<String, dynamic> json) =>
    DeletePlanetaryBoundary$Mutation()
      ..deletePlanetaryBoundary = json['deletePlanetaryBoundary'] == null
          ? null
          : DeletePlanetaryBoundary$Mutation$PlanetaryBoundary.fromJson(
              json['deletePlanetaryBoundary'] as Map<String, dynamic>);

Map<String, dynamic> _$DeletePlanetaryBoundary$MutationToJson(
        DeletePlanetaryBoundary$Mutation instance) =>
    <String, dynamic>{
      'deletePlanetaryBoundary': instance.deletePlanetaryBoundary?.toJson(),
    };

OnCreatedPlanetaryBoundary$Subscription$PlanetaryBoundary
    _$OnCreatedPlanetaryBoundary$Subscription$PlanetaryBoundaryFromJson(
            Map<String, dynamic> json) =>
        OnCreatedPlanetaryBoundary$Subscription$PlanetaryBoundary()
          ..id = json['id'] as String
          ..session = json['session'] as String?
          ..name = json['name'] as String?;

Map<String,
    dynamic> _$OnCreatedPlanetaryBoundary$Subscription$PlanetaryBoundaryToJson(
        OnCreatedPlanetaryBoundary$Subscription$PlanetaryBoundary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'session': instance.session,
      'name': instance.name,
    };

OnCreatedPlanetaryBoundary$Subscription
    _$OnCreatedPlanetaryBoundary$SubscriptionFromJson(
            Map<String, dynamic> json) =>
        OnCreatedPlanetaryBoundary$Subscription()
          ..onCreatedPlanetaryBoundary =
              json['onCreatedPlanetaryBoundary'] == null
                  ? null
                  : OnCreatedPlanetaryBoundary$Subscription$PlanetaryBoundary
                      .fromJson(json['onCreatedPlanetaryBoundary']
                          as Map<String, dynamic>);

Map<String, dynamic> _$OnCreatedPlanetaryBoundary$SubscriptionToJson(
        OnCreatedPlanetaryBoundary$Subscription instance) =>
    <String, dynamic>{
      'onCreatedPlanetaryBoundary':
          instance.onCreatedPlanetaryBoundary?.toJson(),
    };

GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PageInfo
    _$GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PageInfoFromJson(
            Map<String, dynamic> json) =>
        GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PageInfo()
          ..next = json['next'] as int?
          ..size = json['size'] as int;

Map<String, dynamic>
    _$GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PageInfoToJson(
            GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PageInfo
                instance) =>
        <String, dynamic>{
          'next': instance.next,
          'size': instance.size,
        };

GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PlanetaryBoundary
    _$GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PlanetaryBoundaryFromJson(
            Map<String, dynamic> json) =>
        GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PlanetaryBoundary()
          ..id = json['id'] as String
          ..session = json['session'] as String?
          ..name = json['name'] as String?;

Map<String, dynamic>
    _$GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PlanetaryBoundaryToJson(
            GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PlanetaryBoundary
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'session': instance.session,
          'name': instance.name,
        };

GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage
    _$GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPageFromJson(
            Map<String, dynamic> json) =>
        GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage()
          ..info =
              GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PageInfo
                  .fromJson(json['info'] as Map<String, dynamic>)
          ..values = (json['values'] as List<dynamic>)
              .map((e) =>
                  GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PlanetaryBoundary
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String,
    dynamic> _$GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPageToJson(
        GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage instance) =>
    <String, dynamic>{
      'info': instance.info.toJson(),
      'values': instance.values.map((e) => e.toJson()).toList(),
    };

GetPlanetaryBoundaryPage$Query _$GetPlanetaryBoundaryPage$QueryFromJson(
        Map<String, dynamic> json) =>
    GetPlanetaryBoundaryPage$Query()
      ..listPlanetaryBoundary =
          GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage.fromJson(
              json['listPlanetaryBoundary'] as Map<String, dynamic>);

Map<String, dynamic> _$GetPlanetaryBoundaryPage$QueryToJson(
        GetPlanetaryBoundaryPage$Query instance) =>
    <String, dynamic>{
      'listPlanetaryBoundary': instance.listPlanetaryBoundary.toJson(),
    };

GetPlanetaryBoundary$Query$PlanetaryBoundary
    _$GetPlanetaryBoundary$Query$PlanetaryBoundaryFromJson(
            Map<String, dynamic> json) =>
        GetPlanetaryBoundary$Query$PlanetaryBoundary()
          ..id = json['id'] as String
          ..session = json['session'] as String?
          ..name = json['name'] as String?;

Map<String, dynamic> _$GetPlanetaryBoundary$Query$PlanetaryBoundaryToJson(
        GetPlanetaryBoundary$Query$PlanetaryBoundary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'session': instance.session,
      'name': instance.name,
    };

GetPlanetaryBoundary$Query _$GetPlanetaryBoundary$QueryFromJson(
        Map<String, dynamic> json) =>
    GetPlanetaryBoundary$Query()
      ..getPlanetaryBoundary = json['getPlanetaryBoundary'] == null
          ? null
          : GetPlanetaryBoundary$Query$PlanetaryBoundary.fromJson(
              json['getPlanetaryBoundary'] as Map<String, dynamic>);

Map<String, dynamic> _$GetPlanetaryBoundary$QueryToJson(
        GetPlanetaryBoundary$Query instance) =>
    <String, dynamic>{
      'getPlanetaryBoundary': instance.getPlanetaryBoundary?.toJson(),
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

CreatePlanetaryBoundaryArguments _$CreatePlanetaryBoundaryArgumentsFromJson(
        Map<String, dynamic> json) =>
    CreatePlanetaryBoundaryArguments(
      session: json['session'] as String,
      value: PlanetaryBoundaryInput.fromJson(
          json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreatePlanetaryBoundaryArgumentsToJson(
        CreatePlanetaryBoundaryArguments instance) =>
    <String, dynamic>{
      'session': instance.session,
      'value': instance.value.toJson(),
    };

OnDeletedPlanetaryBoundaryArguments
    _$OnDeletedPlanetaryBoundaryArgumentsFromJson(Map<String, dynamic> json) =>
        OnDeletedPlanetaryBoundaryArguments(
          id: json['id'] as String,
        );

Map<String, dynamic> _$OnDeletedPlanetaryBoundaryArgumentsToJson(
        OnDeletedPlanetaryBoundaryArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

DeletePlanetaryBoundaryArguments _$DeletePlanetaryBoundaryArgumentsFromJson(
        Map<String, dynamic> json) =>
    DeletePlanetaryBoundaryArguments(
      id: json['id'] as String,
      session: json['session'] as String,
    );

Map<String, dynamic> _$DeletePlanetaryBoundaryArgumentsToJson(
        DeletePlanetaryBoundaryArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
      'session': instance.session,
    };

GetPlanetaryBoundaryPageArguments _$GetPlanetaryBoundaryPageArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetPlanetaryBoundaryPageArguments(
      page: json['page'] as int,
      size: json['size'] as int,
    );

Map<String, dynamic> _$GetPlanetaryBoundaryPageArgumentsToJson(
        GetPlanetaryBoundaryPageArguments instance) =>
    <String, dynamic>{
      'page': instance.page,
      'size': instance.size,
    };

GetPlanetaryBoundaryArguments _$GetPlanetaryBoundaryArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetPlanetaryBoundaryArguments(
      id: json['id'] as String,
    );

Map<String, dynamic> _$GetPlanetaryBoundaryArgumentsToJson(
        GetPlanetaryBoundaryArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

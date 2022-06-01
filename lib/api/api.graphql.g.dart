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
      ..ident = json['ident'] as String?;

Map<String, dynamic> _$EntityById$Query$Entity$DbContextToJson(
        EntityById$Query$Entity$DbContext instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ident': instance.ident,
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

DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContext$TimeSlotCustomContext
    _$DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContext$TimeSlotCustomContextFromJson(
            Map<String, dynamic> json) =>
        DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContext$TimeSlotCustomContext()
          ..consecutiveYears = json['consecutiveYears'] as String?;

Map<String, dynamic>
    _$DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContext$TimeSlotCustomContextToJson(
            DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContext$TimeSlotCustomContext
                instance) =>
        <String, dynamic>{
          'consecutiveYears': instance.consecutiveYears,
        };

DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContext
    _$DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContextFromJson(
            Map<String, dynamic> json) =>
        DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContext()
          ..custom_ = json['custom_'] == null
              ? null
              : DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContext$TimeSlotCustomContext
                  .fromJson(json['custom_'] as Map<String, dynamic>);

Map<String, dynamic>
    _$DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContextToJson(
            DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContext
                instance) =>
        <String, dynamic>{
          'custom_': instance.custom_?.toJson(),
        };

DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext
    _$DatasetByName$Query$Entity$DatasetContext$Entity$TimeContextFromJson(
            Map<String, dynamic> json) =>
        DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext()
          ..slot_ = json['slot_'] == null
              ? null
              : DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext$TimeSlotContext
                  .fromJson(json['slot_'] as Map<String, dynamic>);

Map<String, dynamic>
    _$DatasetByName$Query$Entity$DatasetContext$Entity$TimeContextToJson(
            DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext
                instance) =>
        <String, dynamic>{
          'slot_': instance.slot_?.toJson(),
        };

DatasetByName$Query$Entity$DatasetContext$Entity
    _$DatasetByName$Query$Entity$DatasetContext$EntityFromJson(
            Map<String, dynamic> json) =>
        DatasetByName$Query$Entity$DatasetContext$Entity()
          ..time_ = json['time_'] == null
              ? null
              : DatasetByName$Query$Entity$DatasetContext$Entity$TimeContext
                  .fromJson(json['time_'] as Map<String, dynamic>);

Map<String, dynamic> _$DatasetByName$Query$Entity$DatasetContext$EntityToJson(
        DatasetByName$Query$Entity$DatasetContext$Entity instance) =>
    <String, dynamic>{
      'time_': instance.time_?.toJson(),
    };

DatasetByName$Query$Entity$DatasetContext
    _$DatasetByName$Query$Entity$DatasetContextFromJson(
            Map<String, dynamic> json) =>
        DatasetByName$Query$Entity$DatasetContext()
          ..name = json['name'] as String?
          ..basePeriod = json['basePeriod'] == null
              ? null
              : DatasetByName$Query$Entity$DatasetContext$Entity.fromJson(
                  json['basePeriod'] as Map<String, dynamic>);

Map<String, dynamic> _$DatasetByName$Query$Entity$DatasetContextToJson(
        DatasetByName$Query$Entity$DatasetContext instance) =>
    <String, dynamic>{
      'name': instance.name,
      'basePeriod': instance.basePeriod?.toJson(),
    };

DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContext$TimeSlotContext
    _$DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContext$TimeSlotContextFromJson(
            Map<String, dynamic> json) =>
        DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContext$TimeSlotContext()
          ..month = json['month'] as int?
          ..year = json['year'] as int?;

Map<String, dynamic>
    _$DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContext$TimeSlotContextToJson(
            DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContext$TimeSlotContext
                instance) =>
        <String, dynamic>{
          'month': instance.month,
          'year': instance.year,
        };

DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContext
    _$DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContextFromJson(
            Map<String, dynamic> json) =>
        DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContext()
          ..slot_ = json['slot_'] == null
              ? null
              : DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContext$TimeSlotContext
                  .fromJson(json['slot_'] as Map<String, dynamic>);

Map<String, dynamic>
    _$DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContextToJson(
            DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContext
                instance) =>
        <String, dynamic>{
          'slot_': instance.slot_?.toJson(),
        };

DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$ValueContext
    _$DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$ValueContextFromJson(
            Map<String, dynamic> json) =>
        DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$ValueContext()
          ..temperature = (json['temperature'] as num?)?.toDouble();

Map<String, dynamic>
    _$DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$ValueContextToJson(
            DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$ValueContext
                instance) =>
        <String, dynamic>{
          'temperature': instance.temperature,
        };

DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity
    _$DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$EntityFromJson(
            Map<String, dynamic> json) =>
        DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity()
          ..time_ = json['time_'] == null
              ? null
              : DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$TimeContext
                  .fromJson(json['time_'] as Map<String, dynamic>)
          ..value_ = json['value_'] == null
              ? null
              : DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity$ValueContext
                  .fromJson(json['value_'] as Map<String, dynamic>);

Map<String, dynamic>
    _$DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$EntityToJson(
            DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity
                instance) =>
        <String, dynamic>{
          'time_': instance.time_?.toJson(),
          'value_': instance.value_?.toJson(),
        };

DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext
    _$DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContextFromJson(
            Map<String, dynamic> json) =>
        DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext()
          ..dataset = (json['dataset'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext$Entity
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContextToJson(
            DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext
                instance) =>
        <String, dynamic>{
          'dataset': instance.dataset?.map((e) => e?.toJson()).toList(),
        };

DatasetByName$Query$Entity$ReferencedByContext
    _$DatasetByName$Query$Entity$ReferencedByContextFromJson(
            Map<String, dynamic> json) =>
        DatasetByName$Query$Entity$ReferencedByContext()
          ..value_ = json['value_'] == null
              ? null
              : DatasetByName$Query$Entity$ReferencedByContext$ReferencedByValueContext
                  .fromJson(json['value_'] as Map<String, dynamic>);

Map<String, dynamic> _$DatasetByName$Query$Entity$ReferencedByContextToJson(
        DatasetByName$Query$Entity$ReferencedByContext instance) =>
    <String, dynamic>{
      'value_': instance.value_?.toJson(),
    };

DatasetByName$Query$Entity _$DatasetByName$Query$EntityFromJson(
        Map<String, dynamic> json) =>
    DatasetByName$Query$Entity()
      ..dataset_ = json['dataset_'] == null
          ? null
          : DatasetByName$Query$Entity$DatasetContext.fromJson(
              json['dataset_'] as Map<String, dynamic>)
      ..referencedBy_ = json['referencedBy_'] == null
          ? null
          : DatasetByName$Query$Entity$ReferencedByContext.fromJson(
              json['referencedBy_'] as Map<String, dynamic>);

Map<String, dynamic> _$DatasetByName$Query$EntityToJson(
        DatasetByName$Query$Entity instance) =>
    <String, dynamic>{
      'dataset_': instance.dataset_?.toJson(),
      'referencedBy_': instance.referencedBy_?.toJson(),
    };

DatasetByName$Query _$DatasetByName$QueryFromJson(Map<String, dynamic> json) =>
    DatasetByName$Query()
      ..match = (json['match'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : DatasetByName$Query$Entity.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DatasetByName$QueryToJson(
        DatasetByName$Query instance) =>
    <String, dynamic>{
      'match': instance.match?.map((e) => e?.toJson()).toList(),
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

DatasetByNameArguments _$DatasetByNameArgumentsFromJson(
        Map<String, dynamic> json) =>
    DatasetByNameArguments(
      name: json['name'] as String,
    );

Map<String, dynamic> _$DatasetByNameArgumentsToJson(
        DatasetByNameArguments instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

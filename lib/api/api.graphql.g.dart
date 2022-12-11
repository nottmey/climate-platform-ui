// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.12

part of 'api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Databases$Query _$Databases$QueryFromJson(Map<String, dynamic> json) =>
    Databases$Query()
      ..databases = (json['databases'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList();

Map<String, dynamic> _$Databases$QueryToJson(Databases$Query instance) =>
    <String, dynamic>{
      'databases': instance.databases,
    };

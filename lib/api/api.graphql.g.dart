// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateBreakdownOnDataPoint$Mutation$Breakdown
    _$CreateBreakdownOnDataPoint$Mutation$BreakdownFromJson(
            Map<String, dynamic> json) =>
        CreateBreakdownOnDataPoint$Mutation$Breakdown()
          ..id = json['id'] as String;

Map<String, dynamic> _$CreateBreakdownOnDataPoint$Mutation$BreakdownToJson(
        CreateBreakdownOnDataPoint$Mutation$Breakdown instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

CreateBreakdownOnDataPoint$Mutation
    _$CreateBreakdownOnDataPoint$MutationFromJson(Map<String, dynamic> json) =>
        CreateBreakdownOnDataPoint$Mutation()
          ..createBreakdown =
              CreateBreakdownOnDataPoint$Mutation$Breakdown.fromJson(
                  json['createBreakdown'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateBreakdownOnDataPoint$MutationToJson(
        CreateBreakdownOnDataPoint$Mutation instance) =>
    <String, dynamic>{
      'createBreakdown': instance.createBreakdown.toJson(),
    };

MergeQuantification$Mutation$Quantification
    _$MergeQuantification$Mutation$QuantificationFromJson(
            Map<String, dynamic> json) =>
        MergeQuantification$Mutation$Quantification()
          ..id = json['id'] as String
          ..name = json['name'] as String?;

Map<String, dynamic> _$MergeQuantification$Mutation$QuantificationToJson(
        MergeQuantification$Mutation$Quantification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

MergeQuantification$Mutation _$MergeQuantification$MutationFromJson(
        Map<String, dynamic> json) =>
    MergeQuantification$Mutation()
      ..mergeQuantification = json['mergeQuantification'] == null
          ? null
          : MergeQuantification$Mutation$Quantification.fromJson(
              json['mergeQuantification'] as Map<String, dynamic>);

Map<String, dynamic> _$MergeQuantification$MutationToJson(
        MergeQuantification$Mutation instance) =>
    <String, dynamic>{
      'mergeQuantification': instance.mergeQuantification?.toJson(),
    };

QuantificationInput _$QuantificationInputFromJson(Map<String, dynamic> json) =>
    QuantificationInput(
      dataPoints: (json['dataPoints'] as List<dynamic>?)
          ?.map((e) => DataPointInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String,
      name: json['name'] as String?,
      planetaryBoundaries: (json['planetaryBoundaries'] as List<dynamic>?)
          ?.map(
              (e) => PlanetaryBoundaryInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuantificationInputToJson(
        QuantificationInput instance) =>
    <String, dynamic>{
      'dataPoints': instance.dataPoints?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'name': instance.name,
      'planetaryBoundaries':
          instance.planetaryBoundaries?.map((e) => e.toJson()).toList(),
    };

DataPointInput _$DataPointInputFromJson(Map<String, dynamic> json) =>
    DataPointInput(
      breakdowns: (json['breakdowns'] as List<dynamic>?)
          ?.map((e) => BreakdownInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      compositions: (json['compositions'] as List<dynamic>?)
          ?.map((e) => BreakdownInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String,
      quantifications: (json['quantifications'] as List<dynamic>?)
          ?.map((e) => QuantificationInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      value: (json['value'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DataPointInputToJson(DataPointInput instance) =>
    <String, dynamic>{
      'breakdowns': instance.breakdowns?.map((e) => e.toJson()).toList(),
      'compositions': instance.compositions?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'quantifications':
          instance.quantifications?.map((e) => e.toJson()).toList(),
      'value': instance.value,
    };

BreakdownInput _$BreakdownInputFromJson(Map<String, dynamic> json) =>
    BreakdownInput(
      components: (json['components'] as List<dynamic>?)
          ?.map((e) => DataPointInput.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as String,
      parent: json['parent'] == null
          ? null
          : DataPointInput.fromJson(json['parent'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BreakdownInputToJson(BreakdownInput instance) =>
    <String, dynamic>{
      'components': instance.components?.map((e) => e.toJson()).toList(),
      'id': instance.id,
      'parent': instance.parent?.toJson(),
    };

PlanetaryBoundaryInput _$PlanetaryBoundaryInputFromJson(
        Map<String, dynamic> json) =>
    PlanetaryBoundaryInput(
      description: json['description'] as String?,
      id: json['id'] as String,
      name: json['name'] as String?,
      quantifications: (json['quantifications'] as List<dynamic>?)
          ?.map((e) => QuantificationInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlanetaryBoundaryInputToJson(
        PlanetaryBoundaryInput instance) =>
    <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
      'name': instance.name,
      'quantifications':
          instance.quantifications?.map((e) => e.toJson()).toList(),
    };

DeleteQuantification$Mutation$Quantification
    _$DeleteQuantification$Mutation$QuantificationFromJson(
            Map<String, dynamic> json) =>
        DeleteQuantification$Mutation$Quantification()
          ..id = json['id'] as String
          ..name = json['name'] as String?;

Map<String, dynamic> _$DeleteQuantification$Mutation$QuantificationToJson(
        DeleteQuantification$Mutation$Quantification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

DeleteQuantification$Mutation _$DeleteQuantification$MutationFromJson(
        Map<String, dynamic> json) =>
    DeleteQuantification$Mutation()
      ..deleteQuantification = json['deleteQuantification'] == null
          ? null
          : DeleteQuantification$Mutation$Quantification.fromJson(
              json['deleteQuantification'] as Map<String, dynamic>);

Map<String, dynamic> _$DeleteQuantification$MutationToJson(
        DeleteQuantification$Mutation instance) =>
    <String, dynamic>{
      'deleteQuantification': instance.deleteQuantification?.toJson(),
    };

GetQuantification$Query$Quantification
    _$GetQuantification$Query$QuantificationFromJson(
            Map<String, dynamic> json) =>
        GetQuantification$Query$Quantification()
          ..id = json['id'] as String
          ..name = json['name'] as String?;

Map<String, dynamic> _$GetQuantification$Query$QuantificationToJson(
        GetQuantification$Query$Quantification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

GetQuantification$Query _$GetQuantification$QueryFromJson(
        Map<String, dynamic> json) =>
    GetQuantification$Query()
      ..getQuantification = json['getQuantification'] == null
          ? null
          : GetQuantification$Query$Quantification.fromJson(
              json['getQuantification'] as Map<String, dynamic>);

Map<String, dynamic> _$GetQuantification$QueryToJson(
        GetQuantification$Query instance) =>
    <String, dynamic>{
      'getQuantification': instance.getQuantification?.toJson(),
    };

OnUpdatedQuantification$Subscription$Quantification
    _$OnUpdatedQuantification$Subscription$QuantificationFromJson(
            Map<String, dynamic> json) =>
        OnUpdatedQuantification$Subscription$Quantification()
          ..id = json['id'] as String
          ..name = json['name'] as String?;

Map<String, dynamic>
    _$OnUpdatedQuantification$Subscription$QuantificationToJson(
            OnUpdatedQuantification$Subscription$Quantification instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
        };

OnUpdatedQuantification$Subscription
    _$OnUpdatedQuantification$SubscriptionFromJson(Map<String, dynamic> json) =>
        OnUpdatedQuantification$Subscription()
          ..onUpdatedQuantification = json['onUpdatedQuantification'] == null
              ? null
              : OnUpdatedQuantification$Subscription$Quantification.fromJson(
                  json['onUpdatedQuantification'] as Map<String, dynamic>);

Map<String, dynamic> _$OnUpdatedQuantification$SubscriptionToJson(
        OnUpdatedQuantification$Subscription instance) =>
    <String, dynamic>{
      'onUpdatedQuantification': instance.onUpdatedQuantification?.toJson(),
    };

OnDeletedQuantification$Subscription$Quantification
    _$OnDeletedQuantification$Subscription$QuantificationFromJson(
            Map<String, dynamic> json) =>
        OnDeletedQuantification$Subscription$Quantification()
          ..id = json['id'] as String
          ..name = json['name'] as String?;

Map<String, dynamic>
    _$OnDeletedQuantification$Subscription$QuantificationToJson(
            OnDeletedQuantification$Subscription$Quantification instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
        };

OnDeletedQuantification$Subscription
    _$OnDeletedQuantification$SubscriptionFromJson(Map<String, dynamic> json) =>
        OnDeletedQuantification$Subscription()
          ..onDeletedQuantification = json['onDeletedQuantification'] == null
              ? null
              : OnDeletedQuantification$Subscription$Quantification.fromJson(
                  json['onDeletedQuantification'] as Map<String, dynamic>);

Map<String, dynamic> _$OnDeletedQuantification$SubscriptionToJson(
        OnDeletedQuantification$Subscription instance) =>
    <String, dynamic>{
      'onDeletedQuantification': instance.onDeletedQuantification?.toJson(),
    };

CreateQuantification$Mutation$Quantification
    _$CreateQuantification$Mutation$QuantificationFromJson(
            Map<String, dynamic> json) =>
        CreateQuantification$Mutation$Quantification()
          ..id = json['id'] as String
          ..name = json['name'] as String?;

Map<String, dynamic> _$CreateQuantification$Mutation$QuantificationToJson(
        CreateQuantification$Mutation$Quantification instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

CreateQuantification$Mutation _$CreateQuantification$MutationFromJson(
        Map<String, dynamic> json) =>
    CreateQuantification$Mutation()
      ..createQuantification =
          CreateQuantification$Mutation$Quantification.fromJson(
              json['createQuantification'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateQuantification$MutationToJson(
        CreateQuantification$Mutation instance) =>
    <String, dynamic>{
      'createQuantification': instance.createQuantification.toJson(),
    };

GetQuantificationPage$Query$PlanetaryBoundary$Quantification
    _$GetQuantificationPage$Query$PlanetaryBoundary$QuantificationFromJson(
            Map<String, dynamic> json) =>
        GetQuantificationPage$Query$PlanetaryBoundary$Quantification()
          ..id = json['id'] as String
          ..name = json['name'] as String?;

Map<String, dynamic>
    _$GetQuantificationPage$Query$PlanetaryBoundary$QuantificationToJson(
            GetQuantificationPage$Query$PlanetaryBoundary$Quantification
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
        };

GetQuantificationPage$Query$PlanetaryBoundary
    _$GetQuantificationPage$Query$PlanetaryBoundaryFromJson(
            Map<String, dynamic> json) =>
        GetQuantificationPage$Query$PlanetaryBoundary()
          ..quantifications = (json['quantifications'] as List<dynamic>?)
              ?.map((e) =>
                  GetQuantificationPage$Query$PlanetaryBoundary$Quantification
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$GetQuantificationPage$Query$PlanetaryBoundaryToJson(
        GetQuantificationPage$Query$PlanetaryBoundary instance) =>
    <String, dynamic>{
      'quantifications':
          instance.quantifications?.map((e) => e.toJson()).toList(),
    };

GetQuantificationPage$Query _$GetQuantificationPage$QueryFromJson(
        Map<String, dynamic> json) =>
    GetQuantificationPage$Query()
      ..getPlanetaryBoundary = json['getPlanetaryBoundary'] == null
          ? null
          : GetQuantificationPage$Query$PlanetaryBoundary.fromJson(
              json['getPlanetaryBoundary'] as Map<String, dynamic>);

Map<String, dynamic> _$GetQuantificationPage$QueryToJson(
        GetQuantificationPage$Query instance) =>
    <String, dynamic>{
      'getPlanetaryBoundary': instance.getPlanetaryBoundary?.toJson(),
    };

OnCreatedQuantification$Subscription$Quantification
    _$OnCreatedQuantification$Subscription$QuantificationFromJson(
            Map<String, dynamic> json) =>
        OnCreatedQuantification$Subscription$Quantification()
          ..id = json['id'] as String
          ..name = json['name'] as String?;

Map<String, dynamic>
    _$OnCreatedQuantification$Subscription$QuantificationToJson(
            OnCreatedQuantification$Subscription$Quantification instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
        };

OnCreatedQuantification$Subscription
    _$OnCreatedQuantification$SubscriptionFromJson(Map<String, dynamic> json) =>
        OnCreatedQuantification$Subscription()
          ..onCreatedQuantification = json['onCreatedQuantification'] == null
              ? null
              : OnCreatedQuantification$Subscription$Quantification.fromJson(
                  json['onCreatedQuantification'] as Map<String, dynamic>);

Map<String, dynamic> _$OnCreatedQuantification$SubscriptionToJson(
        OnCreatedQuantification$Subscription instance) =>
    <String, dynamic>{
      'onCreatedQuantification': instance.onCreatedQuantification?.toJson(),
    };

MergePlanetaryBoundary$Mutation$PlanetaryBoundary
    _$MergePlanetaryBoundary$Mutation$PlanetaryBoundaryFromJson(
            Map<String, dynamic> json) =>
        MergePlanetaryBoundary$Mutation$PlanetaryBoundary()
          ..id = json['id'] as String
          ..name = json['name'] as String?
          ..description = json['description'] as String?;

Map<String, dynamic> _$MergePlanetaryBoundary$Mutation$PlanetaryBoundaryToJson(
        MergePlanetaryBoundary$Mutation$PlanetaryBoundary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };

MergePlanetaryBoundary$Mutation _$MergePlanetaryBoundary$MutationFromJson(
        Map<String, dynamic> json) =>
    MergePlanetaryBoundary$Mutation()
      ..mergePlanetaryBoundary = json['mergePlanetaryBoundary'] == null
          ? null
          : MergePlanetaryBoundary$Mutation$PlanetaryBoundary.fromJson(
              json['mergePlanetaryBoundary'] as Map<String, dynamic>);

Map<String, dynamic> _$MergePlanetaryBoundary$MutationToJson(
        MergePlanetaryBoundary$Mutation instance) =>
    <String, dynamic>{
      'mergePlanetaryBoundary': instance.mergePlanetaryBoundary?.toJson(),
    };

OnUpdatedPlanetaryBoundary$Subscription$PlanetaryBoundary
    _$OnUpdatedPlanetaryBoundary$Subscription$PlanetaryBoundaryFromJson(
            Map<String, dynamic> json) =>
        OnUpdatedPlanetaryBoundary$Subscription$PlanetaryBoundary()
          ..id = json['id'] as String
          ..name = json['name'] as String?
          ..description = json['description'] as String?;

Map<String,
    dynamic> _$OnUpdatedPlanetaryBoundary$Subscription$PlanetaryBoundaryToJson(
        OnUpdatedPlanetaryBoundary$Subscription$PlanetaryBoundary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
    };

OnUpdatedPlanetaryBoundary$Subscription
    _$OnUpdatedPlanetaryBoundary$SubscriptionFromJson(
            Map<String, dynamic> json) =>
        OnUpdatedPlanetaryBoundary$Subscription()
          ..onUpdatedPlanetaryBoundary =
              json['onUpdatedPlanetaryBoundary'] == null
                  ? null
                  : OnUpdatedPlanetaryBoundary$Subscription$PlanetaryBoundary
                      .fromJson(json['onUpdatedPlanetaryBoundary']
                          as Map<String, dynamic>);

Map<String, dynamic> _$OnUpdatedPlanetaryBoundary$SubscriptionToJson(
        OnUpdatedPlanetaryBoundary$Subscription instance) =>
    <String, dynamic>{
      'onUpdatedPlanetaryBoundary':
          instance.onUpdatedPlanetaryBoundary?.toJson(),
    };

CreatePlanetaryBoundary$Mutation$PlanetaryBoundary
    _$CreatePlanetaryBoundary$Mutation$PlanetaryBoundaryFromJson(
            Map<String, dynamic> json) =>
        CreatePlanetaryBoundary$Mutation$PlanetaryBoundary()
          ..id = json['id'] as String
          ..name = json['name'] as String?
          ..description = json['description'] as String?;

Map<String, dynamic> _$CreatePlanetaryBoundary$Mutation$PlanetaryBoundaryToJson(
        CreatePlanetaryBoundary$Mutation$PlanetaryBoundary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
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

OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundary
    _$OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundaryFromJson(
            Map<String, dynamic> json) =>
        OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundary()
          ..id = json['id'] as String
          ..name = json['name'] as String?
          ..description = json['description'] as String?;

Map<String,
    dynamic> _$OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundaryToJson(
        OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
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
          ..name = json['name'] as String?
          ..description = json['description'] as String?;

Map<String, dynamic> _$DeletePlanetaryBoundary$Mutation$PlanetaryBoundaryToJson(
        DeletePlanetaryBoundary$Mutation$PlanetaryBoundary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
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
          ..name = json['name'] as String?
          ..description = json['description'] as String?;

Map<String,
    dynamic> _$OnCreatedPlanetaryBoundary$Subscription$PlanetaryBoundaryToJson(
        OnCreatedPlanetaryBoundary$Subscription$PlanetaryBoundary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
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
          ..name = json['name'] as String?
          ..description = json['description'] as String?;

Map<String, dynamic>
    _$GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PlanetaryBoundaryToJson(
            GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PlanetaryBoundary
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'name': instance.name,
          'description': instance.description,
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
          ..name = json['name'] as String?
          ..description = json['description'] as String?;

Map<String, dynamic> _$GetPlanetaryBoundary$Query$PlanetaryBoundaryToJson(
        GetPlanetaryBoundary$Query$PlanetaryBoundary instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
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

GetDataPoint$Query$DataPoint _$GetDataPoint$Query$DataPointFromJson(
        Map<String, dynamic> json) =>
    GetDataPoint$Query$DataPoint()
      ..id = json['id'] as String
      ..value = (json['value'] as num?)?.toDouble()
      ..breakdowns = (json['breakdowns'] as List<dynamic>?)
          ?.map((e) =>
              DataPointMixin$Breakdown.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$GetDataPoint$Query$DataPointToJson(
        GetDataPoint$Query$DataPoint instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'breakdowns': instance.breakdowns?.map((e) => e.toJson()).toList(),
    };

GetDataPoint$Query _$GetDataPoint$QueryFromJson(Map<String, dynamic> json) =>
    GetDataPoint$Query()
      ..getDataPoint = json['getDataPoint'] == null
          ? null
          : GetDataPoint$Query$DataPoint.fromJson(
              json['getDataPoint'] as Map<String, dynamic>);

Map<String, dynamic> _$GetDataPoint$QueryToJson(GetDataPoint$Query instance) =>
    <String, dynamic>{
      'getDataPoint': instance.getDataPoint?.toJson(),
    };

DataPointMixin$Breakdown _$DataPointMixin$BreakdownFromJson(
        Map<String, dynamic> json) =>
    DataPointMixin$Breakdown()..id = json['id'] as String;

Map<String, dynamic> _$DataPointMixin$BreakdownToJson(
        DataPointMixin$Breakdown instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

CreateDataPointOnQuantification$Mutation$DataPoint
    _$CreateDataPointOnQuantification$Mutation$DataPointFromJson(
            Map<String, dynamic> json) =>
        CreateDataPointOnQuantification$Mutation$DataPoint()
          ..id = json['id'] as String
          ..value = (json['value'] as num?)?.toDouble()
          ..breakdowns = (json['breakdowns'] as List<dynamic>?)
              ?.map((e) =>
                  DataPointMixin$Breakdown.fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$CreateDataPointOnQuantification$Mutation$DataPointToJson(
        CreateDataPointOnQuantification$Mutation$DataPoint instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'breakdowns': instance.breakdowns?.map((e) => e.toJson()).toList(),
    };

CreateDataPointOnQuantification$Mutation
    _$CreateDataPointOnQuantification$MutationFromJson(
            Map<String, dynamic> json) =>
        CreateDataPointOnQuantification$Mutation()
          ..createDataPoint =
              CreateDataPointOnQuantification$Mutation$DataPoint.fromJson(
                  json['createDataPoint'] as Map<String, dynamic>);

Map<String, dynamic> _$CreateDataPointOnQuantification$MutationToJson(
        CreateDataPointOnQuantification$Mutation instance) =>
    <String, dynamic>{
      'createDataPoint': instance.createDataPoint.toJson(),
    };

GetDataPointsOnQuantification$Query$Quantification$DataPoint
    _$GetDataPointsOnQuantification$Query$Quantification$DataPointFromJson(
            Map<String, dynamic> json) =>
        GetDataPointsOnQuantification$Query$Quantification$DataPoint()
          ..id = json['id'] as String
          ..value = (json['value'] as num?)?.toDouble()
          ..breakdowns = (json['breakdowns'] as List<dynamic>?)
              ?.map((e) =>
                  DataPointMixin$Breakdown.fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic>
    _$GetDataPointsOnQuantification$Query$Quantification$DataPointToJson(
            GetDataPointsOnQuantification$Query$Quantification$DataPoint
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'value': instance.value,
          'breakdowns': instance.breakdowns?.map((e) => e.toJson()).toList(),
        };

GetDataPointsOnQuantification$Query$Quantification
    _$GetDataPointsOnQuantification$Query$QuantificationFromJson(
            Map<String, dynamic> json) =>
        GetDataPointsOnQuantification$Query$Quantification()
          ..dataPoints = (json['dataPoints'] as List<dynamic>?)
              ?.map((e) =>
                  GetDataPointsOnQuantification$Query$Quantification$DataPoint
                      .fromJson(e as Map<String, dynamic>))
              .toList();

Map<String, dynamic> _$GetDataPointsOnQuantification$Query$QuantificationToJson(
        GetDataPointsOnQuantification$Query$Quantification instance) =>
    <String, dynamic>{
      'dataPoints': instance.dataPoints?.map((e) => e.toJson()).toList(),
    };

GetDataPointsOnQuantification$Query
    _$GetDataPointsOnQuantification$QueryFromJson(Map<String, dynamic> json) =>
        GetDataPointsOnQuantification$Query()
          ..getQuantification = json['getQuantification'] == null
              ? null
              : GetDataPointsOnQuantification$Query$Quantification.fromJson(
                  json['getQuantification'] as Map<String, dynamic>);

Map<String, dynamic> _$GetDataPointsOnQuantification$QueryToJson(
        GetDataPointsOnQuantification$Query instance) =>
    <String, dynamic>{
      'getQuantification': instance.getQuantification?.toJson(),
    };

DeleteDataPoint$Mutation$DataPoint _$DeleteDataPoint$Mutation$DataPointFromJson(
        Map<String, dynamic> json) =>
    DeleteDataPoint$Mutation$DataPoint()
      ..id = json['id'] as String
      ..value = (json['value'] as num?)?.toDouble()
      ..breakdowns = (json['breakdowns'] as List<dynamic>?)
          ?.map((e) =>
              DataPointMixin$Breakdown.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DeleteDataPoint$Mutation$DataPointToJson(
        DeleteDataPoint$Mutation$DataPoint instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'breakdowns': instance.breakdowns?.map((e) => e.toJson()).toList(),
    };

DeleteDataPoint$Mutation _$DeleteDataPoint$MutationFromJson(
        Map<String, dynamic> json) =>
    DeleteDataPoint$Mutation()
      ..deleteDataPoint = json['deleteDataPoint'] == null
          ? null
          : DeleteDataPoint$Mutation$DataPoint.fromJson(
              json['deleteDataPoint'] as Map<String, dynamic>);

Map<String, dynamic> _$DeleteDataPoint$MutationToJson(
        DeleteDataPoint$Mutation instance) =>
    <String, dynamic>{
      'deleteDataPoint': instance.deleteDataPoint?.toJson(),
    };

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

CreateBreakdownOnDataPointArguments
    _$CreateBreakdownOnDataPointArgumentsFromJson(Map<String, dynamic> json) =>
        CreateBreakdownOnDataPointArguments(
          id: json['id'] as String,
          parentDataPointId: json['parentDataPointId'] as String,
        );

Map<String, dynamic> _$CreateBreakdownOnDataPointArgumentsToJson(
        CreateBreakdownOnDataPointArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentDataPointId': instance.parentDataPointId,
    };

MergeQuantificationArguments _$MergeQuantificationArgumentsFromJson(
        Map<String, dynamic> json) =>
    MergeQuantificationArguments(
      value:
          QuantificationInput.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MergeQuantificationArgumentsToJson(
        MergeQuantificationArguments instance) =>
    <String, dynamic>{
      'value': instance.value.toJson(),
    };

DeleteQuantificationArguments _$DeleteQuantificationArgumentsFromJson(
        Map<String, dynamic> json) =>
    DeleteQuantificationArguments(
      id: json['id'] as String,
    );

Map<String, dynamic> _$DeleteQuantificationArgumentsToJson(
        DeleteQuantificationArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

GetQuantificationArguments _$GetQuantificationArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetQuantificationArguments(
      id: json['id'] as String,
    );

Map<String, dynamic> _$GetQuantificationArgumentsToJson(
        GetQuantificationArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

OnUpdatedQuantificationArguments _$OnUpdatedQuantificationArgumentsFromJson(
        Map<String, dynamic> json) =>
    OnUpdatedQuantificationArguments(
      id: json['id'] as String,
    );

Map<String, dynamic> _$OnUpdatedQuantificationArgumentsToJson(
        OnUpdatedQuantificationArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

OnDeletedQuantificationArguments _$OnDeletedQuantificationArgumentsFromJson(
        Map<String, dynamic> json) =>
    OnDeletedQuantificationArguments(
      id: json['id'] as String,
    );

Map<String, dynamic> _$OnDeletedQuantificationArgumentsToJson(
        OnDeletedQuantificationArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

CreateQuantificationArguments _$CreateQuantificationArgumentsFromJson(
        Map<String, dynamic> json) =>
    CreateQuantificationArguments(
      value:
          QuantificationInput.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreateQuantificationArgumentsToJson(
        CreateQuantificationArguments instance) =>
    <String, dynamic>{
      'value': instance.value.toJson(),
    };

GetQuantificationPageArguments _$GetQuantificationPageArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetQuantificationPageArguments(
      parentBoundaryId: json['parentBoundaryId'] as String,
    );

Map<String, dynamic> _$GetQuantificationPageArgumentsToJson(
        GetQuantificationPageArguments instance) =>
    <String, dynamic>{
      'parentBoundaryId': instance.parentBoundaryId,
    };

MergePlanetaryBoundaryArguments _$MergePlanetaryBoundaryArgumentsFromJson(
        Map<String, dynamic> json) =>
    MergePlanetaryBoundaryArguments(
      value: PlanetaryBoundaryInput.fromJson(
          json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MergePlanetaryBoundaryArgumentsToJson(
        MergePlanetaryBoundaryArguments instance) =>
    <String, dynamic>{
      'value': instance.value.toJson(),
    };

OnUpdatedPlanetaryBoundaryArguments
    _$OnUpdatedPlanetaryBoundaryArgumentsFromJson(Map<String, dynamic> json) =>
        OnUpdatedPlanetaryBoundaryArguments(
          id: json['id'] as String,
        );

Map<String, dynamic> _$OnUpdatedPlanetaryBoundaryArgumentsToJson(
        OnUpdatedPlanetaryBoundaryArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

CreatePlanetaryBoundaryArguments _$CreatePlanetaryBoundaryArgumentsFromJson(
        Map<String, dynamic> json) =>
    CreatePlanetaryBoundaryArguments(
      value: PlanetaryBoundaryInput.fromJson(
          json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreatePlanetaryBoundaryArgumentsToJson(
        CreatePlanetaryBoundaryArguments instance) =>
    <String, dynamic>{
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
    );

Map<String, dynamic> _$DeletePlanetaryBoundaryArgumentsToJson(
        DeletePlanetaryBoundaryArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
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

GetDataPointArguments _$GetDataPointArgumentsFromJson(
        Map<String, dynamic> json) =>
    GetDataPointArguments(
      id: json['id'] as String,
    );

Map<String, dynamic> _$GetDataPointArgumentsToJson(
        GetDataPointArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

CreateDataPointOnQuantificationArguments
    _$CreateDataPointOnQuantificationArgumentsFromJson(
            Map<String, dynamic> json) =>
        CreateDataPointOnQuantificationArguments(
          id: json['id'] as String,
          value: (json['value'] as num).toDouble(),
          parentQuantificationId: json['parentQuantificationId'] as String,
        );

Map<String, dynamic> _$CreateDataPointOnQuantificationArgumentsToJson(
        CreateDataPointOnQuantificationArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'parentQuantificationId': instance.parentQuantificationId,
    };

GetDataPointsOnQuantificationArguments
    _$GetDataPointsOnQuantificationArgumentsFromJson(
            Map<String, dynamic> json) =>
        GetDataPointsOnQuantificationArguments(
          parentQuantificationId: json['parentQuantificationId'] as String,
        );

Map<String, dynamic> _$GetDataPointsOnQuantificationArgumentsToJson(
        GetDataPointsOnQuantificationArguments instance) =>
    <String, dynamic>{
      'parentQuantificationId': instance.parentQuantificationId,
    };

DeleteDataPointArguments _$DeleteDataPointArgumentsFromJson(
        Map<String, dynamic> json) =>
    DeleteDataPointArguments(
      id: json['id'] as String,
    );

Map<String, dynamic> _$DeleteDataPointArgumentsToJson(
        DeleteDataPointArguments instance) =>
    <String, dynamic>{
      'id': instance.id,
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

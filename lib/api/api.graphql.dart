// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'api.graphql.g.dart';

mixin BreakdownMixin {
  late String id;
}
mixin QuantificationMixin {
  late String id;
  String? name;
}
mixin PlanetaryBoundaryMixin {
  late String id;
  String? name;
  String? description;
}
mixin PageInfoMixin {
  int? next;
  late int size;
}
mixin DataPointMixin {
  late String id;
  double? value;
  List<DataPointMixin$Breakdown>? breakdowns;
}
mixin EntityMixin {
  late String id;
  late List<EntityMixin$Attribute> attributes;
}

@JsonSerializable(explicitToJson: true)
class CreateBreakdownOnDataPoint$Mutation$Breakdown extends JsonSerializable
    with EquatableMixin, BreakdownMixin {
  CreateBreakdownOnDataPoint$Mutation$Breakdown();

  factory CreateBreakdownOnDataPoint$Mutation$Breakdown.fromJson(
          Map<String, dynamic> json) =>
      _$CreateBreakdownOnDataPoint$Mutation$BreakdownFromJson(json);

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateBreakdownOnDataPoint$Mutation$BreakdownToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateBreakdownOnDataPoint$Mutation extends JsonSerializable
    with EquatableMixin {
  CreateBreakdownOnDataPoint$Mutation();

  factory CreateBreakdownOnDataPoint$Mutation.fromJson(
          Map<String, dynamic> json) =>
      _$CreateBreakdownOnDataPoint$MutationFromJson(json);

  late CreateBreakdownOnDataPoint$Mutation$Breakdown createBreakdown;

  @override
  List<Object?> get props => [createBreakdown];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateBreakdownOnDataPoint$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MergeQuantification$Mutation$Quantification extends JsonSerializable
    with EquatableMixin, QuantificationMixin {
  MergeQuantification$Mutation$Quantification();

  factory MergeQuantification$Mutation$Quantification.fromJson(
          Map<String, dynamic> json) =>
      _$MergeQuantification$Mutation$QuantificationFromJson(json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$MergeQuantification$Mutation$QuantificationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MergeQuantification$Mutation extends JsonSerializable
    with EquatableMixin {
  MergeQuantification$Mutation();

  factory MergeQuantification$Mutation.fromJson(Map<String, dynamic> json) =>
      _$MergeQuantification$MutationFromJson(json);

  MergeQuantification$Mutation$Quantification? mergeQuantification;

  @override
  List<Object?> get props => [mergeQuantification];
  @override
  Map<String, dynamic> toJson() => _$MergeQuantification$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class QuantificationInput extends JsonSerializable with EquatableMixin {
  QuantificationInput({
    this.dataPoints,
    required this.id,
    this.name,
    this.planetaryBoundaries,
  });

  factory QuantificationInput.fromJson(Map<String, dynamic> json) =>
      _$QuantificationInputFromJson(json);

  List<DataPointInput>? dataPoints;

  late String id;

  String? name;

  List<PlanetaryBoundaryInput>? planetaryBoundaries;

  @override
  List<Object?> get props => [dataPoints, id, name, planetaryBoundaries];
  @override
  Map<String, dynamic> toJson() => _$QuantificationInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DataPointInput extends JsonSerializable with EquatableMixin {
  DataPointInput({
    this.breakdowns,
    this.compositions,
    required this.id,
    this.quantifications,
    this.value,
  });

  factory DataPointInput.fromJson(Map<String, dynamic> json) =>
      _$DataPointInputFromJson(json);

  List<BreakdownInput>? breakdowns;

  List<BreakdownInput>? compositions;

  late String id;

  List<QuantificationInput>? quantifications;

  double? value;

  @override
  List<Object?> get props =>
      [breakdowns, compositions, id, quantifications, value];
  @override
  Map<String, dynamic> toJson() => _$DataPointInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class BreakdownInput extends JsonSerializable with EquatableMixin {
  BreakdownInput({
    this.components,
    required this.id,
    this.parent,
  });

  factory BreakdownInput.fromJson(Map<String, dynamic> json) =>
      _$BreakdownInputFromJson(json);

  List<DataPointInput>? components;

  late String id;

  DataPointInput? parent;

  @override
  List<Object?> get props => [components, id, parent];
  @override
  Map<String, dynamic> toJson() => _$BreakdownInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PlanetaryBoundaryInput extends JsonSerializable with EquatableMixin {
  PlanetaryBoundaryInput({
    this.description,
    required this.id,
    this.name,
    this.quantifications,
  });

  factory PlanetaryBoundaryInput.fromJson(Map<String, dynamic> json) =>
      _$PlanetaryBoundaryInputFromJson(json);

  String? description;

  late String id;

  String? name;

  List<QuantificationInput>? quantifications;

  @override
  List<Object?> get props => [description, id, name, quantifications];
  @override
  Map<String, dynamic> toJson() => _$PlanetaryBoundaryInputToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteQuantification$Mutation$Quantification extends JsonSerializable
    with EquatableMixin, QuantificationMixin {
  DeleteQuantification$Mutation$Quantification();

  factory DeleteQuantification$Mutation$Quantification.fromJson(
          Map<String, dynamic> json) =>
      _$DeleteQuantification$Mutation$QuantificationFromJson(json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$DeleteQuantification$Mutation$QuantificationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteQuantification$Mutation extends JsonSerializable
    with EquatableMixin {
  DeleteQuantification$Mutation();

  factory DeleteQuantification$Mutation.fromJson(Map<String, dynamic> json) =>
      _$DeleteQuantification$MutationFromJson(json);

  DeleteQuantification$Mutation$Quantification? deleteQuantification;

  @override
  List<Object?> get props => [deleteQuantification];
  @override
  Map<String, dynamic> toJson() => _$DeleteQuantification$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetQuantification$Query$Quantification extends JsonSerializable
    with EquatableMixin, QuantificationMixin {
  GetQuantification$Query$Quantification();

  factory GetQuantification$Query$Quantification.fromJson(
          Map<String, dynamic> json) =>
      _$GetQuantification$Query$QuantificationFromJson(json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetQuantification$Query$QuantificationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetQuantification$Query extends JsonSerializable with EquatableMixin {
  GetQuantification$Query();

  factory GetQuantification$Query.fromJson(Map<String, dynamic> json) =>
      _$GetQuantification$QueryFromJson(json);

  GetQuantification$Query$Quantification? getQuantification;

  @override
  List<Object?> get props => [getQuantification];
  @override
  Map<String, dynamic> toJson() => _$GetQuantification$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OnUpdatedQuantification$Subscription$Quantification
    extends JsonSerializable with EquatableMixin, QuantificationMixin {
  OnUpdatedQuantification$Subscription$Quantification();

  factory OnUpdatedQuantification$Subscription$Quantification.fromJson(
          Map<String, dynamic> json) =>
      _$OnUpdatedQuantification$Subscription$QuantificationFromJson(json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$OnUpdatedQuantification$Subscription$QuantificationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OnUpdatedQuantification$Subscription extends JsonSerializable
    with EquatableMixin {
  OnUpdatedQuantification$Subscription();

  factory OnUpdatedQuantification$Subscription.fromJson(
          Map<String, dynamic> json) =>
      _$OnUpdatedQuantification$SubscriptionFromJson(json);

  OnUpdatedQuantification$Subscription$Quantification? onUpdatedQuantification;

  @override
  List<Object?> get props => [onUpdatedQuantification];
  @override
  Map<String, dynamic> toJson() =>
      _$OnUpdatedQuantification$SubscriptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OnDeletedQuantification$Subscription$Quantification
    extends JsonSerializable with EquatableMixin, QuantificationMixin {
  OnDeletedQuantification$Subscription$Quantification();

  factory OnDeletedQuantification$Subscription$Quantification.fromJson(
          Map<String, dynamic> json) =>
      _$OnDeletedQuantification$Subscription$QuantificationFromJson(json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$OnDeletedQuantification$Subscription$QuantificationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OnDeletedQuantification$Subscription extends JsonSerializable
    with EquatableMixin {
  OnDeletedQuantification$Subscription();

  factory OnDeletedQuantification$Subscription.fromJson(
          Map<String, dynamic> json) =>
      _$OnDeletedQuantification$SubscriptionFromJson(json);

  OnDeletedQuantification$Subscription$Quantification? onDeletedQuantification;

  @override
  List<Object?> get props => [onDeletedQuantification];
  @override
  Map<String, dynamic> toJson() =>
      _$OnDeletedQuantification$SubscriptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateQuantification$Mutation$Quantification extends JsonSerializable
    with EquatableMixin, QuantificationMixin {
  CreateQuantification$Mutation$Quantification();

  factory CreateQuantification$Mutation$Quantification.fromJson(
          Map<String, dynamic> json) =>
      _$CreateQuantification$Mutation$QuantificationFromJson(json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateQuantification$Mutation$QuantificationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateQuantification$Mutation extends JsonSerializable
    with EquatableMixin {
  CreateQuantification$Mutation();

  factory CreateQuantification$Mutation.fromJson(Map<String, dynamic> json) =>
      _$CreateQuantification$MutationFromJson(json);

  late CreateQuantification$Mutation$Quantification createQuantification;

  @override
  List<Object?> get props => [createQuantification];
  @override
  Map<String, dynamic> toJson() => _$CreateQuantification$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetQuantificationPage$Query$PlanetaryBoundary$Quantification
    extends JsonSerializable with EquatableMixin, QuantificationMixin {
  GetQuantificationPage$Query$PlanetaryBoundary$Quantification();

  factory GetQuantificationPage$Query$PlanetaryBoundary$Quantification.fromJson(
          Map<String, dynamic> json) =>
      _$GetQuantificationPage$Query$PlanetaryBoundary$QuantificationFromJson(
          json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$GetQuantificationPage$Query$PlanetaryBoundary$QuantificationToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetQuantificationPage$Query$PlanetaryBoundary extends JsonSerializable
    with EquatableMixin {
  GetQuantificationPage$Query$PlanetaryBoundary();

  factory GetQuantificationPage$Query$PlanetaryBoundary.fromJson(
          Map<String, dynamic> json) =>
      _$GetQuantificationPage$Query$PlanetaryBoundaryFromJson(json);

  List<GetQuantificationPage$Query$PlanetaryBoundary$Quantification>?
      quantifications;

  @override
  List<Object?> get props => [quantifications];
  @override
  Map<String, dynamic> toJson() =>
      _$GetQuantificationPage$Query$PlanetaryBoundaryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetQuantificationPage$Query extends JsonSerializable with EquatableMixin {
  GetQuantificationPage$Query();

  factory GetQuantificationPage$Query.fromJson(Map<String, dynamic> json) =>
      _$GetQuantificationPage$QueryFromJson(json);

  GetQuantificationPage$Query$PlanetaryBoundary? getPlanetaryBoundary;

  @override
  List<Object?> get props => [getPlanetaryBoundary];
  @override
  Map<String, dynamic> toJson() => _$GetQuantificationPage$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OnCreatedQuantification$Subscription$Quantification
    extends JsonSerializable with EquatableMixin, QuantificationMixin {
  OnCreatedQuantification$Subscription$Quantification();

  factory OnCreatedQuantification$Subscription$Quantification.fromJson(
          Map<String, dynamic> json) =>
      _$OnCreatedQuantification$Subscription$QuantificationFromJson(json);

  @override
  List<Object?> get props => [id, name];
  @override
  Map<String, dynamic> toJson() =>
      _$OnCreatedQuantification$Subscription$QuantificationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OnCreatedQuantification$Subscription extends JsonSerializable
    with EquatableMixin {
  OnCreatedQuantification$Subscription();

  factory OnCreatedQuantification$Subscription.fromJson(
          Map<String, dynamic> json) =>
      _$OnCreatedQuantification$SubscriptionFromJson(json);

  OnCreatedQuantification$Subscription$Quantification? onCreatedQuantification;

  @override
  List<Object?> get props => [onCreatedQuantification];
  @override
  Map<String, dynamic> toJson() =>
      _$OnCreatedQuantification$SubscriptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MergePlanetaryBoundary$Mutation$PlanetaryBoundary extends JsonSerializable
    with EquatableMixin, PlanetaryBoundaryMixin {
  MergePlanetaryBoundary$Mutation$PlanetaryBoundary();

  factory MergePlanetaryBoundary$Mutation$PlanetaryBoundary.fromJson(
          Map<String, dynamic> json) =>
      _$MergePlanetaryBoundary$Mutation$PlanetaryBoundaryFromJson(json);

  @override
  List<Object?> get props => [id, name, description];
  @override
  Map<String, dynamic> toJson() =>
      _$MergePlanetaryBoundary$Mutation$PlanetaryBoundaryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class MergePlanetaryBoundary$Mutation extends JsonSerializable
    with EquatableMixin {
  MergePlanetaryBoundary$Mutation();

  factory MergePlanetaryBoundary$Mutation.fromJson(Map<String, dynamic> json) =>
      _$MergePlanetaryBoundary$MutationFromJson(json);

  MergePlanetaryBoundary$Mutation$PlanetaryBoundary? mergePlanetaryBoundary;

  @override
  List<Object?> get props => [mergePlanetaryBoundary];
  @override
  Map<String, dynamic> toJson() =>
      _$MergePlanetaryBoundary$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OnUpdatedPlanetaryBoundary$Subscription$PlanetaryBoundary
    extends JsonSerializable with EquatableMixin, PlanetaryBoundaryMixin {
  OnUpdatedPlanetaryBoundary$Subscription$PlanetaryBoundary();

  factory OnUpdatedPlanetaryBoundary$Subscription$PlanetaryBoundary.fromJson(
          Map<String, dynamic> json) =>
      _$OnUpdatedPlanetaryBoundary$Subscription$PlanetaryBoundaryFromJson(json);

  @override
  List<Object?> get props => [id, name, description];
  @override
  Map<String, dynamic> toJson() =>
      _$OnUpdatedPlanetaryBoundary$Subscription$PlanetaryBoundaryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OnUpdatedPlanetaryBoundary$Subscription extends JsonSerializable
    with EquatableMixin {
  OnUpdatedPlanetaryBoundary$Subscription();

  factory OnUpdatedPlanetaryBoundary$Subscription.fromJson(
          Map<String, dynamic> json) =>
      _$OnUpdatedPlanetaryBoundary$SubscriptionFromJson(json);

  OnUpdatedPlanetaryBoundary$Subscription$PlanetaryBoundary?
      onUpdatedPlanetaryBoundary;

  @override
  List<Object?> get props => [onUpdatedPlanetaryBoundary];
  @override
  Map<String, dynamic> toJson() =>
      _$OnUpdatedPlanetaryBoundary$SubscriptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreatePlanetaryBoundary$Mutation$PlanetaryBoundary
    extends JsonSerializable with EquatableMixin, PlanetaryBoundaryMixin {
  CreatePlanetaryBoundary$Mutation$PlanetaryBoundary();

  factory CreatePlanetaryBoundary$Mutation$PlanetaryBoundary.fromJson(
          Map<String, dynamic> json) =>
      _$CreatePlanetaryBoundary$Mutation$PlanetaryBoundaryFromJson(json);

  @override
  List<Object?> get props => [id, name, description];
  @override
  Map<String, dynamic> toJson() =>
      _$CreatePlanetaryBoundary$Mutation$PlanetaryBoundaryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreatePlanetaryBoundary$Mutation extends JsonSerializable
    with EquatableMixin {
  CreatePlanetaryBoundary$Mutation();

  factory CreatePlanetaryBoundary$Mutation.fromJson(
          Map<String, dynamic> json) =>
      _$CreatePlanetaryBoundary$MutationFromJson(json);

  late CreatePlanetaryBoundary$Mutation$PlanetaryBoundary
      createPlanetaryBoundary;

  @override
  List<Object?> get props => [createPlanetaryBoundary];
  @override
  Map<String, dynamic> toJson() =>
      _$CreatePlanetaryBoundary$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundary
    extends JsonSerializable with EquatableMixin, PlanetaryBoundaryMixin {
  OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundary();

  factory OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundary.fromJson(
          Map<String, dynamic> json) =>
      _$OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundaryFromJson(json);

  @override
  List<Object?> get props => [id, name, description];
  @override
  Map<String, dynamic> toJson() =>
      _$OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundaryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OnDeletedPlanetaryBoundary$Subscription extends JsonSerializable
    with EquatableMixin {
  OnDeletedPlanetaryBoundary$Subscription();

  factory OnDeletedPlanetaryBoundary$Subscription.fromJson(
          Map<String, dynamic> json) =>
      _$OnDeletedPlanetaryBoundary$SubscriptionFromJson(json);

  OnDeletedPlanetaryBoundary$Subscription$PlanetaryBoundary?
      onDeletedPlanetaryBoundary;

  @override
  List<Object?> get props => [onDeletedPlanetaryBoundary];
  @override
  Map<String, dynamic> toJson() =>
      _$OnDeletedPlanetaryBoundary$SubscriptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeletePlanetaryBoundary$Mutation$PlanetaryBoundary
    extends JsonSerializable with EquatableMixin, PlanetaryBoundaryMixin {
  DeletePlanetaryBoundary$Mutation$PlanetaryBoundary();

  factory DeletePlanetaryBoundary$Mutation$PlanetaryBoundary.fromJson(
          Map<String, dynamic> json) =>
      _$DeletePlanetaryBoundary$Mutation$PlanetaryBoundaryFromJson(json);

  @override
  List<Object?> get props => [id, name, description];
  @override
  Map<String, dynamic> toJson() =>
      _$DeletePlanetaryBoundary$Mutation$PlanetaryBoundaryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeletePlanetaryBoundary$Mutation extends JsonSerializable
    with EquatableMixin {
  DeletePlanetaryBoundary$Mutation();

  factory DeletePlanetaryBoundary$Mutation.fromJson(
          Map<String, dynamic> json) =>
      _$DeletePlanetaryBoundary$MutationFromJson(json);

  DeletePlanetaryBoundary$Mutation$PlanetaryBoundary? deletePlanetaryBoundary;

  @override
  List<Object?> get props => [deletePlanetaryBoundary];
  @override
  Map<String, dynamic> toJson() =>
      _$DeletePlanetaryBoundary$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OnCreatedPlanetaryBoundary$Subscription$PlanetaryBoundary
    extends JsonSerializable with EquatableMixin, PlanetaryBoundaryMixin {
  OnCreatedPlanetaryBoundary$Subscription$PlanetaryBoundary();

  factory OnCreatedPlanetaryBoundary$Subscription$PlanetaryBoundary.fromJson(
          Map<String, dynamic> json) =>
      _$OnCreatedPlanetaryBoundary$Subscription$PlanetaryBoundaryFromJson(json);

  @override
  List<Object?> get props => [id, name, description];
  @override
  Map<String, dynamic> toJson() =>
      _$OnCreatedPlanetaryBoundary$Subscription$PlanetaryBoundaryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class OnCreatedPlanetaryBoundary$Subscription extends JsonSerializable
    with EquatableMixin {
  OnCreatedPlanetaryBoundary$Subscription();

  factory OnCreatedPlanetaryBoundary$Subscription.fromJson(
          Map<String, dynamic> json) =>
      _$OnCreatedPlanetaryBoundary$SubscriptionFromJson(json);

  OnCreatedPlanetaryBoundary$Subscription$PlanetaryBoundary?
      onCreatedPlanetaryBoundary;

  @override
  List<Object?> get props => [onCreatedPlanetaryBoundary];
  @override
  Map<String, dynamic> toJson() =>
      _$OnCreatedPlanetaryBoundary$SubscriptionToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PageInfo
    extends JsonSerializable with EquatableMixin, PageInfoMixin {
  GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PageInfo();

  factory GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PageInfo.fromJson(
          Map<String, dynamic> json) =>
      _$GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PageInfoFromJson(
          json);

  @override
  List<Object?> get props => [next, size];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PageInfoToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PlanetaryBoundary
    extends JsonSerializable with EquatableMixin, PlanetaryBoundaryMixin {
  GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PlanetaryBoundary();

  factory GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PlanetaryBoundary.fromJson(
          Map<String, dynamic> json) =>
      _$GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PlanetaryBoundaryFromJson(
          json);

  @override
  List<Object?> get props => [id, name, description];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PlanetaryBoundaryToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage
    extends JsonSerializable with EquatableMixin {
  GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage();

  factory GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage.fromJson(
          Map<String, dynamic> json) =>
      _$GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPageFromJson(json);

  late GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PageInfo info;

  late List<
          GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage$PlanetaryBoundary>
      values;

  @override
  List<Object?> get props => [info, values];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPlanetaryBoundaryPage$Query extends JsonSerializable
    with EquatableMixin {
  GetPlanetaryBoundaryPage$Query();

  factory GetPlanetaryBoundaryPage$Query.fromJson(Map<String, dynamic> json) =>
      _$GetPlanetaryBoundaryPage$QueryFromJson(json);

  late GetPlanetaryBoundaryPage$Query$PlanetaryBoundaryListPage
      listPlanetaryBoundary;

  @override
  List<Object?> get props => [listPlanetaryBoundary];
  @override
  Map<String, dynamic> toJson() => _$GetPlanetaryBoundaryPage$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPlanetaryBoundary$Query$PlanetaryBoundary extends JsonSerializable
    with EquatableMixin, PlanetaryBoundaryMixin {
  GetPlanetaryBoundary$Query$PlanetaryBoundary();

  factory GetPlanetaryBoundary$Query$PlanetaryBoundary.fromJson(
          Map<String, dynamic> json) =>
      _$GetPlanetaryBoundary$Query$PlanetaryBoundaryFromJson(json);

  @override
  List<Object?> get props => [id, name, description];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPlanetaryBoundary$Query$PlanetaryBoundaryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPlanetaryBoundary$Query extends JsonSerializable with EquatableMixin {
  GetPlanetaryBoundary$Query();

  factory GetPlanetaryBoundary$Query.fromJson(Map<String, dynamic> json) =>
      _$GetPlanetaryBoundary$QueryFromJson(json);

  GetPlanetaryBoundary$Query$PlanetaryBoundary? getPlanetaryBoundary;

  @override
  List<Object?> get props => [getPlanetaryBoundary];
  @override
  Map<String, dynamic> toJson() => _$GetPlanetaryBoundary$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetDataPoint$Query$DataPoint extends JsonSerializable
    with EquatableMixin, DataPointMixin {
  GetDataPoint$Query$DataPoint();

  factory GetDataPoint$Query$DataPoint.fromJson(Map<String, dynamic> json) =>
      _$GetDataPoint$Query$DataPointFromJson(json);

  @override
  List<Object?> get props => [id, value, breakdowns];
  @override
  Map<String, dynamic> toJson() => _$GetDataPoint$Query$DataPointToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetDataPoint$Query extends JsonSerializable with EquatableMixin {
  GetDataPoint$Query();

  factory GetDataPoint$Query.fromJson(Map<String, dynamic> json) =>
      _$GetDataPoint$QueryFromJson(json);

  GetDataPoint$Query$DataPoint? getDataPoint;

  @override
  List<Object?> get props => [getDataPoint];
  @override
  Map<String, dynamic> toJson() => _$GetDataPoint$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DataPointMixin$Breakdown extends JsonSerializable with EquatableMixin {
  DataPointMixin$Breakdown();

  factory DataPointMixin$Breakdown.fromJson(Map<String, dynamic> json) =>
      _$DataPointMixin$BreakdownFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$DataPointMixin$BreakdownToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateDataPointOnQuantification$Mutation$DataPoint
    extends JsonSerializable with EquatableMixin, DataPointMixin {
  CreateDataPointOnQuantification$Mutation$DataPoint();

  factory CreateDataPointOnQuantification$Mutation$DataPoint.fromJson(
          Map<String, dynamic> json) =>
      _$CreateDataPointOnQuantification$Mutation$DataPointFromJson(json);

  @override
  List<Object?> get props => [id, value, breakdowns];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateDataPointOnQuantification$Mutation$DataPointToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateDataPointOnQuantification$Mutation extends JsonSerializable
    with EquatableMixin {
  CreateDataPointOnQuantification$Mutation();

  factory CreateDataPointOnQuantification$Mutation.fromJson(
          Map<String, dynamic> json) =>
      _$CreateDataPointOnQuantification$MutationFromJson(json);

  late CreateDataPointOnQuantification$Mutation$DataPoint createDataPoint;

  @override
  List<Object?> get props => [createDataPoint];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateDataPointOnQuantification$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetDataPointsOnQuantification$Query$Quantification$DataPoint
    extends JsonSerializable with EquatableMixin, DataPointMixin {
  GetDataPointsOnQuantification$Query$Quantification$DataPoint();

  factory GetDataPointsOnQuantification$Query$Quantification$DataPoint.fromJson(
          Map<String, dynamic> json) =>
      _$GetDataPointsOnQuantification$Query$Quantification$DataPointFromJson(
          json);

  @override
  List<Object?> get props => [id, value, breakdowns];
  @override
  Map<String, dynamic> toJson() =>
      _$GetDataPointsOnQuantification$Query$Quantification$DataPointToJson(
          this);
}

@JsonSerializable(explicitToJson: true)
class GetDataPointsOnQuantification$Query$Quantification
    extends JsonSerializable with EquatableMixin {
  GetDataPointsOnQuantification$Query$Quantification();

  factory GetDataPointsOnQuantification$Query$Quantification.fromJson(
          Map<String, dynamic> json) =>
      _$GetDataPointsOnQuantification$Query$QuantificationFromJson(json);

  List<GetDataPointsOnQuantification$Query$Quantification$DataPoint>?
      dataPoints;

  @override
  List<Object?> get props => [dataPoints];
  @override
  Map<String, dynamic> toJson() =>
      _$GetDataPointsOnQuantification$Query$QuantificationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetDataPointsOnQuantification$Query extends JsonSerializable
    with EquatableMixin {
  GetDataPointsOnQuantification$Query();

  factory GetDataPointsOnQuantification$Query.fromJson(
          Map<String, dynamic> json) =>
      _$GetDataPointsOnQuantification$QueryFromJson(json);

  GetDataPointsOnQuantification$Query$Quantification? getQuantification;

  @override
  List<Object?> get props => [getQuantification];
  @override
  Map<String, dynamic> toJson() =>
      _$GetDataPointsOnQuantification$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteDataPoint$Mutation$DataPoint extends JsonSerializable
    with EquatableMixin, DataPointMixin {
  DeleteDataPoint$Mutation$DataPoint();

  factory DeleteDataPoint$Mutation$DataPoint.fromJson(
          Map<String, dynamic> json) =>
      _$DeleteDataPoint$Mutation$DataPointFromJson(json);

  @override
  List<Object?> get props => [id, value, breakdowns];
  @override
  Map<String, dynamic> toJson() =>
      _$DeleteDataPoint$Mutation$DataPointToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteDataPoint$Mutation extends JsonSerializable with EquatableMixin {
  DeleteDataPoint$Mutation();

  factory DeleteDataPoint$Mutation.fromJson(Map<String, dynamic> json) =>
      _$DeleteDataPoint$MutationFromJson(json);

  DeleteDataPoint$Mutation$DataPoint? deleteDataPoint;

  @override
  List<Object?> get props => [deleteDataPoint];
  @override
  Map<String, dynamic> toJson() => _$DeleteDataPoint$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetEntityPage$Query$EntityListPage$PageInfo extends JsonSerializable
    with EquatableMixin, PageInfoMixin {
  GetEntityPage$Query$EntityListPage$PageInfo();

  factory GetEntityPage$Query$EntityListPage$PageInfo.fromJson(
          Map<String, dynamic> json) =>
      _$GetEntityPage$Query$EntityListPage$PageInfoFromJson(json);

  @override
  List<Object?> get props => [next, size];
  @override
  Map<String, dynamic> toJson() =>
      _$GetEntityPage$Query$EntityListPage$PageInfoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetEntityPage$Query$EntityListPage$Entity extends JsonSerializable
    with EquatableMixin, EntityMixin {
  GetEntityPage$Query$EntityListPage$Entity();

  factory GetEntityPage$Query$EntityListPage$Entity.fromJson(
          Map<String, dynamic> json) =>
      _$GetEntityPage$Query$EntityListPage$EntityFromJson(json);

  @override
  List<Object?> get props => [id, attributes];
  @override
  Map<String, dynamic> toJson() =>
      _$GetEntityPage$Query$EntityListPage$EntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetEntityPage$Query$EntityListPage extends JsonSerializable
    with EquatableMixin {
  GetEntityPage$Query$EntityListPage();

  factory GetEntityPage$Query$EntityListPage.fromJson(
          Map<String, dynamic> json) =>
      _$GetEntityPage$Query$EntityListPageFromJson(json);

  late GetEntityPage$Query$EntityListPage$PageInfo info;

  late List<GetEntityPage$Query$EntityListPage$Entity> values;

  @override
  List<Object?> get props => [info, values];
  @override
  Map<String, dynamic> toJson() =>
      _$GetEntityPage$Query$EntityListPageToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetEntityPage$Query extends JsonSerializable with EquatableMixin {
  GetEntityPage$Query();

  factory GetEntityPage$Query.fromJson(Map<String, dynamic> json) =>
      _$GetEntityPage$QueryFromJson(json);

  late GetEntityPage$Query$EntityListPage listEntity;

  @override
  List<Object?> get props => [listEntity];
  @override
  Map<String, dynamic> toJson() => _$GetEntityPage$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityMixin$Attribute$StringAttribute extends EntityMixin$Attribute
    with EquatableMixin {
  EntityMixin$Attribute$StringAttribute();

  factory EntityMixin$Attribute$StringAttribute.fromJson(
          Map<String, dynamic> json) =>
      _$EntityMixin$Attribute$StringAttributeFromJson(json);

  late String string;

  @override
  List<Object?> get props => [string];
  @override
  Map<String, dynamic> toJson() =>
      _$EntityMixin$Attribute$StringAttributeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityMixin$Attribute$BooleanAttribute extends EntityMixin$Attribute
    with EquatableMixin {
  EntityMixin$Attribute$BooleanAttribute();

  factory EntityMixin$Attribute$BooleanAttribute.fromJson(
          Map<String, dynamic> json) =>
      _$EntityMixin$Attribute$BooleanAttributeFromJson(json);

  late bool boolean;

  @override
  List<Object?> get props => [boolean];
  @override
  Map<String, dynamic> toJson() =>
      _$EntityMixin$Attribute$BooleanAttributeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityMixin$Attribute$DateTimeAttribute extends EntityMixin$Attribute
    with EquatableMixin {
  EntityMixin$Attribute$DateTimeAttribute();

  factory EntityMixin$Attribute$DateTimeAttribute.fromJson(
          Map<String, dynamic> json) =>
      _$EntityMixin$Attribute$DateTimeAttributeFromJson(json);

  late DateTime dateTime;

  @override
  List<Object?> get props => [dateTime];
  @override
  Map<String, dynamic> toJson() =>
      _$EntityMixin$Attribute$DateTimeAttributeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityMixin$Attribute$ReferenceAttribute extends EntityMixin$Attribute
    with EquatableMixin {
  EntityMixin$Attribute$ReferenceAttribute();

  factory EntityMixin$Attribute$ReferenceAttribute.fromJson(
          Map<String, dynamic> json) =>
      _$EntityMixin$Attribute$ReferenceAttributeFromJson(json);

  late String ref;

  @override
  List<Object?> get props => [ref];
  @override
  Map<String, dynamic> toJson() =>
      _$EntityMixin$Attribute$ReferenceAttributeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityMixin$Attribute$TupleAttribute extends EntityMixin$Attribute
    with EquatableMixin {
  EntityMixin$Attribute$TupleAttribute();

  factory EntityMixin$Attribute$TupleAttribute.fromJson(
          Map<String, dynamic> json) =>
      _$EntityMixin$Attribute$TupleAttributeFromJson(json);

  late String tuple;

  @override
  List<Object?> get props => [tuple];
  @override
  Map<String, dynamic> toJson() =>
      _$EntityMixin$Attribute$TupleAttributeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityMixin$Attribute$MultiStringAttribute extends EntityMixin$Attribute
    with EquatableMixin {
  EntityMixin$Attribute$MultiStringAttribute();

  factory EntityMixin$Attribute$MultiStringAttribute.fromJson(
          Map<String, dynamic> json) =>
      _$EntityMixin$Attribute$MultiStringAttributeFromJson(json);

  late List<String> strings;

  @override
  List<Object?> get props => [strings];
  @override
  Map<String, dynamic> toJson() =>
      _$EntityMixin$Attribute$MultiStringAttributeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityMixin$Attribute$MultiBooleanAttribute extends EntityMixin$Attribute
    with EquatableMixin {
  EntityMixin$Attribute$MultiBooleanAttribute();

  factory EntityMixin$Attribute$MultiBooleanAttribute.fromJson(
          Map<String, dynamic> json) =>
      _$EntityMixin$Attribute$MultiBooleanAttributeFromJson(json);

  late List<bool> booleans;

  @override
  List<Object?> get props => [booleans];
  @override
  Map<String, dynamic> toJson() =>
      _$EntityMixin$Attribute$MultiBooleanAttributeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityMixin$Attribute$MultiDateTimeAttribute extends EntityMixin$Attribute
    with EquatableMixin {
  EntityMixin$Attribute$MultiDateTimeAttribute();

  factory EntityMixin$Attribute$MultiDateTimeAttribute.fromJson(
          Map<String, dynamic> json) =>
      _$EntityMixin$Attribute$MultiDateTimeAttributeFromJson(json);

  late List<DateTime> dateTimes;

  @override
  List<Object?> get props => [dateTimes];
  @override
  Map<String, dynamic> toJson() =>
      _$EntityMixin$Attribute$MultiDateTimeAttributeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityMixin$Attribute$MultiReferenceAttribute
    extends EntityMixin$Attribute with EquatableMixin {
  EntityMixin$Attribute$MultiReferenceAttribute();

  factory EntityMixin$Attribute$MultiReferenceAttribute.fromJson(
          Map<String, dynamic> json) =>
      _$EntityMixin$Attribute$MultiReferenceAttributeFromJson(json);

  late List<String> refs;

  @override
  List<Object?> get props => [refs];
  @override
  Map<String, dynamic> toJson() =>
      _$EntityMixin$Attribute$MultiReferenceAttributeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityMixin$Attribute$MultiTupleAttribute extends EntityMixin$Attribute
    with EquatableMixin {
  EntityMixin$Attribute$MultiTupleAttribute();

  factory EntityMixin$Attribute$MultiTupleAttribute.fromJson(
          Map<String, dynamic> json) =>
      _$EntityMixin$Attribute$MultiTupleAttributeFromJson(json);

  late List<String> tuples;

  @override
  List<Object?> get props => [tuples];
  @override
  Map<String, dynamic> toJson() =>
      _$EntityMixin$Attribute$MultiTupleAttributeToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EntityMixin$Attribute extends JsonSerializable with EquatableMixin {
  EntityMixin$Attribute();

  factory EntityMixin$Attribute.fromJson(Map<String, dynamic> json) {
    switch (json['__typename'].toString()) {
      case r'StringAttribute':
        return EntityMixin$Attribute$StringAttribute.fromJson(json);
      case r'BooleanAttribute':
        return EntityMixin$Attribute$BooleanAttribute.fromJson(json);
      case r'DateTimeAttribute':
        return EntityMixin$Attribute$DateTimeAttribute.fromJson(json);
      case r'ReferenceAttribute':
        return EntityMixin$Attribute$ReferenceAttribute.fromJson(json);
      case r'TupleAttribute':
        return EntityMixin$Attribute$TupleAttribute.fromJson(json);
      case r'MultiStringAttribute':
        return EntityMixin$Attribute$MultiStringAttribute.fromJson(json);
      case r'MultiBooleanAttribute':
        return EntityMixin$Attribute$MultiBooleanAttribute.fromJson(json);
      case r'MultiDateTimeAttribute':
        return EntityMixin$Attribute$MultiDateTimeAttribute.fromJson(json);
      case r'MultiReferenceAttribute':
        return EntityMixin$Attribute$MultiReferenceAttribute.fromJson(json);
      case r'MultiTupleAttribute':
        return EntityMixin$Attribute$MultiTupleAttribute.fromJson(json);
      default:
    }
    return _$EntityMixin$AttributeFromJson(json);
  }

  @JsonKey(name: '__typename')
  String? $$typename;

  late String id;

  late String name;

  @override
  List<Object?> get props => [$$typename, id, name];
  @override
  Map<String, dynamic> toJson() {
    switch ($$typename) {
      case r'StringAttribute':
        return (this as EntityMixin$Attribute$StringAttribute).toJson();
      case r'BooleanAttribute':
        return (this as EntityMixin$Attribute$BooleanAttribute).toJson();
      case r'DateTimeAttribute':
        return (this as EntityMixin$Attribute$DateTimeAttribute).toJson();
      case r'ReferenceAttribute':
        return (this as EntityMixin$Attribute$ReferenceAttribute).toJson();
      case r'TupleAttribute':
        return (this as EntityMixin$Attribute$TupleAttribute).toJson();
      case r'MultiStringAttribute':
        return (this as EntityMixin$Attribute$MultiStringAttribute).toJson();
      case r'MultiBooleanAttribute':
        return (this as EntityMixin$Attribute$MultiBooleanAttribute).toJson();
      case r'MultiDateTimeAttribute':
        return (this as EntityMixin$Attribute$MultiDateTimeAttribute).toJson();
      case r'MultiReferenceAttribute':
        return (this as EntityMixin$Attribute$MultiReferenceAttribute).toJson();
      case r'MultiTupleAttribute':
        return (this as EntityMixin$Attribute$MultiTupleAttribute).toJson();
      default:
    }
    return _$EntityMixin$AttributeToJson(this);
  }
}

@JsonSerializable(explicitToJson: true)
class EntityFilter extends JsonSerializable with EquatableMixin {
  EntityFilter({this.attributes});

  factory EntityFilter.fromJson(Map<String, dynamic> json) =>
      _$EntityFilterFromJson(json);

  List<String>? attributes;

  @override
  List<Object?> get props => [attributes];
  @override
  Map<String, dynamic> toJson() => _$EntityFilterToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetEntity$Query$Entity extends JsonSerializable
    with EquatableMixin, EntityMixin {
  GetEntity$Query$Entity();

  factory GetEntity$Query$Entity.fromJson(Map<String, dynamic> json) =>
      _$GetEntity$Query$EntityFromJson(json);

  @override
  List<Object?> get props => [id, attributes];
  @override
  Map<String, dynamic> toJson() => _$GetEntity$Query$EntityToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetEntity$Query extends JsonSerializable with EquatableMixin {
  GetEntity$Query();

  factory GetEntity$Query.fromJson(Map<String, dynamic> json) =>
      _$GetEntity$QueryFromJson(json);

  GetEntity$Query$Entity? getEntity;

  @override
  List<Object?> get props => [getEntity];
  @override
  Map<String, dynamic> toJson() => _$GetEntity$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteBreakdown$Mutation$Breakdown extends JsonSerializable
    with EquatableMixin, BreakdownMixin {
  DeleteBreakdown$Mutation$Breakdown();

  factory DeleteBreakdown$Mutation$Breakdown.fromJson(
          Map<String, dynamic> json) =>
      _$DeleteBreakdown$Mutation$BreakdownFromJson(json);

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$DeleteBreakdown$Mutation$BreakdownToJson(this);
}

@JsonSerializable(explicitToJson: true)
class DeleteBreakdown$Mutation extends JsonSerializable with EquatableMixin {
  DeleteBreakdown$Mutation();

  factory DeleteBreakdown$Mutation.fromJson(Map<String, dynamic> json) =>
      _$DeleteBreakdown$MutationFromJson(json);

  DeleteBreakdown$Mutation$Breakdown? deleteBreakdown;

  @override
  List<Object?> get props => [deleteBreakdown];
  @override
  Map<String, dynamic> toJson() => _$DeleteBreakdown$MutationToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetBreakdown$Query$Breakdown extends JsonSerializable
    with EquatableMixin, BreakdownMixin {
  GetBreakdown$Query$Breakdown();

  factory GetBreakdown$Query$Breakdown.fromJson(Map<String, dynamic> json) =>
      _$GetBreakdown$Query$BreakdownFromJson(json);

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$GetBreakdown$Query$BreakdownToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetBreakdown$Query extends JsonSerializable with EquatableMixin {
  GetBreakdown$Query();

  factory GetBreakdown$Query.fromJson(Map<String, dynamic> json) =>
      _$GetBreakdown$QueryFromJson(json);

  GetBreakdown$Query$Breakdown? getBreakdown;

  @override
  List<Object?> get props => [getBreakdown];
  @override
  Map<String, dynamic> toJson() => _$GetBreakdown$QueryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class CreateBreakdownOnDataPointArguments extends JsonSerializable
    with EquatableMixin {
  CreateBreakdownOnDataPointArguments({
    required this.id,
    required this.parentDataPointId,
  });

  @override
  factory CreateBreakdownOnDataPointArguments.fromJson(
          Map<String, dynamic> json) =>
      _$CreateBreakdownOnDataPointArgumentsFromJson(json);

  late String id;

  late String parentDataPointId;

  @override
  List<Object?> get props => [id, parentDataPointId];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateBreakdownOnDataPointArgumentsToJson(this);
}

final CREATE_BREAKDOWN_ON_DATA_POINT_MUTATION_DOCUMENT_OPERATION_NAME =
    'CreateBreakdownOnDataPoint';
final CREATE_BREAKDOWN_ON_DATA_POINT_MUTATION_DOCUMENT =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateBreakdownOnDataPoint'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'parentDataPointId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createBreakdown'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'value'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'parent'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: 'id'),
                    value: VariableNode(
                        name: NameNode(value: 'parentDataPointId')),
                  )
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Breakdown'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'Breakdown'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Breakdown'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      )
    ]),
  ),
]);

class CreateBreakdownOnDataPointMutation extends GraphQLQuery<
    CreateBreakdownOnDataPoint$Mutation, CreateBreakdownOnDataPointArguments> {
  CreateBreakdownOnDataPointMutation({required this.variables});

  @override
  final DocumentNode document =
      CREATE_BREAKDOWN_ON_DATA_POINT_MUTATION_DOCUMENT;

  @override
  final String operationName =
      CREATE_BREAKDOWN_ON_DATA_POINT_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateBreakdownOnDataPointArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateBreakdownOnDataPoint$Mutation parse(Map<String, dynamic> json) =>
      CreateBreakdownOnDataPoint$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class MergeQuantificationArguments extends JsonSerializable
    with EquatableMixin {
  MergeQuantificationArguments({required this.value});

  @override
  factory MergeQuantificationArguments.fromJson(Map<String, dynamic> json) =>
      _$MergeQuantificationArgumentsFromJson(json);

  late QuantificationInput value;

  @override
  List<Object?> get props => [value];
  @override
  Map<String, dynamic> toJson() => _$MergeQuantificationArgumentsToJson(this);
}

final MERGE_QUANTIFICATION_MUTATION_DOCUMENT_OPERATION_NAME =
    'MergeQuantification';
final MERGE_QUANTIFICATION_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'MergeQuantification'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'value')),
        type: NamedTypeNode(
          name: NameNode(value: 'QuantificationInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'mergeQuantification'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'value'),
            value: VariableNode(name: NameNode(value: 'value')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Quantification'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'Quantification'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Quantification'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class MergeQuantificationMutation extends GraphQLQuery<
    MergeQuantification$Mutation, MergeQuantificationArguments> {
  MergeQuantificationMutation({required this.variables});

  @override
  final DocumentNode document = MERGE_QUANTIFICATION_MUTATION_DOCUMENT;

  @override
  final String operationName =
      MERGE_QUANTIFICATION_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final MergeQuantificationArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  MergeQuantification$Mutation parse(Map<String, dynamic> json) =>
      MergeQuantification$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class DeleteQuantificationArguments extends JsonSerializable
    with EquatableMixin {
  DeleteQuantificationArguments({required this.id});

  @override
  factory DeleteQuantificationArguments.fromJson(Map<String, dynamic> json) =>
      _$DeleteQuantificationArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$DeleteQuantificationArgumentsToJson(this);
}

final DELETE_QUANTIFICATION_MUTATION_DOCUMENT_OPERATION_NAME =
    'DeleteQuantification';
final DELETE_QUANTIFICATION_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteQuantification'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteQuantification'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Quantification'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'Quantification'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Quantification'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class DeleteQuantificationMutation extends GraphQLQuery<
    DeleteQuantification$Mutation, DeleteQuantificationArguments> {
  DeleteQuantificationMutation({required this.variables});

  @override
  final DocumentNode document = DELETE_QUANTIFICATION_MUTATION_DOCUMENT;

  @override
  final String operationName =
      DELETE_QUANTIFICATION_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final DeleteQuantificationArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  DeleteQuantification$Mutation parse(Map<String, dynamic> json) =>
      DeleteQuantification$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetQuantificationArguments extends JsonSerializable with EquatableMixin {
  GetQuantificationArguments({required this.id});

  @override
  factory GetQuantificationArguments.fromJson(Map<String, dynamic> json) =>
      _$GetQuantificationArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$GetQuantificationArgumentsToJson(this);
}

final GET_QUANTIFICATION_QUERY_DOCUMENT_OPERATION_NAME = 'GetQuantification';
final GET_QUANTIFICATION_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetQuantification'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getQuantification'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Quantification'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'Quantification'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Quantification'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class GetQuantificationQuery
    extends GraphQLQuery<GetQuantification$Query, GetQuantificationArguments> {
  GetQuantificationQuery({required this.variables});

  @override
  final DocumentNode document = GET_QUANTIFICATION_QUERY_DOCUMENT;

  @override
  final String operationName = GET_QUANTIFICATION_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetQuantificationArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetQuantification$Query parse(Map<String, dynamic> json) =>
      GetQuantification$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class OnUpdatedQuantificationArguments extends JsonSerializable
    with EquatableMixin {
  OnUpdatedQuantificationArguments({required this.id});

  @override
  factory OnUpdatedQuantificationArguments.fromJson(
          Map<String, dynamic> json) =>
      _$OnUpdatedQuantificationArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$OnUpdatedQuantificationArgumentsToJson(this);
}

final ON_UPDATED_QUANTIFICATION_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'OnUpdatedQuantification';
final ON_UPDATED_QUANTIFICATION_SUBSCRIPTION_DOCUMENT =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'OnUpdatedQuantification'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'onUpdatedQuantification'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Quantification'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'Quantification'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Quantification'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class OnUpdatedQuantificationSubscription extends GraphQLQuery<
    OnUpdatedQuantification$Subscription, OnUpdatedQuantificationArguments> {
  OnUpdatedQuantificationSubscription({required this.variables});

  @override
  final DocumentNode document = ON_UPDATED_QUANTIFICATION_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      ON_UPDATED_QUANTIFICATION_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final OnUpdatedQuantificationArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  OnUpdatedQuantification$Subscription parse(Map<String, dynamic> json) =>
      OnUpdatedQuantification$Subscription.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class OnDeletedQuantificationArguments extends JsonSerializable
    with EquatableMixin {
  OnDeletedQuantificationArguments({required this.id});

  @override
  factory OnDeletedQuantificationArguments.fromJson(
          Map<String, dynamic> json) =>
      _$OnDeletedQuantificationArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$OnDeletedQuantificationArgumentsToJson(this);
}

final ON_DELETED_QUANTIFICATION_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'OnDeletedQuantification';
final ON_DELETED_QUANTIFICATION_SUBSCRIPTION_DOCUMENT =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'OnDeletedQuantification'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'onDeletedQuantification'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Quantification'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'Quantification'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Quantification'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class OnDeletedQuantificationSubscription extends GraphQLQuery<
    OnDeletedQuantification$Subscription, OnDeletedQuantificationArguments> {
  OnDeletedQuantificationSubscription({required this.variables});

  @override
  final DocumentNode document = ON_DELETED_QUANTIFICATION_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      ON_DELETED_QUANTIFICATION_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final OnDeletedQuantificationArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  OnDeletedQuantification$Subscription parse(Map<String, dynamic> json) =>
      OnDeletedQuantification$Subscription.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateQuantificationArguments extends JsonSerializable
    with EquatableMixin {
  CreateQuantificationArguments({required this.value});

  @override
  factory CreateQuantificationArguments.fromJson(Map<String, dynamic> json) =>
      _$CreateQuantificationArgumentsFromJson(json);

  late QuantificationInput value;

  @override
  List<Object?> get props => [value];
  @override
  Map<String, dynamic> toJson() => _$CreateQuantificationArgumentsToJson(this);
}

final CREATE_QUANTIFICATION_MUTATION_DOCUMENT_OPERATION_NAME =
    'CreateQuantification';
final CREATE_QUANTIFICATION_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateQuantification'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'value')),
        type: NamedTypeNode(
          name: NameNode(value: 'QuantificationInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createQuantification'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'value'),
            value: VariableNode(name: NameNode(value: 'value')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Quantification'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'Quantification'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Quantification'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class CreateQuantificationMutation extends GraphQLQuery<
    CreateQuantification$Mutation, CreateQuantificationArguments> {
  CreateQuantificationMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_QUANTIFICATION_MUTATION_DOCUMENT;

  @override
  final String operationName =
      CREATE_QUANTIFICATION_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateQuantificationArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateQuantification$Mutation parse(Map<String, dynamic> json) =>
      CreateQuantification$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetQuantificationPageArguments extends JsonSerializable
    with EquatableMixin {
  GetQuantificationPageArguments({required this.parentBoundaryId});

  @override
  factory GetQuantificationPageArguments.fromJson(Map<String, dynamic> json) =>
      _$GetQuantificationPageArgumentsFromJson(json);

  late String parentBoundaryId;

  @override
  List<Object?> get props => [parentBoundaryId];
  @override
  Map<String, dynamic> toJson() => _$GetQuantificationPageArgumentsToJson(this);
}

final GET_QUANTIFICATION_PAGE_QUERY_DOCUMENT_OPERATION_NAME =
    'GetQuantificationPage';
final GET_QUANTIFICATION_PAGE_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetQuantificationPage'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'parentBoundaryId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getPlanetaryBoundary'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'parentBoundaryId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'quantifications'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Quantification'),
                directives: [],
              )
            ]),
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'Quantification'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Quantification'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class GetQuantificationPageQuery extends GraphQLQuery<
    GetQuantificationPage$Query, GetQuantificationPageArguments> {
  GetQuantificationPageQuery({required this.variables});

  @override
  final DocumentNode document = GET_QUANTIFICATION_PAGE_QUERY_DOCUMENT;

  @override
  final String operationName =
      GET_QUANTIFICATION_PAGE_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetQuantificationPageArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetQuantificationPage$Query parse(Map<String, dynamic> json) =>
      GetQuantificationPage$Query.fromJson(json);
}

final ON_CREATED_QUANTIFICATION_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'OnCreatedQuantification';
final ON_CREATED_QUANTIFICATION_SUBSCRIPTION_DOCUMENT =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'OnCreatedQuantification'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'onCreatedQuantification'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Quantification'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'Quantification'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Quantification'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class OnCreatedQuantificationSubscription extends GraphQLQuery<
    OnCreatedQuantification$Subscription, JsonSerializable> {
  OnCreatedQuantificationSubscription();

  @override
  final DocumentNode document = ON_CREATED_QUANTIFICATION_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      ON_CREATED_QUANTIFICATION_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  OnCreatedQuantification$Subscription parse(Map<String, dynamic> json) =>
      OnCreatedQuantification$Subscription.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class MergePlanetaryBoundaryArguments extends JsonSerializable
    with EquatableMixin {
  MergePlanetaryBoundaryArguments({required this.value});

  @override
  factory MergePlanetaryBoundaryArguments.fromJson(Map<String, dynamic> json) =>
      _$MergePlanetaryBoundaryArgumentsFromJson(json);

  late PlanetaryBoundaryInput value;

  @override
  List<Object?> get props => [value];
  @override
  Map<String, dynamic> toJson() =>
      _$MergePlanetaryBoundaryArgumentsToJson(this);
}

final MERGE_PLANETARY_BOUNDARY_MUTATION_DOCUMENT_OPERATION_NAME =
    'MergePlanetaryBoundary';
final MERGE_PLANETARY_BOUNDARY_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'MergePlanetaryBoundary'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'value')),
        type: NamedTypeNode(
          name: NameNode(value: 'PlanetaryBoundaryInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'mergePlanetaryBoundary'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'value'),
            value: VariableNode(name: NameNode(value: 'value')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PlanetaryBoundary'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'PlanetaryBoundary'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'PlanetaryBoundary'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'description'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class MergePlanetaryBoundaryMutation extends GraphQLQuery<
    MergePlanetaryBoundary$Mutation, MergePlanetaryBoundaryArguments> {
  MergePlanetaryBoundaryMutation({required this.variables});

  @override
  final DocumentNode document = MERGE_PLANETARY_BOUNDARY_MUTATION_DOCUMENT;

  @override
  final String operationName =
      MERGE_PLANETARY_BOUNDARY_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final MergePlanetaryBoundaryArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  MergePlanetaryBoundary$Mutation parse(Map<String, dynamic> json) =>
      MergePlanetaryBoundary$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class OnUpdatedPlanetaryBoundaryArguments extends JsonSerializable
    with EquatableMixin {
  OnUpdatedPlanetaryBoundaryArguments({required this.id});

  @override
  factory OnUpdatedPlanetaryBoundaryArguments.fromJson(
          Map<String, dynamic> json) =>
      _$OnUpdatedPlanetaryBoundaryArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$OnUpdatedPlanetaryBoundaryArgumentsToJson(this);
}

final ON_UPDATED_PLANETARY_BOUNDARY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'OnUpdatedPlanetaryBoundary';
final ON_UPDATED_PLANETARY_BOUNDARY_SUBSCRIPTION_DOCUMENT =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'OnUpdatedPlanetaryBoundary'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'onUpdatedPlanetaryBoundary'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PlanetaryBoundary'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'PlanetaryBoundary'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'PlanetaryBoundary'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'description'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class OnUpdatedPlanetaryBoundarySubscription extends GraphQLQuery<
    OnUpdatedPlanetaryBoundary$Subscription,
    OnUpdatedPlanetaryBoundaryArguments> {
  OnUpdatedPlanetaryBoundarySubscription({required this.variables});

  @override
  final DocumentNode document =
      ON_UPDATED_PLANETARY_BOUNDARY_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      ON_UPDATED_PLANETARY_BOUNDARY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final OnUpdatedPlanetaryBoundaryArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  OnUpdatedPlanetaryBoundary$Subscription parse(Map<String, dynamic> json) =>
      OnUpdatedPlanetaryBoundary$Subscription.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreatePlanetaryBoundaryArguments extends JsonSerializable
    with EquatableMixin {
  CreatePlanetaryBoundaryArguments({required this.value});

  @override
  factory CreatePlanetaryBoundaryArguments.fromJson(
          Map<String, dynamic> json) =>
      _$CreatePlanetaryBoundaryArgumentsFromJson(json);

  late PlanetaryBoundaryInput value;

  @override
  List<Object?> get props => [value];
  @override
  Map<String, dynamic> toJson() =>
      _$CreatePlanetaryBoundaryArgumentsToJson(this);
}

final CREATE_PLANETARY_BOUNDARY_MUTATION_DOCUMENT_OPERATION_NAME =
    'CreatePlanetaryBoundary';
final CREATE_PLANETARY_BOUNDARY_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreatePlanetaryBoundary'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'value')),
        type: NamedTypeNode(
          name: NameNode(value: 'PlanetaryBoundaryInput'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createPlanetaryBoundary'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'value'),
            value: VariableNode(name: NameNode(value: 'value')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PlanetaryBoundary'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'PlanetaryBoundary'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'PlanetaryBoundary'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'description'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class CreatePlanetaryBoundaryMutation extends GraphQLQuery<
    CreatePlanetaryBoundary$Mutation, CreatePlanetaryBoundaryArguments> {
  CreatePlanetaryBoundaryMutation({required this.variables});

  @override
  final DocumentNode document = CREATE_PLANETARY_BOUNDARY_MUTATION_DOCUMENT;

  @override
  final String operationName =
      CREATE_PLANETARY_BOUNDARY_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreatePlanetaryBoundaryArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreatePlanetaryBoundary$Mutation parse(Map<String, dynamic> json) =>
      CreatePlanetaryBoundary$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class OnDeletedPlanetaryBoundaryArguments extends JsonSerializable
    with EquatableMixin {
  OnDeletedPlanetaryBoundaryArguments({required this.id});

  @override
  factory OnDeletedPlanetaryBoundaryArguments.fromJson(
          Map<String, dynamic> json) =>
      _$OnDeletedPlanetaryBoundaryArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$OnDeletedPlanetaryBoundaryArgumentsToJson(this);
}

final ON_DELETED_PLANETARY_BOUNDARY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'OnDeletedPlanetaryBoundary';
final ON_DELETED_PLANETARY_BOUNDARY_SUBSCRIPTION_DOCUMENT =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'OnDeletedPlanetaryBoundary'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'onDeletedPlanetaryBoundary'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PlanetaryBoundary'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'PlanetaryBoundary'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'PlanetaryBoundary'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'description'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class OnDeletedPlanetaryBoundarySubscription extends GraphQLQuery<
    OnDeletedPlanetaryBoundary$Subscription,
    OnDeletedPlanetaryBoundaryArguments> {
  OnDeletedPlanetaryBoundarySubscription({required this.variables});

  @override
  final DocumentNode document =
      ON_DELETED_PLANETARY_BOUNDARY_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      ON_DELETED_PLANETARY_BOUNDARY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  final OnDeletedPlanetaryBoundaryArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  OnDeletedPlanetaryBoundary$Subscription parse(Map<String, dynamic> json) =>
      OnDeletedPlanetaryBoundary$Subscription.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class DeletePlanetaryBoundaryArguments extends JsonSerializable
    with EquatableMixin {
  DeletePlanetaryBoundaryArguments({required this.id});

  @override
  factory DeletePlanetaryBoundaryArguments.fromJson(
          Map<String, dynamic> json) =>
      _$DeletePlanetaryBoundaryArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() =>
      _$DeletePlanetaryBoundaryArgumentsToJson(this);
}

final DELETE_PLANETARY_BOUNDARY_MUTATION_DOCUMENT_OPERATION_NAME =
    'DeletePlanetaryBoundary';
final DELETE_PLANETARY_BOUNDARY_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeletePlanetaryBoundary'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deletePlanetaryBoundary'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PlanetaryBoundary'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'PlanetaryBoundary'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'PlanetaryBoundary'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'description'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class DeletePlanetaryBoundaryMutation extends GraphQLQuery<
    DeletePlanetaryBoundary$Mutation, DeletePlanetaryBoundaryArguments> {
  DeletePlanetaryBoundaryMutation({required this.variables});

  @override
  final DocumentNode document = DELETE_PLANETARY_BOUNDARY_MUTATION_DOCUMENT;

  @override
  final String operationName =
      DELETE_PLANETARY_BOUNDARY_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final DeletePlanetaryBoundaryArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  DeletePlanetaryBoundary$Mutation parse(Map<String, dynamic> json) =>
      DeletePlanetaryBoundary$Mutation.fromJson(json);
}

final ON_CREATED_PLANETARY_BOUNDARY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME =
    'OnCreatedPlanetaryBoundary';
final ON_CREATED_PLANETARY_BOUNDARY_SUBSCRIPTION_DOCUMENT =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.subscription,
    name: NameNode(value: 'OnCreatedPlanetaryBoundary'),
    variableDefinitions: [],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'onCreatedPlanetaryBoundary'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PlanetaryBoundary'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'PlanetaryBoundary'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'PlanetaryBoundary'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'description'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class OnCreatedPlanetaryBoundarySubscription extends GraphQLQuery<
    OnCreatedPlanetaryBoundary$Subscription, JsonSerializable> {
  OnCreatedPlanetaryBoundarySubscription();

  @override
  final DocumentNode document =
      ON_CREATED_PLANETARY_BOUNDARY_SUBSCRIPTION_DOCUMENT;

  @override
  final String operationName =
      ON_CREATED_PLANETARY_BOUNDARY_SUBSCRIPTION_DOCUMENT_OPERATION_NAME;

  @override
  List<Object?> get props => [document, operationName];
  @override
  OnCreatedPlanetaryBoundary$Subscription parse(Map<String, dynamic> json) =>
      OnCreatedPlanetaryBoundary$Subscription.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetPlanetaryBoundaryPageArguments extends JsonSerializable
    with EquatableMixin {
  GetPlanetaryBoundaryPageArguments({
    required this.page,
    required this.size,
  });

  @override
  factory GetPlanetaryBoundaryPageArguments.fromJson(
          Map<String, dynamic> json) =>
      _$GetPlanetaryBoundaryPageArgumentsFromJson(json);

  late int page;

  late int size;

  @override
  List<Object?> get props => [page, size];
  @override
  Map<String, dynamic> toJson() =>
      _$GetPlanetaryBoundaryPageArgumentsToJson(this);
}

final GET_PLANETARY_BOUNDARY_PAGE_QUERY_DOCUMENT_OPERATION_NAME =
    'GetPlanetaryBoundaryPage';
final GET_PLANETARY_BOUNDARY_PAGE_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetPlanetaryBoundaryPage'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'size')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'listPlanetaryBoundary'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'number'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'size'),
                value: VariableNode(name: NameNode(value: 'size')),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'info'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'PageInfo'),
                directives: [],
              )
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'values'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'PlanetaryBoundary'),
                directives: [],
              )
            ]),
          ),
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'PageInfo'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'PageInfo'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'next'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'size'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'PlanetaryBoundary'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'PlanetaryBoundary'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'description'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class GetPlanetaryBoundaryPageQuery extends GraphQLQuery<
    GetPlanetaryBoundaryPage$Query, GetPlanetaryBoundaryPageArguments> {
  GetPlanetaryBoundaryPageQuery({required this.variables});

  @override
  final DocumentNode document = GET_PLANETARY_BOUNDARY_PAGE_QUERY_DOCUMENT;

  @override
  final String operationName =
      GET_PLANETARY_BOUNDARY_PAGE_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetPlanetaryBoundaryPageArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetPlanetaryBoundaryPage$Query parse(Map<String, dynamic> json) =>
      GetPlanetaryBoundaryPage$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetPlanetaryBoundaryArguments extends JsonSerializable
    with EquatableMixin {
  GetPlanetaryBoundaryArguments({required this.id});

  @override
  factory GetPlanetaryBoundaryArguments.fromJson(Map<String, dynamic> json) =>
      _$GetPlanetaryBoundaryArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$GetPlanetaryBoundaryArgumentsToJson(this);
}

final GET_PLANETARY_BOUNDARY_QUERY_DOCUMENT_OPERATION_NAME =
    'GetPlanetaryBoundary';
final GET_PLANETARY_BOUNDARY_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetPlanetaryBoundary'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getPlanetaryBoundary'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'PlanetaryBoundary'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'PlanetaryBoundary'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'PlanetaryBoundary'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'name'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'description'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class GetPlanetaryBoundaryQuery extends GraphQLQuery<GetPlanetaryBoundary$Query,
    GetPlanetaryBoundaryArguments> {
  GetPlanetaryBoundaryQuery({required this.variables});

  @override
  final DocumentNode document = GET_PLANETARY_BOUNDARY_QUERY_DOCUMENT;

  @override
  final String operationName =
      GET_PLANETARY_BOUNDARY_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetPlanetaryBoundaryArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetPlanetaryBoundary$Query parse(Map<String, dynamic> json) =>
      GetPlanetaryBoundary$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetDataPointArguments extends JsonSerializable with EquatableMixin {
  GetDataPointArguments({required this.id});

  @override
  factory GetDataPointArguments.fromJson(Map<String, dynamic> json) =>
      _$GetDataPointArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$GetDataPointArgumentsToJson(this);
}

final GET_DATA_POINT_QUERY_DOCUMENT_OPERATION_NAME = 'GetDataPoint';
final GET_DATA_POINT_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetDataPoint'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getDataPoint'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'DataPoint'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'DataPoint'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'DataPoint'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'value'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'breakdowns'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      ),
    ]),
  ),
]);

class GetDataPointQuery
    extends GraphQLQuery<GetDataPoint$Query, GetDataPointArguments> {
  GetDataPointQuery({required this.variables});

  @override
  final DocumentNode document = GET_DATA_POINT_QUERY_DOCUMENT;

  @override
  final String operationName = GET_DATA_POINT_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetDataPointArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetDataPoint$Query parse(Map<String, dynamic> json) =>
      GetDataPoint$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class CreateDataPointOnQuantificationArguments extends JsonSerializable
    with EquatableMixin {
  CreateDataPointOnQuantificationArguments({
    required this.id,
    required this.value,
    required this.parentQuantificationId,
  });

  @override
  factory CreateDataPointOnQuantificationArguments.fromJson(
          Map<String, dynamic> json) =>
      _$CreateDataPointOnQuantificationArgumentsFromJson(json);

  late String id;

  late double value;

  late String parentQuantificationId;

  @override
  List<Object?> get props => [id, value, parentQuantificationId];
  @override
  Map<String, dynamic> toJson() =>
      _$CreateDataPointOnQuantificationArgumentsToJson(this);
}

final CREATE_DATA_POINT_ON_QUANTIFICATION_MUTATION_DOCUMENT_OPERATION_NAME =
    'CreateDataPointOnQuantification';
final CREATE_DATA_POINT_ON_QUANTIFICATION_MUTATION_DOCUMENT =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'CreateDataPointOnQuantification'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'value')),
        type: NamedTypeNode(
          name: NameNode(value: 'Float'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'parentQuantificationId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'createDataPoint'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'value'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'id')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'value'),
                value: VariableNode(name: NameNode(value: 'value')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'quantifications'),
                value: ListValueNode(values: [
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'id'),
                      value: VariableNode(
                          name: NameNode(value: 'parentQuantificationId')),
                    )
                  ])
                ]),
              ),
            ]),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'DataPoint'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'DataPoint'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'DataPoint'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'value'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'breakdowns'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      ),
    ]),
  ),
]);

class CreateDataPointOnQuantificationMutation extends GraphQLQuery<
    CreateDataPointOnQuantification$Mutation,
    CreateDataPointOnQuantificationArguments> {
  CreateDataPointOnQuantificationMutation({required this.variables});

  @override
  final DocumentNode document =
      CREATE_DATA_POINT_ON_QUANTIFICATION_MUTATION_DOCUMENT;

  @override
  final String operationName =
      CREATE_DATA_POINT_ON_QUANTIFICATION_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final CreateDataPointOnQuantificationArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  CreateDataPointOnQuantification$Mutation parse(Map<String, dynamic> json) =>
      CreateDataPointOnQuantification$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetDataPointsOnQuantificationArguments extends JsonSerializable
    with EquatableMixin {
  GetDataPointsOnQuantificationArguments(
      {required this.parentQuantificationId});

  @override
  factory GetDataPointsOnQuantificationArguments.fromJson(
          Map<String, dynamic> json) =>
      _$GetDataPointsOnQuantificationArgumentsFromJson(json);

  late String parentQuantificationId;

  @override
  List<Object?> get props => [parentQuantificationId];
  @override
  Map<String, dynamic> toJson() =>
      _$GetDataPointsOnQuantificationArgumentsToJson(this);
}

final GET_DATA_POINTS_ON_QUANTIFICATION_QUERY_DOCUMENT_OPERATION_NAME =
    'GetDataPointsOnQuantification';
final GET_DATA_POINTS_ON_QUANTIFICATION_QUERY_DOCUMENT =
    DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetDataPointsOnQuantification'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'parentQuantificationId')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getQuantification'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value:
                VariableNode(name: NameNode(value: 'parentQuantificationId')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'dataPoints'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'DataPoint'),
                directives: [],
              )
            ]),
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'DataPoint'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'DataPoint'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'value'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'breakdowns'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      ),
    ]),
  ),
]);

class GetDataPointsOnQuantificationQuery extends GraphQLQuery<
    GetDataPointsOnQuantification$Query,
    GetDataPointsOnQuantificationArguments> {
  GetDataPointsOnQuantificationQuery({required this.variables});

  @override
  final DocumentNode document =
      GET_DATA_POINTS_ON_QUANTIFICATION_QUERY_DOCUMENT;

  @override
  final String operationName =
      GET_DATA_POINTS_ON_QUANTIFICATION_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetDataPointsOnQuantificationArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetDataPointsOnQuantification$Query parse(Map<String, dynamic> json) =>
      GetDataPointsOnQuantification$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class DeleteDataPointArguments extends JsonSerializable with EquatableMixin {
  DeleteDataPointArguments({required this.id});

  @override
  factory DeleteDataPointArguments.fromJson(Map<String, dynamic> json) =>
      _$DeleteDataPointArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$DeleteDataPointArgumentsToJson(this);
}

final DELETE_DATA_POINT_MUTATION_DOCUMENT_OPERATION_NAME = 'DeleteDataPoint';
final DELETE_DATA_POINT_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteDataPoint'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteDataPoint'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'DataPoint'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'DataPoint'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'DataPoint'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'value'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'breakdowns'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          )
        ]),
      ),
    ]),
  ),
]);

class DeleteDataPointMutation
    extends GraphQLQuery<DeleteDataPoint$Mutation, DeleteDataPointArguments> {
  DeleteDataPointMutation({required this.variables});

  @override
  final DocumentNode document = DELETE_DATA_POINT_MUTATION_DOCUMENT;

  @override
  final String operationName =
      DELETE_DATA_POINT_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final DeleteDataPointArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  DeleteDataPoint$Mutation parse(Map<String, dynamic> json) =>
      DeleteDataPoint$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetEntityPageArguments extends JsonSerializable with EquatableMixin {
  GetEntityPageArguments({
    this.filter,
    required this.page,
    required this.size,
  });

  @override
  factory GetEntityPageArguments.fromJson(Map<String, dynamic> json) =>
      _$GetEntityPageArgumentsFromJson(json);

  final EntityFilter? filter;

  late int page;

  late int size;

  @override
  List<Object?> get props => [filter, page, size];
  @override
  Map<String, dynamic> toJson() => _$GetEntityPageArgumentsToJson(this);
}

final GET_ENTITY_PAGE_QUERY_DOCUMENT_OPERATION_NAME = 'GetEntityPage';
final GET_ENTITY_PAGE_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetEntityPage'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'filter')),
        type: NamedTypeNode(
          name: NameNode(value: 'EntityFilter'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'page')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'size')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'listEntity'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'filter'),
            value: VariableNode(name: NameNode(value: 'filter')),
          ),
          ArgumentNode(
            name: NameNode(value: 'page'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'number'),
                value: VariableNode(name: NameNode(value: 'page')),
              ),
              ObjectFieldNode(
                name: NameNode(value: 'size'),
                value: VariableNode(name: NameNode(value: 'size')),
              ),
            ]),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'info'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'PageInfo'),
                directives: [],
              )
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'values'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FragmentSpreadNode(
                name: NameNode(value: 'Entity'),
                directives: [],
              )
            ]),
          ),
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'PageInfo'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'PageInfo'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'next'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'size'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'Entity'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Entity'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'attributes'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'StringAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'string'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'BooleanAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'boolean'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'DateTimeAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'dateTime'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReferenceAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'ref'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'TupleAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'tuple'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'MultiStringAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'strings'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'MultiBooleanAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'booleans'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'MultiDateTimeAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'dateTimes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'MultiReferenceAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'refs'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'MultiTupleAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'tuples'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
        ]),
      ),
    ]),
  ),
]);

class GetEntityPageQuery
    extends GraphQLQuery<GetEntityPage$Query, GetEntityPageArguments> {
  GetEntityPageQuery({required this.variables});

  @override
  final DocumentNode document = GET_ENTITY_PAGE_QUERY_DOCUMENT;

  @override
  final String operationName = GET_ENTITY_PAGE_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetEntityPageArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetEntityPage$Query parse(Map<String, dynamic> json) =>
      GetEntityPage$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetEntityArguments extends JsonSerializable with EquatableMixin {
  GetEntityArguments({required this.id});

  @override
  factory GetEntityArguments.fromJson(Map<String, dynamic> json) =>
      _$GetEntityArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$GetEntityArgumentsToJson(this);
}

final GET_ENTITY_QUERY_DOCUMENT_OPERATION_NAME = 'GetEntity';
final GET_ENTITY_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetEntity'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getEntity'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Entity'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'Entity'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Entity'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
      FieldNode(
        name: NameNode(value: 'attributes'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'StringAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'string'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'BooleanAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'boolean'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'DateTimeAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'dateTime'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'ReferenceAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'ref'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'TupleAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'tuple'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'MultiStringAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'strings'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'MultiBooleanAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'booleans'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'MultiDateTimeAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'dateTimes'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'MultiReferenceAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'refs'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
          InlineFragmentNode(
            typeCondition: TypeConditionNode(
                on: NamedTypeNode(
              name: NameNode(value: 'MultiTupleAttribute'),
              isNonNull: false,
            )),
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'tuples'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              )
            ]),
          ),
        ]),
      ),
    ]),
  ),
]);

class GetEntityQuery extends GraphQLQuery<GetEntity$Query, GetEntityArguments> {
  GetEntityQuery({required this.variables});

  @override
  final DocumentNode document = GET_ENTITY_QUERY_DOCUMENT;

  @override
  final String operationName = GET_ENTITY_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetEntityArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetEntity$Query parse(Map<String, dynamic> json) =>
      GetEntity$Query.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class DeleteBreakdownArguments extends JsonSerializable with EquatableMixin {
  DeleteBreakdownArguments({required this.id});

  @override
  factory DeleteBreakdownArguments.fromJson(Map<String, dynamic> json) =>
      _$DeleteBreakdownArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$DeleteBreakdownArgumentsToJson(this);
}

final DELETE_BREAKDOWN_MUTATION_DOCUMENT_OPERATION_NAME = 'DeleteBreakdown';
final DELETE_BREAKDOWN_MUTATION_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.mutation,
    name: NameNode(value: 'DeleteBreakdown'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'deleteBreakdown'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Breakdown'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'Breakdown'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Breakdown'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      )
    ]),
  ),
]);

class DeleteBreakdownMutation
    extends GraphQLQuery<DeleteBreakdown$Mutation, DeleteBreakdownArguments> {
  DeleteBreakdownMutation({required this.variables});

  @override
  final DocumentNode document = DELETE_BREAKDOWN_MUTATION_DOCUMENT;

  @override
  final String operationName =
      DELETE_BREAKDOWN_MUTATION_DOCUMENT_OPERATION_NAME;

  @override
  final DeleteBreakdownArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  DeleteBreakdown$Mutation parse(Map<String, dynamic> json) =>
      DeleteBreakdown$Mutation.fromJson(json);
}

@JsonSerializable(explicitToJson: true)
class GetBreakdownArguments extends JsonSerializable with EquatableMixin {
  GetBreakdownArguments({required this.id});

  @override
  factory GetBreakdownArguments.fromJson(Map<String, dynamic> json) =>
      _$GetBreakdownArgumentsFromJson(json);

  late String id;

  @override
  List<Object?> get props => [id];
  @override
  Map<String, dynamic> toJson() => _$GetBreakdownArgumentsToJson(this);
}

final GET_BREAKDOWN_QUERY_DOCUMENT_OPERATION_NAME = 'GetBreakdown';
final GET_BREAKDOWN_QUERY_DOCUMENT = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'GetBreakdown'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'ID'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'getBreakdown'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FragmentSpreadNode(
            name: NameNode(value: 'Breakdown'),
            directives: [],
          )
        ]),
      )
    ]),
  ),
  FragmentDefinitionNode(
    name: NameNode(value: 'Breakdown'),
    typeCondition: TypeConditionNode(
        on: NamedTypeNode(
      name: NameNode(value: 'Breakdown'),
      isNonNull: false,
    )),
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'id'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      )
    ]),
  ),
]);

class GetBreakdownQuery
    extends GraphQLQuery<GetBreakdown$Query, GetBreakdownArguments> {
  GetBreakdownQuery({required this.variables});

  @override
  final DocumentNode document = GET_BREAKDOWN_QUERY_DOCUMENT;

  @override
  final String operationName = GET_BREAKDOWN_QUERY_DOCUMENT_OPERATION_NAME;

  @override
  final GetBreakdownArguments variables;

  @override
  List<Object?> get props => [document, operationName, variables];
  @override
  GetBreakdown$Query parse(Map<String, dynamic> json) =>
      GetBreakdown$Query.fromJson(json);
}

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

mixin Entity on JsonSerializable, EquatableMixin {
  // volatile, not present in json, which is only used as input object (without id)
  late String id;

  String? session;

  @override
  List<Object?> get props => [id, session, ...super.props];
}

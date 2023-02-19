import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

mixin Entity on JsonSerializable, EquatableMixin {
  // volatile, not present in json, which is only used as input object (without id)
  String? id;

  @override
  List<Object?> get props => [id, ...super.props];
}

import 'package:json_annotation/json_annotation.dart';

part 'unit.g.dart';

@JsonSerializable()
class UnitModel {
  final String name, id;

  UnitModel({required this.name, required this.id});

  factory UnitModel.fromJson(Map<String, dynamic> json) => _$UnitModelFromJson(json);
}

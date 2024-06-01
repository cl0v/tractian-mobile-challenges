import 'package:json_annotation/json_annotation.dart';

part 'content.g.dart';

enum ContentType { location, asset, component }

class ContentModel {
  const ContentModel();

  factory ContentModel.fromType(ContentType type, Map<String, dynamic> data) {
    switch (type) {
      case ContentType.location:
        return LocationContentModel.fromJson(data);
      case ContentType.asset:
        return AssetContentModel.fromJson(data);
      case ContentType.component:
        return ComponentContentModel.fromJson(data);
      default:
        return AssetContentModel.fromJson(data);
    }
  }
}

/*
{id: 656733b1664c41001e91d9ed, name: Machinery house, parentId: null}
*/
@JsonSerializable()
class LocationContentModel extends ContentModel {
  final String id, name;
  final String? parentId;

  const LocationContentModel({
    required this.id,
    required this.name,
    required this.parentId,
  });

  factory LocationContentModel.fromJson(Map<String, dynamic> json) =>
      _$LocationContentModelFromJson(json);
}

/*
{id: 656a07bbf2d4a1001e2144c2, locationId: 656a07b3f2d4a1001e2144bf, name: CONVEYOR
BELT ASSEMBLY, parentId: null, sensorType: null, status: null},
*/
@JsonSerializable()
class AssetContentModel extends ContentModel {
  final String id, locationId, name;
  final String? parentId, sensorType, status;

  const AssetContentModel({
    required this.id,
    required this.locationId,
    required this.name,
    this.parentId,
    this.sensorType,
    this.status,
  });

  factory AssetContentModel.fromJson(Map<String, dynamic> json) =>
      _$AssetContentModelFromJson(json);
}

/*
{gatewayId: VZO694, id: 656733921f4664001f295e9b,
locationId: null, name: Motor H12D-Stage 3, parentId: 656734968eb037001e474d5a,
sensorId: SIF016, sensorType: vibration, status: alert}
*/
@JsonSerializable()
class ComponentContentModel extends ContentModel {
  final String gatewayId, id, name, parentId, sensorId, sensorType, status;

  final String? locationId;

  const ComponentContentModel({
    required this.gatewayId,
    required this.id,
    this.locationId,
    required this.name,
    required this.parentId,
    required this.sensorId,
    required this.sensorType,
    required this.status,
  });

  factory ComponentContentModel.fromJson(Map<String, dynamic> json) =>
      _$ComponentContentModelFromJson(json);
}

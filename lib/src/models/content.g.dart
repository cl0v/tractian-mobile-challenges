// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationContentModel _$LocationContentModelFromJson(
        Map<String, dynamic> json) =>
    LocationContentModel(
      id: json['id'] as String,
      name: json['name'] as String,
      parentId: json['parentId'] as String?,
    );

Map<String, dynamic> _$LocationContentModelToJson(
        LocationContentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'parentId': instance.parentId,
    };

AssetContentModel _$AssetContentModelFromJson(Map<String, dynamic> json) =>
    AssetContentModel(
      id: json['id'] as String,
      locationId: json['locationId'] as String,
      name: json['name'] as String,
      parentId: json['parentId'] as String?,
      sensorType: json['sensorType'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$AssetContentModelToJson(AssetContentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'locationId': instance.locationId,
      'name': instance.name,
      'parentId': instance.parentId,
      'sensorType': instance.sensorType,
      'status': instance.status,
    };

ComponentContentModel _$ComponentContentModelFromJson(
        Map<String, dynamic> json) =>
    ComponentContentModel(
      gatewayId: json['gatewayId'] as String,
      id: json['id'] as String,
      locationId: json['locationId'] as String?,
      name: json['name'] as String,
      parentId: json['parentId'] as String,
      sensorId: json['sensorId'] as String,
      sensorType: json['sensorType'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$ComponentContentModelToJson(
        ComponentContentModel instance) =>
    <String, dynamic>{
      'gatewayId': instance.gatewayId,
      'id': instance.id,
      'name': instance.name,
      'parentId': instance.parentId,
      'sensorId': instance.sensorId,
      'sensorType': instance.sensorType,
      'status': instance.status,
      'locationId': instance.locationId,
    };

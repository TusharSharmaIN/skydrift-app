// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DriftDto _$DriftDtoFromJson(Map<String, dynamic> json) => _DriftDto(
  id: json['id'] as String,
  imageUrl: json['imageUrl'] as String,
  imaginedShape: json['imaginedShape'] as String,
  cloudType: json['cloudType'] as String,
  weatherForecast: json['weatherForecast'] as String,
  poeticLore: json['poeticLore'] as String,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$DriftDtoToJson(_DriftDto instance) => <String, dynamic>{
  'id': instance.id,
  'imageUrl': instance.imageUrl,
  'imaginedShape': instance.imaginedShape,
  'cloudType': instance.cloudType,
  'weatherForecast': instance.weatherForecast,
  'poeticLore': instance.poeticLore,
  'createdAt': instance.createdAt.toIso8601String(),
};

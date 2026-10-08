import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:skydrift/features/drift/domain/entities/drift_entity.dart';

part 'drift_dto.freezed.dart';
part 'drift_dto.g.dart';

@freezed
abstract class DriftDto with _$DriftDto {
  const DriftDto._();

  const factory DriftDto({
    required String id,
    required String imageUrl,
    required String imaginedShape,
    required String cloudType,
    required String weatherForecast,
    required String poeticLore,
    required DateTime createdAt,
  }) = _DriftDto;

  DriftEntity toDomain() => DriftEntity(
    id: id,
    imageUrl: imageUrl,
    imaginedShape: imaginedShape,
    cloudType: cloudType,
    weatherForecast: weatherForecast,
    poeticLore: poeticLore,
    createdAt: createdAt,
  );

  factory DriftDto.fromDomain(DriftEntity entity) => DriftDto(
    id: entity.id,
    imageUrl: entity.imageUrl,
    imaginedShape: entity.imaginedShape,
    cloudType: entity.cloudType,
    weatherForecast: entity.weatherForecast,
    poeticLore: entity.poeticLore,
    createdAt: entity.createdAt,
  );

  factory DriftDto.fromJson(Map<String, dynamic> json) =>
      _$DriftDtoFromJson(json);
}

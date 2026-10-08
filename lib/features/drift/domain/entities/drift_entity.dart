import 'package:freezed_annotation/freezed_annotation.dart';

part 'drift_entity.freezed.dart';

@freezed
abstract class DriftEntity with _$DriftEntity {
  const DriftEntity._();

  const factory DriftEntity({
    required String id,
    required String imageUrl,
    required String imaginedShape,
    required String cloudType,
    required String weatherForecast,
    required String poeticLore,
    required DateTime createdAt,
  }) = _DriftEntity;

  factory DriftEntity.empty() => DriftEntity(
    id: '',
    imageUrl: '',
    imaginedShape: '',
    cloudType: '',
    weatherForecast: '',
    poeticLore: '',
    createdAt: DateTime.fromMillisecondsSinceEpoch(0),
  );

  bool get isEmpty => id.isEmpty;
  bool get isNotEmpty => !isEmpty;
}

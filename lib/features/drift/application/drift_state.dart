part of 'drift_bloc.dart';

@freezed
abstract class DriftState with _$DriftState {
  const DriftState._();

  const factory DriftState({
    required bool isAnalyzing,
    required bool isLoadingGallery,
    required DriftEntity analyzedDrift,
    required List<DriftEntity> gallery,
    required Option<Either<ApiFailure, dynamic>> apiFailureOrSuccess,
  }) = _DriftState;

  factory DriftState.initial() => DriftState(
    isAnalyzing: false,
    isLoadingGallery: false,
    analyzedDrift: DriftEntity.empty(),
    gallery: const <DriftEntity>[],
    apiFailureOrSuccess: none(),
  );

  String get failureMessage => apiFailureOrSuccess.fold(
    () => '',
    (either) =>
        either.fold((failure) => failure.failureMessage.message, (_) => ''),
  );
}

part of 'drift_bloc.dart';

@freezed
class DriftEvent with _$DriftEvent {
  const factory DriftEvent.analyzeCloudRequested(File image) =
      AnalyzeCloudRequested;
  const factory DriftEvent.galleryFetchRequested() = GalleryFetchRequested;
  const factory DriftEvent.driftReset() = DriftReset;
}

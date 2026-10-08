part of 'sky_camera_bloc.dart';

@freezed
abstract class SkyCameraState with _$SkyCameraState {
  const SkyCameraState._();

  const factory SkyCameraState({
    required bool isReady,
    required bool isBusy,
    required bool canFlip,
    required String errorMessage,
    required String capturedPath,
  }) = _SkyCameraState;

  factory SkyCameraState.initial() => const SkyCameraState(
    isReady: false,
    isBusy: false,
    canFlip: false,
    errorMessage: '',
    capturedPath: '',
  );
}

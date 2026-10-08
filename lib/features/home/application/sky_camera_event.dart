part of 'sky_camera_bloc.dart';

@freezed
class SkyCameraEvent with _$SkyCameraEvent {
  const factory SkyCameraEvent.cameraStarted() = CameraStarted;
  const factory SkyCameraEvent.cameraFlipped() = CameraFlipped;
  const factory SkyCameraEvent.photoCaptureRequested() = PhotoCaptureRequested;
}

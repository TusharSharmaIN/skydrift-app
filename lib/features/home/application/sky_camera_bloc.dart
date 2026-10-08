import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:skydrift/core/constants/strings_constant.dart';

part 'sky_camera_event.dart';
part 'sky_camera_state.dart';
part 'sky_camera_bloc.freezed.dart';

@injectable
class SkyCameraBloc extends Bloc<SkyCameraEvent, SkyCameraState> {
  SkyCameraBloc() : super(SkyCameraState.initial()) {
    on<CameraStarted>(_onCameraStarted);
    on<CameraFlipped>(_onCameraFlipped);
    on<PhotoCaptureRequested>(_onPhotoCaptureRequested);
  }

  CameraController? _controller;
  List<CameraDescription> _cameras = const [];

  CameraController? get previewController => _controller;

  Future<void> _onCameraStarted(
    CameraStarted event,
    Emitter<SkyCameraState> emit,
  ) async {
    try {
      _cameras = await availableCameras();
      if (isClosed) {
        return;
      }
      if (_cameras.isEmpty) {
        emit(state.copyWith(errorMessage: StringsConstant.cameraNotFound));
        return;
      }
      final back = _cameras.firstWhere(
        (camera) => camera.lensDirection == CameraLensDirection.back,
        orElse: () => _cameras.first,
      );
      await _bind(back, emit);
    } on CameraException catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.description ?? StringsConstant.cameraOpenFailed,
        ),
      );
    } on PlatformException catch (_) {
      emit(state.copyWith(errorMessage: StringsConstant.cameraChannelFailed));
    }
  }

  Future<void> _onCameraFlipped(
    CameraFlipped event,
    Emitter<SkyCameraState> emit,
  ) async {
    if (_cameras.length < 2 || _controller == null || state.isBusy) {
      return;
    }
    final current = _controller!.description;
    final other = _cameras.firstWhere(
      (camera) => camera.lensDirection != current.lensDirection,
      orElse: () => current,
    );
    if (other == current) {
      return;
    }
    emit(state.copyWith(isBusy: true, errorMessage: ''));
    try {
      await _bind(other, emit);
    } on CameraException catch (e) {
      emit(
        state.copyWith(
          isBusy: false,
          errorMessage: e.description ?? StringsConstant.cameraSwitchFailed,
        ),
      );
    } on PlatformException catch (e) {
      emit(
        state.copyWith(
          isBusy: false,
          errorMessage: e.message ?? StringsConstant.cameraSwitchFailed,
        ),
      );
    }
  }

  Future<void> _onPhotoCaptureRequested(
    PhotoCaptureRequested event,
    Emitter<SkyCameraState> emit,
  ) async {
    final controller = _controller;
    if (controller == null || !controller.value.isInitialized || state.isBusy) {
      return;
    }
    emit(state.copyWith(isBusy: true, errorMessage: ''));
    try {
      final file = await controller.takePicture();
      if (isClosed) {
        return;
      }
      emit(state.copyWith(isBusy: false, capturedPath: file.path));
    } on CameraException catch (e) {
      emit(
        state.copyWith(
          isBusy: false,
          errorMessage: e.description ?? StringsConstant.cameraCaptureFailed,
        ),
      );
    }
  }

  Future<void> _bind(
    CameraDescription camera,
    Emitter<SkyCameraState> emit,
  ) async {
    final previous = _controller;
    final next = CameraController(
      camera,
      ResolutionPreset.high,
      enableAudio: false,
      imageFormatGroup: Platform.isIOS
          ? ImageFormatGroup.jpeg
          : ImageFormatGroup.yuv420,
    );
    _controller = next;
    await previous?.dispose();
    await next.initialize();
    if (isClosed) {
      await next.dispose();
      return;
    }
    emit(
      state.copyWith(
        isReady: true,
        isBusy: false,
        canFlip: _cameras.length > 1,
        errorMessage: '',
      ),
    );
  }

  @override
  Future<void> close() async {
    await _controller?.dispose();
    return super.close();
  }
}

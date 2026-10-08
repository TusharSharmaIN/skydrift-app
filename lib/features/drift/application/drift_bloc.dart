import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:skydrift/core/errors/api_failures.dart';
import 'package:skydrift/features/drift/domain/entities/drift_entity.dart';
import 'package:skydrift/features/drift/domain/repository/i_drift_repository.dart';

part 'drift_event.dart';
part 'drift_state.dart';
part 'drift_bloc.freezed.dart';

@lazySingleton
class DriftBloc extends Bloc<DriftEvent, DriftState> {
  DriftBloc({required this.driftRepository}) : super(DriftState.initial()) {
    on<AnalyzeCloudRequested>(_onAnalyzeCloudRequested);
    on<GalleryFetchRequested>(_onGalleryFetchRequested);
    on<DriftReset>(_onDriftReset);
  }

  final IDriftRepository driftRepository;

  Future<void> _onAnalyzeCloudRequested(
    AnalyzeCloudRequested event,
    Emitter<DriftState> emit,
  ) async {
    emit(
      state.copyWith(
        isAnalyzing: true,
        analyzedDrift: DriftEntity.empty(),
        apiFailureOrSuccess: none(),
      ),
    );
    final result = await driftRepository.analyzeCloud(event.image);
    result.fold(
      (failure) => emit(
        state.copyWith(
          isAnalyzing: false,
          apiFailureOrSuccess: some(left(failure)),
        ),
      ),
      (drift) => emit(
        state.copyWith(
          isAnalyzing: false,
          analyzedDrift: drift,
          apiFailureOrSuccess: none(),
        ),
      ),
    );
    if (result.isRight()) {
      await _loadGallery(emit);
    }
  }

  Future<void> _onGalleryFetchRequested(
    GalleryFetchRequested event,
    Emitter<DriftState> emit,
  ) async {
    await _loadGallery(emit);
  }

  Future<void> _onDriftReset(DriftReset event, Emitter<DriftState> emit) async {
    emit(
      state.copyWith(
        isAnalyzing: false,
        analyzedDrift: DriftEntity.empty(),
        apiFailureOrSuccess: none(),
      ),
    );
  }

  Future<void> _loadGallery(Emitter<DriftState> emit) async {
    emit(state.copyWith(isLoadingGallery: true, apiFailureOrSuccess: none()));
    final result = await driftRepository.getGallery();
    result.fold(
      (failure) => emit(
        state.copyWith(
          isLoadingGallery: false,
          apiFailureOrSuccess: some(left(failure)),
        ),
      ),
      (gallery) => emit(
        state.copyWith(
          isLoadingGallery: false,
          gallery: gallery,
          apiFailureOrSuccess: none(),
        ),
      ),
    );
  }
}

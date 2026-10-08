import 'dart:io';

import 'package:injectable/injectable.dart';

import 'package:skydrift/core/errors/exception_handler.dart';
import 'package:skydrift/features/drift/infrastructure/core/drift_api.dart';
import 'package:skydrift/features/drift/infrastructure/dtos/drift_dto.dart';

@lazySingleton
class DriftRemoteDataSource {
  DriftRemoteDataSource({
    required this.dataSourceExceptionHandler,
    required this.api,
  });

  final DataSourceExceptionHandler dataSourceExceptionHandler;
  final DriftApi api;

  Future<DriftDto> analyzeCloud(File imageFile) {
    return dataSourceExceptionHandler.handle(() => api.analyzeCloud(imageFile));
  }

  Future<List<DriftDto>> getGallery() {
    return dataSourceExceptionHandler.handle(api.getGallery);
  }
}

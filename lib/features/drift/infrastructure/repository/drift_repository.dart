import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:skydrift/core/errors/api_failures.dart';
import 'package:skydrift/core/network/safe_api_call.dart';
import 'package:skydrift/features/drift/domain/entities/drift_entity.dart';
import 'package:skydrift/features/drift/domain/repository/i_drift_repository.dart';
import 'package:skydrift/features/drift/infrastructure/data_source/drift_remote.dart';

@LazySingleton(as: IDriftRepository)
class DriftRepository implements IDriftRepository {
  DriftRepository({required this.driftRemoteDataSource});

  final DriftRemoteDataSource driftRemoteDataSource;

  @override
  Future<Either<ApiFailure, DriftEntity>> analyzeCloud(File imageFile) {
    return safeApiCall(() async {
      final dto = await driftRemoteDataSource.analyzeCloud(imageFile);
      return dto.toDomain();
    });
  }

  @override
  Future<Either<ApiFailure, List<DriftEntity>>> getGallery() {
    return safeApiCall(() async {
      final dtos = await driftRemoteDataSource.getGallery();
      return dtos.map((dto) => dto.toDomain()).toList();
    });
  }
}

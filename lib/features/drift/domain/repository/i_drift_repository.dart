import 'dart:io';

import 'package:dartz/dartz.dart';

import 'package:skydrift/core/errors/api_failures.dart';
import 'package:skydrift/features/drift/domain/entities/drift_entity.dart';

abstract class IDriftRepository {
  Future<Either<ApiFailure, DriftEntity>> analyzeCloud(File imageFile);

  Future<Either<ApiFailure, List<DriftEntity>>> getGallery();
}

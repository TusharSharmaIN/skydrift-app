import 'package:dartz/dartz.dart';
import 'package:skydrift/core/errors/api_failures.dart';
import 'package:skydrift/core/errors/failure_handler.dart';

/// Wraps any async data-layer call and maps exceptions to [ApiFailure].
Future<Either<ApiFailure, T>> safeApiCall<T>(Future<T> Function() call) async {
  try {
    final result = await call();
    return Right(result);
  } catch (error) {
    return Left(FailureHandler.handleFailure(error));
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:skydrift/core/errors/failure.dart';

part 'api_failures.freezed.dart';

@freezed
class ApiFailure with _$ApiFailure {
  const factory ApiFailure.other(String message) = _Other;
  const factory ApiFailure.serverError(String message) = _ServerError;
  const factory ApiFailure.poorConnection() = _PoorConnection;
  const factory ApiFailure.serverTimeout() = _ServerTimeout;
  const factory ApiFailure.authenticationFailed() = _AuthenticationFailed;
  const factory ApiFailure.forbidden(String message) = _Forbidden;
  const factory ApiFailure.notFound(String message) = _NotFound;
  const factory ApiFailure.validationError(String message) = _ValidationError;
  const factory ApiFailure.tooManyRequests() = _TooManyRequests;
}

extension ApiFailureExt on ApiFailure {
  Failure get failureMessage => map(
    other: (e) => Failure(e.message),
    serverError: (e) => Failure(e.message),
    poorConnection: (_) => const Failure('Poor internet connection'),
    serverTimeout: (_) => const Failure('Server timed out'),
    authenticationFailed: (_) => const Failure('Authentication failed'),
    forbidden: (e) => Failure('Access denied: ${e.message}'),
    notFound: (e) => Failure('Not found: ${e.message}'),
    validationError: (e) => Failure(e.message),
    tooManyRequests: (_) =>
        const Failure('Too many requests. Please try again later.'),
  );
}

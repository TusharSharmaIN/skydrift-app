import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';

import 'package:skydrift/core/errors/api_failures.dart';
import 'package:skydrift/core/errors/exceptions.dart';

class FailureHandler {
  static ApiFailure handleFailure(Object error) {
    return switch (error) {
      final ServerException e => ApiFailure.serverError(e.message),
      final CacheException e => ApiFailure.other(e.message),
      final NetworkException e => ApiFailure.other(e.message),
      AuthException() => const ApiFailure.authenticationFailed(),
      final OtherException e => ApiFailure.other(e.message),
      SocketException() => const ApiFailure.poorConnection(),
      TimeoutException() => const ApiFailure.serverTimeout(),
      final PlatformException e => ApiFailure.other('${e.message}'),
      final ApiFailure f => f,
      final DioException e => _fromDioException(e),
      _ => ApiFailure.other(error.toString()),
    };
  }

  static ApiFailure _fromDioException(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.transformTimeout:
        return const ApiFailure.serverTimeout();
      case DioExceptionType.connectionError:
        return const ApiFailure.poorConnection();
      case DioExceptionType.cancel:
        return const ApiFailure.other('Request was cancelled.');
      case DioExceptionType.badResponse:
        return _apiFailureFromHttpResponse(e);
      case DioExceptionType.badCertificate:
      case DioExceptionType.unknown:
        final parsed = _messageFromResponseData(e.response?.data);
        if (parsed != null) return ApiFailure.other(parsed);
        if (e.error is SocketException) {
          return const ApiFailure.poorConnection();
        }
        return ApiFailure.other(_userFacingDioMessage(e));
    }
  }

  static ApiFailure _apiFailureFromHttpResponse(DioException e) {
    final status = e.response?.statusCode ?? 0;
    final message = _resolvedErrorMessage(e);

    if (status == 401) return const ApiFailure.authenticationFailed();
    if (status == 403) return ApiFailure.forbidden(message);
    if (status == 404) return ApiFailure.notFound(message);
    if (status == 400 || status == 422) {
      return ApiFailure.validationError(message);
    }
    if (status == 429) return const ApiFailure.tooManyRequests();
    if (status >= 500) return ApiFailure.serverError(message);
    if (status >= 400) return ApiFailure.serverError(message);
    return ApiFailure.other(message);
  }

  static String _resolvedErrorMessage(DioException e) {
    return _messageFromResponseData(e.response?.data) ??
        _nonEmpty(e.response?.statusMessage) ??
        _userFacingDioMessage(e);
  }

  static String _userFacingDioMessage(DioException e) {
    return _nonEmpty(e.message) ?? 'Something went wrong. Please try again.';
  }

  static String? _nonEmpty(String? s) {
    final t = s?.trim();
    if (t == null || t.isEmpty) return null;
    return t;
  }

  static String? _messageFromResponseData(dynamic data) {
    if (data == null) return null;
    if (data is String) return _nonEmpty(data);

    if (data is Map) {
      final msg = data['message'];
      if (msg is String) {
        final out = _nonEmpty(msg);
        if (out != null) return out;
      }
    }

    return null;
  }
}

import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'package:skydrift/flavor_config/flavor_config.dart';

@module
abstract class InterceptorModule {
  @lazySingleton
  List<Interceptor> interceptors() => [ChuckerDioInterceptor()];
}

@lazySingleton
class HttpService {
  late Dio _dio;
  Dio get dio => _dio;

  HttpService({
    required FlavorConfig config,
    required List<Interceptor> interceptors,
  }) {
    _dio = Dio(
      BaseOptions(
        baseUrl: config.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
      ),
    );
    _dio.interceptors.addAll(interceptors);
    if (!config.isProd) {
      _dio.interceptors.add(
        PrettyDioLogger(
          requestBody: true,
          responseBody: true,
          requestHeader: true,
        ),
      );
    }
  }

  HttpService.mockDio(Dio dio) : _dio = dio;
}

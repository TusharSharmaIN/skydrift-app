import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:skydrift/core/errors/exception_handler.dart';
import 'package:skydrift/core/errors/exceptions.dart';
import 'package:skydrift/core/network/http_service.dart';
import 'package:skydrift/features/{{feature_name}}/infrastructure/core/{{feature_name}}_api.dart';

@lazySingleton
class {{feature_name.pascalCase()}}RemoteDataSource {
  {{feature_name.pascalCase()}}RemoteDataSource({
    required this.httpService,
    required this.dataSourceExceptionHandler,
    required this.api,
  });

  final HttpService httpService;
  final DataSourceExceptionHandler dataSourceExceptionHandler;
  final {{feature_name.pascalCase()}}Api api;

  void _exceptionChecker({required Response<dynamic> res}) {
    if (res.statusCode != 200 && res.statusCode != 201) {
      throw ServerException(
        code: res.statusCode ?? 0,
        message: res.statusMessage ?? 'Server error occurred',
      );
    }

    if (res.data == null ||
        res.data is! List && res.data is! Map<String, dynamic>) {
      throw ServerException(code: 500, message: 'Invalid response format');
    }

    if (res.data is Map<String, dynamic>) {
      if (res.data['error'] != null && res.data['error'].isNotEmpty) {
        throw ServerException(message: res.data['error']['message']);
      }
    }
  }
}

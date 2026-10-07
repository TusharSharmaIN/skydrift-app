import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import 'package:skydrift/core/network/http_service.dart';

part '{{feature_name}}_api.g.dart';

@RestApi()
abstract class {{feature_name.pascalCase()}}Api {
  factory {{feature_name.pascalCase()}}Api(Dio dio, {String baseUrl}) = _{{feature_name.pascalCase()}}Api;
}

@module
abstract class {{feature_name.pascalCase()}}ApiModule {
  @lazySingleton
  {{feature_name.pascalCase()}}Api {{feature_name.camelCase()}}Api(HttpService httpService) =>
      {{feature_name.pascalCase()}}Api(httpService.dio);
}

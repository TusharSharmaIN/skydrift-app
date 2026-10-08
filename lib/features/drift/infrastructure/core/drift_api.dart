import 'dart:io';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import 'package:skydrift/core/network/api_constants.dart';
import 'package:skydrift/core/network/http_service.dart';
import 'package:skydrift/features/drift/infrastructure/dtos/drift_dto.dart';

part 'drift_api.g.dart';

@RestApi()
abstract class DriftApi {
  factory DriftApi(Dio dio, {String baseUrl}) = _DriftApi;

  @POST(ApiConstants.driftAnalyze)
  @MultiPart()
  Future<DriftDto> analyzeCloud(@Part(name: 'image') File image);

  @GET(ApiConstants.driftGallery)
  Future<List<DriftDto>> getGallery();
}

@module
abstract class DriftApiModule {
  @lazySingleton
  DriftApi driftApi(HttpService httpService) => DriftApi(httpService.dio);
}

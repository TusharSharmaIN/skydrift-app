// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../core/errors/exception_handler.dart' as _i881;
import '../core/network/http_service.dart' as _i15;
import '../flavor_config/flavor_config.dart' as _i971;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final interceptorModule = _$InterceptorModule();
    final flavorConfigModule = _$FlavorConfigModule();
    gh.lazySingleton<_i881.DataSourceExceptionHandler>(
      () => _i881.DataSourceExceptionHandler(),
    );
    gh.lazySingleton<List<_i361.Interceptor>>(
      () => interceptorModule.interceptors(),
    );
    gh.lazySingleton<_i971.FlavorConfig>(() => flavorConfigModule.flavorConfig);
    gh.lazySingleton<_i15.HttpService>(
      () => _i15.HttpService(
        config: gh<_i971.FlavorConfig>(),
        interceptors: gh<List<_i361.Interceptor>>(),
      ),
    );
    return this;
  }
}

class _$InterceptorModule extends _i15.InterceptorModule {}

class _$FlavorConfigModule extends _i971.FlavorConfigModule {}

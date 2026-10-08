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
import '../features/drift/application/drift_bloc.dart' as _i206;
import '../features/drift/domain/repository/i_drift_repository.dart' as _i900;
import '../features/drift/infrastructure/core/drift_api.dart' as _i990;
import '../features/drift/infrastructure/data_source/drift_remote.dart'
    as _i1033;
import '../features/drift/infrastructure/repository/drift_repository.dart'
    as _i584;
import '../features/home/application/sky_camera_bloc.dart' as _i217;
import '../features/splash/application/splash_bloc.dart' as _i980;
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
    final driftApiModule = _$DriftApiModule();
    gh.factory<_i217.SkyCameraBloc>(() => _i217.SkyCameraBloc());
    gh.factory<_i980.SplashBloc>(() => _i980.SplashBloc());
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
    gh.lazySingleton<_i990.DriftApi>(
      () => driftApiModule.driftApi(gh<_i15.HttpService>()),
    );
    gh.lazySingleton<_i1033.DriftRemoteDataSource>(
      () => _i1033.DriftRemoteDataSource(
        dataSourceExceptionHandler: gh<_i881.DataSourceExceptionHandler>(),
        api: gh<_i990.DriftApi>(),
      ),
    );
    gh.lazySingleton<_i900.IDriftRepository>(
      () => _i584.DriftRepository(
        driftRemoteDataSource: gh<_i1033.DriftRemoteDataSource>(),
      ),
    );
    gh.lazySingleton<_i206.DriftBloc>(
      () => _i206.DriftBloc(driftRepository: gh<_i900.IDriftRepository>()),
    );
    return this;
  }
}

class _$InterceptorModule extends _i15.InterceptorModule {}

class _$FlavorConfigModule extends _i971.FlavorConfigModule {}

class _$DriftApiModule extends _i990.DriftApiModule {}

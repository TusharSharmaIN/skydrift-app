import 'package:injectable/injectable.dart';

import 'package:skydrift/core/errors/exception_handler.dart';

@lazySingleton
class {{feature_name.pascalCase()}}LocalDataSource {
  {{feature_name.pascalCase()}}LocalDataSource({
    required this.dataSourceExceptionHandler,
  });

  final DataSourceExceptionHandler dataSourceExceptionHandler;
}

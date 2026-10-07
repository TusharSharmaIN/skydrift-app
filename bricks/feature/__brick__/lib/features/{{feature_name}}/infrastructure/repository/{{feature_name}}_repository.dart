import 'package:injectable/injectable.dart';

import 'package:skydrift/features/{{feature_name}}/domain/repository/i_{{feature_name}}_repository.dart';
import 'package:skydrift/features/{{feature_name}}/infrastructure/data_source/{{feature_name}}_local.dart';
import 'package:skydrift/features/{{feature_name}}/infrastructure/data_source/{{feature_name}}_remote.dart';

@LazySingleton(as: I{{feature_name.pascalCase()}}Repository)
class {{feature_name.pascalCase()}}Repository implements I{{feature_name.pascalCase()}}Repository {
  {{feature_name.pascalCase()}}Repository({
    required this.{{feature_name.camelCase()}}LocalDataSource,
    required this.{{feature_name.camelCase()}}RemoteDataSource,
  });

  final {{feature_name.pascalCase()}}LocalDataSource {{feature_name.camelCase()}}LocalDataSource;
  final {{feature_name.pascalCase()}}RemoteDataSource {{feature_name.camelCase()}}RemoteDataSource;
}

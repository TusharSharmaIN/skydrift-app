import 'package:freezed_annotation/freezed_annotation.dart';

part '{{feature_name}}.freezed.dart';

@freezed
abstract class {{feature_name.pascalCase()}} with _${{feature_name.pascalCase()}} {
  const {{feature_name.pascalCase()}}._();

  const factory {{feature_name.pascalCase()}}() = _{{feature_name.pascalCase()}};

  factory {{feature_name.pascalCase()}}.empty() => const {{feature_name.pascalCase()}}();
}

import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:skydrift/features/{{feature_name}}/domain/entities/{{feature_name}}.dart';

part '{{feature_name}}_dto.freezed.dart';
part '{{feature_name}}_dto.g.dart';

@freezed
abstract class {{feature_name.pascalCase()}}Dto with _${{feature_name.pascalCase()}}Dto {
  const {{feature_name.pascalCase()}}Dto._();

  const factory {{feature_name.pascalCase()}}Dto() = _{{feature_name.pascalCase()}}Dto;

  {{feature_name.pascalCase()}} toDomain() => {{feature_name.pascalCase()}}();

  factory {{feature_name.pascalCase()}}Dto.fromDomain({{feature_name.pascalCase()}} entity) =>
      {{feature_name.pascalCase()}}Dto();

  factory {{feature_name.pascalCase()}}Dto.fromJson(Map<String, dynamic> json) =>
      _${{feature_name.pascalCase()}}DtoFromJson(json);
}

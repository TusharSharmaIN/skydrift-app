part of '{{feature_name}}_bloc.dart';

@freezed
abstract class {{feature_name.pascalCase()}}State with _${{feature_name.pascalCase()}}State {
  const {{feature_name.pascalCase()}}State._();

  const factory {{feature_name.pascalCase()}}State({
    required bool isLoading,
  }) = _{{feature_name.pascalCase()}}State;

  factory {{feature_name.pascalCase()}}State.initial() => const {{feature_name.pascalCase()}}State(
        isLoading: false,
      );
}

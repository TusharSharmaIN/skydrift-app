import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:skydrift/features/{{feature_name}}/domain/repository/i_{{feature_name}}_repository.dart';

part '{{feature_name}}_event.dart';
part '{{feature_name}}_state.dart';
part '{{feature_name}}_bloc.freezed.dart';

@lazySingleton
class {{feature_name.pascalCase()}}Bloc
    extends Bloc<{{feature_name.pascalCase()}}Event, {{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Bloc({required this.{{feature_name.camelCase()}}Repository})
      : super({{feature_name.pascalCase()}}State.initial()) {
    on<{{feature_name.pascalCase()}}Event>(_onEvent);
  }

  final I{{feature_name.pascalCase()}}Repository {{feature_name.camelCase()}}Repository;

  Future<void> _onEvent(
    {{feature_name.pascalCase()}}Event event,
    Emitter<{{feature_name.pascalCase()}}State> emit,
  ) async {
    await event.map(
      init: (_) async => emit({{feature_name.pascalCase()}}State.initial()),
    );
  }
}

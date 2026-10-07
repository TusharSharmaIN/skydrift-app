import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:skydrift/features/{{feature_name}}/application/{{feature_name}}_bloc.dart';
import 'package:skydrift/features/{{feature_name}}/domain/repository/i_{{feature_name}}_repository.dart';

class MockI{{feature_name.pascalCase()}}Repository extends Mock
    implements I{{feature_name.pascalCase()}}Repository {}

void main() {
  late I{{feature_name.pascalCase()}}Repository repository;
  late {{feature_name.pascalCase()}}Bloc bloc;

  setUp(() {
    repository = MockI{{feature_name.pascalCase()}}Repository();
    bloc = {{feature_name.pascalCase()}}Bloc({{feature_name.camelCase()}}Repository: repository);
  });

  tearDown(() => bloc.close());

  test('initial state is {{feature_name.pascalCase()}}State.initial()', () {
    expect(bloc.state, {{feature_name.pascalCase()}}State.initial());
  });

  group('init', () {
    blocTest<{{feature_name.pascalCase()}}Bloc, {{feature_name.pascalCase()}}State>(
      'emits initial state when init is added',
      build: () => bloc,
      act: (bloc) => bloc.add(const {{feature_name.pascalCase()}}Event.init()),
      expect: () => [
        {{feature_name.pascalCase()}}State.initial(),
      ],
    );
  });
}

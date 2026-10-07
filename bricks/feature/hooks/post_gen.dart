import 'dart:io';

import 'package:mason/mason.dart';

void run(HookContext context) {
  final name = context.vars['feature_name'] as String;
  final includeLocal = context.vars['include_local_data_source'] as bool;
  final includeTests = context.vars['include_tests'] as bool;
  final includePage = context.vars['include_page'] as bool;
  final includeBloc = context.vars['include_bloc'] as bool;

  final basePath = 'lib/features/$name';
  final testPath = 'test/features/$name';

  if (!includeLocal) {
    _deleteIfExists('$basePath/infrastructure/data_source/${name}_local.dart');
  }

  if (!includePage) {
    _deleteIfExists('$basePath/presentation/page/${name}_page.dart');
    _deleteDirIfEmpty('$basePath/presentation/page');
  }

  if (!includeBloc) {
    _deleteIfExists('$basePath/application/${name}_bloc.dart');
    _deleteIfExists('$basePath/application/${name}_event.dart');
    _deleteIfExists('$basePath/application/${name}_state.dart');
    _deleteDirIfEmpty('$basePath/application');
  }

  if (!includeTests) {
    _deleteDirRecursive(testPath);
  }

  context.logger.info('Feature "$name" generated successfully in $basePath');

  context.logger.info('Running build_runner build...');
  final result = Process.runSync('fvm', [
    'dart',
    'run',
    'build_runner',
    'build',
    '--delete-conflicting-outputs',
  ]);
  if (result.exitCode == 0) {
    context.logger.info('build_runner completed successfully.');
  } else {
    context.logger.err('build_runner failed:\n${result.stderr}');
  }
}

void _deleteIfExists(String path) {
  final file = File(path);
  if (file.existsSync()) file.deleteSync();
}

void _deleteDirIfEmpty(String path) {
  final dir = Directory(path);
  if (dir.existsSync() && dir.listSync().isEmpty) {
    dir.deleteSync();
  }
}

void _deleteDirRecursive(String path) {
  final dir = Directory(path);
  if (dir.existsSync()) {
    dir.deleteSync(recursive: true);
  }
}

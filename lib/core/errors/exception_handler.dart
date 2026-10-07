import 'package:injectable/injectable.dart';

@lazySingleton
class DataSourceExceptionHandler {
  Future<T> handle<T>(Future<T> Function() function) async {
    try {
      return await function();
    } catch (e) {
      rethrow;
    }
  }
}

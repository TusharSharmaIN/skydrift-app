import 'dart:io';

import 'package:injectable/injectable.dart';

enum AppFlavor { dev, prod }

@module
abstract class FlavorConfigModule {
  @lazySingleton
  FlavorConfig get flavorConfig => FlavorConfig.instance;
}

class FlavorConfig {
  FlavorConfig._();

  static FlavorConfig? _instance;
  static FlavorConfig get instance {
    assert(_instance != null, 'FlavorConfig has not been initialized');
    return _instance!;
  }

  late final AppFlavor flavor;
  late final String appName;
  late final String baseUrl;

  static void initialize({required AppFlavor flavor}) {
    final resolvedBaseUrl = _baseUrl(flavor);
    assert(
      flavor != AppFlavor.prod || resolvedBaseUrl.isNotEmpty,
      'Set FlavorConfig.prodApiUrl to the deployed API, including /api',
    );
    _instance = FlavorConfig._()
      ..flavor = flavor
      ..appName = _appName(flavor)
      ..baseUrl = resolvedBaseUrl;
  }

  static String _appName(AppFlavor flavor) {
    return switch (flavor) {
      AppFlavor.dev => 'Sky Drift Dev',
      AppFlavor.prod => 'Sky Drift',
    };
  }

  /// Deployed API, including `/api`. Paste the real host here.
  static const String prodApiUrl = '';

  /// Optional full override, including `/api`.
  /// `flutter run --dart-define=API_BASE_URL=https://host/api`
  static const String _apiBaseUrlOverride = String.fromEnvironment(
    'API_BASE_URL',
  );

  static String _baseUrl(AppFlavor flavor) {
    if (_apiBaseUrlOverride.isNotEmpty) {
      return _apiBaseUrlOverride;
    }
    return switch (flavor) {
      AppFlavor.dev => _localApiUrl(),
      AppFlavor.prod => prodApiUrl,
    };
  }

  static String _localApiUrl() {
    const overrideHost = String.fromEnvironment('API_HOST');
    if (overrideHost.isNotEmpty) {
      return 'http://$overrideHost:3000/api';
    }
    if (Platform.isAndroid) {
      return 'http://10.0.2.2:3000/api';
    }
    return 'http://localhost:3000/api';
  }

  String get assetOrigin {
    if (baseUrl.endsWith('/api')) {
      return baseUrl.substring(0, baseUrl.length - 4);
    }
    return baseUrl;
  }

  String resolveMediaUrl(String path) {
    if (path.startsWith('http://') || path.startsWith('https://')) {
      return path;
    }
    if (path.startsWith('/')) {
      return '$assetOrigin$path';
    }
    return '$assetOrigin/$path';
  }

  bool get isDev => flavor == AppFlavor.dev;
  bool get isProd => flavor == AppFlavor.prod;
}

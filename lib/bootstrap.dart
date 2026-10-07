import 'dart:async';

import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:skydrift/di/injection.dart';
import 'package:skydrift/flavor_config/flavor_config.dart';

Future<void> bootstrap({
  required AppFlavor flavor,
  required FutureOr<Widget> Function() builder,
}) async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  FlavorConfig.initialize(flavor: flavor);
  ChuckerFlutter.showOnRelease = !FlavorConfig.instance.isProd;

  configureDependencies();

  runApp(await builder());
}

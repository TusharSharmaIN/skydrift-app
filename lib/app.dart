import 'package:flutter/material.dart';

import 'package:skydrift/flavor_config/flavor_config.dart';
import 'package:skydrift/routes/app_router.dart';
import 'package:skydrift/theme/theme_data.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: FlavorConfig.instance.appName,
      theme: AppThemeData.themeData,
      routerConfig: AppRouter.router,
      builder: (context, child) {
        return GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: child!,
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:skydrift/di/injection.dart';
import 'package:skydrift/features/drift/application/drift_bloc.dart';
import 'package:skydrift/flavor_config/flavor_config.dart';
import 'package:skydrift/routes/app_router.dart';
import 'package:skydrift/theme/theme_data.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => locator.get<DriftBloc>()
            ..add(const DriftEvent.galleryFetchRequested()),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: FlavorConfig.instance.appName,
        theme: AppThemeData.light,
        darkTheme: AppThemeData.dark,
        themeMode: ThemeMode.system,
        routerConfig: AppRouter.router,
        builder: (context, child) {
          return GestureDetector(
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: child!,
          );
        },
      ),
    );
  }
}

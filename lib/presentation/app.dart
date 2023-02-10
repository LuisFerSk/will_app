import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:will_app/di/bloc_provider.dart';
import 'package:will_app/di/client_module.dart';
import 'package:will_app/di/config_module.dart';
import 'package:will_app/di/repository_module.dart';
import 'package:will_app/di/service_module.dart';
import 'package:will_app/di/usecase_module.dart';
import 'package:will_app/core/app_global.dart';
import 'package:will_app/presentation/utils/routers/gen_router.dart';
import 'package:will_app/presentation/utils/routers/navigation_controller.dart';

void app() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
    with
        ConfigModule,
        ClientModule,
        ServiceModule,
        RepositoryModule,
        UseCaseModule,
        BlocProviders {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocProviders(context),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: themeData,
        navigatorObservers: [navigationObserver],
        onGenerateRoute: generateRoute,
        navigatorKey: NavigationController.globalNavigatorKey,
      ),
    );
  }
}

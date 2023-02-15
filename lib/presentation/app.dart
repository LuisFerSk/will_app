import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:will_app/di/bloc_provider.dart';
import 'package:will_app/di/client_module.dart';
import 'package:will_app/di/config_module.dart';
import 'package:will_app/di/repository_module.dart';
import 'package:will_app/di/service_module.dart';
import 'package:will_app/di/usecase_module.dart';
import 'package:will_app/core/app_global.dart';
import 'package:will_app/presentation/cubit/sign_in/sign_in_cubit.dart';
import 'package:will_app/presentation/utils/preferences/preferences.dart';
import 'package:will_app/presentation/utils/preferences/token.dart';
import 'package:will_app/presentation/utils/routers/gen_router.dart';
import 'package:will_app/presentation/utils/routers/navigation_controller.dart';
import 'package:will_app/presentation/utils/routes.dart';

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
      child: const RouteWidget(),
    );
  }
}

class RouteWidget extends StatefulWidget {
  const RouteWidget({
    super.key,
  });

  @override
  State<RouteWidget> createState() => _RouteWidgetState();
}

class _RouteWidgetState extends State<RouteWidget> {
  @override
  void initState() {
    super.initState();

    TokenPreferences.getToken().then(
      (value) => context.read<SignInCubit>().getVerifyToken(value),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is VerifyTokenLoading) {
          transitionLoading();

          return;
        }

        if (state is VerifyTokenSuccess) {
          TokenPreferences.setToken(state.token);

          transitionDashboard();

          return;
        }

        if (state is VerifyTokenFailure || state is VerifyTokenInitial) {
          Preferences.cleanPreference();
          transitionToAuth();
        }
      },
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

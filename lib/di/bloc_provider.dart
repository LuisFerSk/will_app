import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:will_app/di/usecase_module.dart';
import 'package:will_app/presentation/cubit/sign_in/sign_in_cubit.dart';

mixin BlocProviders on UseCaseModule {
  dynamic blocProviders(BuildContext context) => [
        BlocProvider(
          create: (context) => SignInCubit(postSignIn: postSignIn),
        )
      ];
}

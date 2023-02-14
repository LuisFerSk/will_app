import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:will_app/presentation/cubit/sign_in/sign_in_cubit.dart';
import 'package:will_app/presentation/pages/sign_in/widgets/button/initial_button.dart';
import 'package:will_app/presentation/pages/sign_in/widgets/button/failure_button.dart';
import 'package:will_app/presentation/pages/sign_in/widgets/button/loading_button.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController passwordController,
    required TextEditingController usernameController,
  })  : _formKey = formKey,
        _passwordController = passwordController,
        _usernameController = usernameController;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _passwordController;
  final TextEditingController _usernameController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      builder: (context, state) {
        if (state is SignInLoading) {
          return const LoadingButtonWidget();
        }

        if (state is SignInFailure) {
          return FailureButtonWidget(
            formKey: _formKey,
            passwordController: _passwordController,
            usernameController: _usernameController,
            state: state,
          );
        }

        return InitialButtonWidget(
          formKey: _formKey,
          passwordController: _passwordController,
          usernameController: _usernameController,
        );
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:will_app/domain/entities/user.dart';
import 'package:will_app/presentation/cubit/sign_in/sign_in_cubit.dart';
import 'package:will_app/presentation/pages/widgets/button.dart';

class InitialButtonWidget extends StatelessWidget {
  const InitialButtonWidget({
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
    return Button(
      label: 'Iniciar sesión',
      callback: () => _callback(context),
    );
  }

  _callback(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.read<SignInCubit>().postSignIn(
            User(
              password: _passwordController.text,
              username: _usernameController.text,
            ),
          );
    }
  }
}

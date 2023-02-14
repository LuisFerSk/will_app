import 'package:flutter/material.dart';

import 'package:will_app/presentation/cubit/sign_in/sign_in_cubit.dart';
import 'package:will_app/presentation/pages/sign_in/widgets/button/initial_button.dart';

class FailureButtonWidget extends StatelessWidget {
  const FailureButtonWidget({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController passwordController,
    required TextEditingController usernameController,
    required SignInFailure state,
  })  : _formKey = formKey,
        _passwordController = passwordController,
        _usernameController = usernameController,
        _state = state;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _passwordController;
  final TextEditingController _usernameController;
  final SignInFailure _state;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        InitialButtonWidget(
          formKey: _formKey,
          passwordController: _passwordController,
          usernameController: _usernameController,
        ),
        SizedBox(height: size.height * 0.01),
        Text(_state.message),
      ],
    );
  }
}

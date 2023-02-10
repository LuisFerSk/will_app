import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:will_app/domain/entities/user.dart';
import 'package:will_app/presentation/pages/widgets/alert_failure.dart';
import 'package:will_app/presentation/pages/widgets/alert_progress.dart';
import 'package:will_app/presentation/pages/widgets/button.dart';
import 'package:will_app/presentation/pages/widgets/input.dart';
import 'package:will_app/presentation/cubit/sign_in/sign_in_cubit.dart';
import 'package:will_app/presentation/pages/widgets/scaffold_body.dart';
import 'package:will_app/presentation/utils/preferences/token.dart';
import 'package:will_app/presentation/utils/routes.dart';
import 'package:will_app/presentation/utils/validators/sing_in_validator.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage>
    with SignInValidationMixin, TokenPreferencesMixin {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BlocListener<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInLoading) {
          alertDialogLoading(context: context);
        }
        if (state is SignInSuccess) {
          pop();
          setToken(state.singIn.token);
          transitionDashboard();
        }
        if (state is SignInFailure) {
          pop();
          alertDialogFailure(context: context, message: state.message);
        }
      },
      child: ScaffoldBody(
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey, //New
                    blurRadius: 5,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/imgs/logo.png',
                      fit: BoxFit.fill,
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          SizedBox(height: size.height * 0.07),
                          Input(
                            label: 'Username',
                            controller: _usernameController,
                            isValid: isUsernameValid,
                            keyboardType: TextInputType.name,
                          ),
                          SizedBox(height: size.height * 0.02),
                          Input(
                            label: 'Contraseña',
                            controller: _passwordController,
                            isValid: isPasswordValid,
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: size.height * 0.02),
                    Button(
                      label: 'Iniciar sesión',
                      callback: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<SignInCubit>().postSignIn(
                                User(
                                  password: _passwordController.text,
                                  username: _usernameController.text,
                                ),
                              );
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

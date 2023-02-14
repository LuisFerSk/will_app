import 'package:flutter/material.dart';

import 'package:will_app/presentation/pages/widgets/input.dart';
import 'package:will_app/presentation/pages/sign_in/widgets/button/button.dart';
import 'package:will_app/presentation/pages/widgets/scaffold_body.dart';
import 'package:will_app/presentation/utils/validators/sing_in_validator.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> with SignInValidationMixin {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return ScaffoldBody(
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
                  ButtonWidget(
                    formKey: _formKey,
                    passwordController: _passwordController,
                    usernameController: _usernameController,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:will_app/presentation/cubit/verify_token/verify_token_cubit.dart';
import 'package:will_app/presentation/pages/dashboard/dashboard_page.dart';
import 'package:will_app/presentation/pages/widgets/loading_indicator.dart';
import 'package:will_app/presentation/utils/preferences/token.dart';
import 'package:will_app/presentation/pages/sign_in/widgets/form.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  void initState() {
    super.initState();

    TokenPreferences.getToken().then(
      (value) => context.read<VerifyTokenCubit>().getVerifyToken(value),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VerifyTokenCubit, VerifyTokenState>(
      builder: (context, state) {
        if (state is VerifyTokenLoading) {
          return const LoadingIndicator();
        }

        if (state is VerifyTokenSuccess) {
          return const DashboardPage();
        }

        return const FormWidget();
      },
    );
  }
}

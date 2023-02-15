import 'package:flutter/material.dart';
import 'package:will_app/core/frameword/font.dart';
import 'package:will_app/presentation/pages/widgets/scaffold_body.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ScaffoldBody(
      drawer: false,
      appBar: false,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/imgs/logo-mini.png',
              height: size.height * 0.15,
            ),
            Text(
              'Cargando',
              style: FontTheme.body,
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:will_app/presentation/pages/widgets/disable_button.dart';
import 'package:will_app/core/frameword/colors.dart';

class LoadingButtonWidget extends StatelessWidget {
  const LoadingButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        const DisableButton(label: 'cargando...'),
        SizedBox(height: size.height * 0.01),
        const CircularProgressIndicator(
          color: ColorsTheme.primary,
        ),
      ],
    );
  }
}

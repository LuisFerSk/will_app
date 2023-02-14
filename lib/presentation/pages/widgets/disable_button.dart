import 'package:flutter/material.dart';
import 'package:will_app/core/frameword/colors.dart';

class DisableButton extends StatelessWidget {
  const DisableButton({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: ColorsTheme.primary,
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: ColorsTheme.primary),
        borderRadius: BorderRadius.circular(10),
      ),
      minWidth: double.infinity,
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}

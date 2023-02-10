import 'package:flutter/material.dart';
import 'package:will_app/core/frameword/colors.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.label,
    required this.callback,
  });

  final VoidCallback callback;
  final String label;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: callback,
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

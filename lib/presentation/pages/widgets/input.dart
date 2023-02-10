import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({
    super.key,
    required this.label,
    required this.controller,
    required this.keyboardType,
    required this.isValid,
  });

  final TextEditingController controller;
  final TextInputType keyboardType;
  final String label;
  final Function isValid;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        label: Text(
          label,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black87,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black38),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black38),
        ),
      ),
      validator: (value) => isValid(value),
    );
  }
}

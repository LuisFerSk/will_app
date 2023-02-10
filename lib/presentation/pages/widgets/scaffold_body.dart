import 'package:flutter/material.dart';

class ScaffoldBody extends StatelessWidget {
  const ScaffoldBody({
    super.key,
    required this.body,
    this.drawer,
  });

  final Widget body;
  final Widget? drawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer,
      body: SafeArea(child: body),
    );
  }
}

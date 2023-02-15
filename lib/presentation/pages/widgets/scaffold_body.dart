import 'package:flutter/material.dart';
import 'package:will_app/presentation/pages/widgets/drawer.dart';

class ScaffoldBody extends StatelessWidget {
  const ScaffoldBody({
    super.key,
    required this.body,
    this.appBar = true,
    this.drawer = true,
  });

  final Widget body;
  final bool appBar;
  final bool drawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer ? const DrawerWidget() : null,
      appBar: appBar ? AppBar(title: const Text('admin')) : null,
      body: SafeArea(child: body),
    );
  }
}

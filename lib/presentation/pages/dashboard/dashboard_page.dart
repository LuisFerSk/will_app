import 'package:flutter/material.dart';
import 'package:will_app/presentation/utils/preferences/token.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with TokenPreferencesMixin {
  @override
  Widget build(BuildContext context) {
    return const Text('dashboard');
  }
}

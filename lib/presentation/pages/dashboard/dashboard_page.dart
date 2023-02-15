import 'package:flutter/material.dart';

import 'package:will_app/presentation/pages/dashboard/widgets/chart.dart';
import 'package:will_app/presentation/pages/widgets/drawer.dart';
import 'package:will_app/presentation/pages/widgets/scaffold_body.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldBody(
      body: const ChartWidget(),
      appBar: AppBar(title: const Text('admin')),
      drawer: const DrawerWidget(),
    );
  }
}

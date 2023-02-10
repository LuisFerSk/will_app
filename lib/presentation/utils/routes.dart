import 'package:flutter/material.dart';
import 'package:will_app/presentation/utils/routers/navigation_controller.dart';
import 'package:will_app/presentation/utils/routers/routes.dart';

extension AppRouter<T extends StatefulWidget> on State<T> {
  void transitionToAuth() {
    NavigationController.push(Routes.signIn.routeName, clean: true);
  }

  void transitionDashboard() {
    NavigationController.push(Routes.dashboard.routeName, clean: true);
  }

  void pop() {
    Navigator.pop(context);
  }
}

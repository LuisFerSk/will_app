import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:will_app/core/frameword/colors.dart';
import 'package:will_app/presentation/cubit/sign_in/sign_in_cubit.dart';
import 'package:will_app/presentation/utils/preferences/preferences.dart';
import 'package:will_app/presentation/utils/routes.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: ColorsTheme.primary,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              transitionDashboard();
            },
          ),
          ListTile(
            title: const Text('Impresoras y scanners'),
            onTap: () {
              transitionPrinterScanner();
            },
          ),
          ListTile(
            title: const Text('Equipos'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Mantenimientos'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Soportes'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Configuraciones de usuario'),
            onTap: () {
              transitionLoading();
            },
          ),
          ListTile(
            title: const Text('Cerrar sesión'),
            onTap: () {
              Preferences.cleanPreference();

              context.read<SignInCubit>().logout();
            },
          ),
        ],
      ),
    );
  }
}

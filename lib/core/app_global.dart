library order_app.globals;

import 'package:flutter/material.dart';
import 'package:will_app/core/frameword/colors.dart';

RouteObserver<ModalRoute<void>> navigationObserver =
    RouteObserver<ModalRoute<void>>();

ThemeData themeData = ThemeData(
  scaffoldBackgroundColor: ColorsTheme.scaffoldBackground,
  fontFamily: "monserratRegular",
  brightness: Brightness.light,
  pageTransitionsTheme: _buildPageTransitionsTheme(),
);

/// Custom page transitions theme
PageTransitionsTheme _buildPageTransitionsTheme() {
  return const PageTransitionsTheme(
    builders: <TargetPlatform, PageTransitionsBuilder>{
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  );
}

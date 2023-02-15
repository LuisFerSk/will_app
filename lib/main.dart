import 'dart:developer';

import 'package:will_app/core/config/app_config.dart';
import 'package:will_app/core/enviroment/environment.dart';
import 'package:will_app/presentation/app.dart';

//flutter pub run build_runner build --delete-conflicting-outputs
void main() {
  AppConfig(env: Environment.development());
  app();
}

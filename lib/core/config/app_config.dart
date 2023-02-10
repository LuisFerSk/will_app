import 'package:will_app/core/config/app_config_mixin.dart';
import 'package:will_app/core/enviroment/environment.dart';

class AppConfig with AppConfigMixin {
  static final AppConfig shared = AppConfig._instance();

  factory AppConfig({required Environment env}) {
    shared.env = env;
    return shared;
  }

  AppConfig._instance();
  Environment? env;

  @override
  String get baseDomain => env?.baseDomain ?? '';
}

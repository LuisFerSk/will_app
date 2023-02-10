import 'package:will_app/core/config/app_config.dart';
import 'package:will_app/core/config/app_config_mixin.dart';

mixin ConfigModule {
  AppConfigMixin get appConfig {
    return AppConfig.shared;
  }
}

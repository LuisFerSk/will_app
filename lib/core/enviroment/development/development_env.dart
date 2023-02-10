import 'package:will_app/core/enviroment/environment.dart';

extension DevelopmentEnvironment on Environment {
  static Environment development() {
    return Environment(
      baseDomain: 'http://192.168.0.16:3001',
    );
  }
}

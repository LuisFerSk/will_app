import 'package:will_app/core/enviroment/environment.dart';

extension ProductionEnvironment on Environment {
  static Environment production() {
    return Environment(
      baseDomain: 'http://localhost:3001',
    );
  }
}

import 'package:will_app/core/enviroment/development/development_env.dart';
import 'package:will_app/core/enviroment/production/production_env.dart';

class Environment {
  /// Prod environment
  factory Environment.production() {
    return ProductionEnvironment.production();
  }

  /// Dev environment
  factory Environment.development() {
    return DevelopmentEnvironment.development();
  }

  Environment({
    required this.baseDomain,
  });

  final String baseDomain;
}

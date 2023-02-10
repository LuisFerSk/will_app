import 'package:will_app/data/repository/maintenance_find_made_per_day_repository.dart';
import 'package:will_app/data/repository/sing_in_repository.dart';
import 'package:will_app/data/repository/verify_token.dart';
import 'package:will_app/domain/contracts/repositories/abstract_maintenance_find_made_per_day_repository.dart';
import 'package:will_app/domain/contracts/repositories/abstract_sign_in_repository.dart';
import 'package:will_app/domain/contracts/repositories/abstract_verify_token_repository.dart';

import 'service_module.dart';

mixin RepositoryModule on ServiceModule {
  AbstractSignInRepository get signInRepository {
    return SignInRepository(signIn: signInService);
  }

  AbstractVerifyTokenRepository get verifyTokenRepository {
    return VerifyTokenRepository(verifyToken: verifyTokenService);
  }

  AbstractMaintenanceFindMadePerDayRepository
      get maintenanceFindMadePerDayRepository {
    return MaintenanceFindMadePerDayRepository(
        maintenanceFindMadePerDay: maintenanceFindMadePerDayService);
  }
}

import 'package:will_app/domain/contracts/usecases/abstract_get_maintenance_find_made_per_day.dart';
import 'package:will_app/domain/contracts/usecases/abstract_get_verify_token.dart';
import 'package:will_app/domain/contracts/usecases/abstract_post_sign_in.dart';
import 'package:will_app/domain/usecases/get_maintenance_find_made_per_day.dart';
import 'package:will_app/domain/usecases/get_verify_token.dart';
import 'package:will_app/domain/usecases/post_sign_in.dart';

import 'repository_module.dart';

mixin UseCaseModule on RepositoryModule {
  AbstractPostSignIn get postSignIn {
    return PostSignIn(signIn: signInRepository);
  }

  AbstractGetVerifyToken get getVerifyToken {
    return GetVerifyToken(verifyToken: verifyTokenRepository);
  }

  AbstractGetMaintenanceFindMadePerDay get getMaintenanceFindMadePerDay {
    return GetMaintenanceFindMadePerDay(
        maintenanceFindMadePerDay: maintenanceFindMadePerDayRepository);
  }
}

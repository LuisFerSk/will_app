import 'package:will_app/data/repository/sing_in_repository.dart';
import 'package:will_app/domain/contracts/repositories/abstract_sign_in_repository.dart';

import 'service_module.dart';

mixin RepositoryModule on ServiceModule {
  AbstractSignInRepository get signInRepository {
    return SignInRepository(signIn: signInService);
  }
}

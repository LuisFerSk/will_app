import 'package:will_app/data/services/sign_in/sign_in_service.dart';
import 'package:will_app/domain/contracts/services/abstract_sign_in_services.dart';

import 'client_module.dart';

mixin ServiceModule on ClientModule {
  AbstractSignInServices get signInService {
    return SignInService(apiClient: apiClientToken);
  }
}

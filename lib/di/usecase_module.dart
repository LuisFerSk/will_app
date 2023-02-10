import 'package:will_app/domain/contracts/usecases/abstract_post_sign_in.dart';
import 'package:will_app/domain/usecases/post_sign_in.dart';

import 'repository_module.dart';

mixin UseCaseModule on RepositoryModule {
  AbstractPostSignIn get postSignIn {
    return PostSignIn(signIn: signInRepository);
  }
}

import 'package:dartz/dartz.dart';

import 'package:will_app/core/api/errors/failure.dart';
import 'package:will_app/data/models/requests/user/user_request.dart';
import 'package:will_app/domain/contracts/repositories/abstract_sign_in_repository.dart';
import 'package:will_app/domain/contracts/usecases/abstract_post_sign_in.dart';
import 'package:will_app/domain/entities/response/sign_in.dart';
import 'package:will_app/domain/entities/request/user.dart';

class PostSignIn implements AbstractPostSignIn {
  final AbstractSignInRepository _signIn;

  PostSignIn({required AbstractSignInRepository signIn}) : _signIn = signIn;

  @override
  Future<Either<Failure, SignIn>> call(User user) async {
    return _signIn(
      UserRequest(newUsername: user.username, newPassword: user.password),
    );
  }
}

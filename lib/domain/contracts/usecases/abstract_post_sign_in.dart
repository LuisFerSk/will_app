import 'package:dartz/dartz.dart';

import 'package:will_app/core/api/errors/failure.dart';
import 'package:will_app/domain/entities/response/sign_in.dart';
import 'package:will_app/domain/entities/request/user.dart';

abstract class AbstractPostSignIn {
  Future<Either<Failure, SignIn>> call(User user);
}

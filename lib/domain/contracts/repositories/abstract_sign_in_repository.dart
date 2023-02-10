import 'package:dartz/dartz.dart';

import 'package:will_app/core/api/errors/failure.dart';
import 'package:will_app/data/models/responses/sing_in/sing_in_response.dart';
import 'package:will_app/data/models/requests/user/user_request.dart';

abstract class AbstractSignInRepository {
  Future<Either<Failure, SignInResponse>> call(UserRequest request);
}

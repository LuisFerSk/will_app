import 'package:dartz/dartz.dart';

import 'package:will_app/core/api/errors/failure.dart';
import 'package:will_app/data/models/responses/verify_token/verify_token_response.dart';

abstract class AbstractVerifyTokenRepository {
  Future<Either<Failure, VerifyTokenResponse>> call(String? token);
}

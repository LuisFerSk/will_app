import 'package:dartz/dartz.dart';

import 'package:will_app/core/api/errors/failure.dart';
import 'package:will_app/domain/contracts/repositories/abstract_verify_token_repository.dart';
import 'package:will_app/domain/contracts/usecases/abstract_get_verify_token.dart';
import 'package:will_app/domain/entities/verify_token.dart';

class GetVerifyToken implements AbstractGetVerifyToken {
  final AbstractVerifyTokenRepository _verifyToken;

  GetVerifyToken({required AbstractVerifyTokenRepository verifyToken})
      : _verifyToken = verifyToken;

  @override
  Future<Either<Failure, VerifyToken>> call(String token) async {
    return _verifyToken(token);
  }
}

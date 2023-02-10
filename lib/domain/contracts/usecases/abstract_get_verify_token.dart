import 'package:dartz/dartz.dart';
import 'package:will_app/core/api/errors/failure.dart';
import 'package:will_app/domain/entities/verify_token.dart';

abstract class AbstractGetVerifyToken {
  Future<Either<Failure, VerifyToken>> call(String token);
}

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:will_app/core/api/errors/failure.dart';
import 'package:will_app/core/app_mixin.dart';
import 'package:will_app/domain/contracts/repositories/abstract_verify_token_repository.dart';
import 'package:will_app/domain/contracts/services/abstract_verify_token_services.dart';
import 'package:will_app/data/models/responses/verify_token/verify_token_response.dart';

class VerifyTokenRepository
    with ConnectivityMixin
    implements AbstractVerifyTokenRepository {
  final AbstractVerifyTokenServices _verifyToken;

  VerifyTokenRepository({required AbstractVerifyTokenServices verifyToken})
      : _verifyToken = verifyToken;

  @override
  Future<Either<Failure, VerifyTokenResponse>> call(String token) async {
    if (await isInConnection()) {
      try {
        final client = await _verifyToken(token);
        return Right(client);
      } on DioError catch (e) {
        return Left(ServerFailure(message: e.message));
      }
    }

    return const Left(NoConnectionFailure());
  }
}

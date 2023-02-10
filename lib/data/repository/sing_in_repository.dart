import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:will_app/core/api/errors/failure.dart';
import 'package:will_app/core/app_mixin.dart';
import 'package:will_app/data/models/requests/user/user_request.dart';
import 'package:will_app/data/models/responses/sing_in/sing_in_response.dart';
import 'package:will_app/domain/contracts/repositories/abstract_sign_in_repository.dart';
import 'package:will_app/domain/contracts/services/abstract_sign_in_services.dart';

class SignInRepository
    with ConnectivityMixin
    implements AbstractSignInRepository {
  final AbstractSignInServices _signIn;

  SignInRepository({required AbstractSignInServices signIn}) : _signIn = signIn;

  @override
  Future<Either<Failure, SignInResponse>> call(UserRequest request) async {
    if (await isInConnection()) {
      try {
        final client = await _signIn(request);
        return Right(client);
      } on DioError catch (e) {
        return Left(ServerFailure(message: e.message));
      }
    }

    return const Left(NoConnectionFailure());
  }
}

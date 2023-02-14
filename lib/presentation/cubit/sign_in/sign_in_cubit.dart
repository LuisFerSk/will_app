import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:will_app/core/api/errors/failure.dart';
import 'package:will_app/domain/contracts/usecases/abstract_get_verify_token.dart';
import 'package:will_app/domain/contracts/usecases/abstract_post_sign_in.dart';
import 'package:will_app/domain/entities/user.dart';
import 'package:will_app/domain/entities/verify_token.dart';
import 'package:will_app/presentation/utils/preferences/token.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit({
    required AbstractPostSignIn postSignIn,
    required AbstractGetVerifyToken getVerifyToken,
  })  : _postSignIn = postSignIn,
        _getVerifyToken = getVerifyToken,
        super(VerifyTokenLoading());

  final AbstractPostSignIn _postSignIn;
  final AbstractGetVerifyToken _getVerifyToken;

  void postSignIn(User user) async {
    emit(SignInLoading());

    final responseSignIn = await _postSignIn(user);

    responseSignIn.fold(
      (failure) {
        emit(SignInFailure(mapFailureToMessage(failure)));
      },
      (signIn) async {
        String token = signIn.token;

        final responseVerifyToken = await _getVerifyToken(token);

        emit(_failureOrSuccess(responseVerifyToken, token));
      },
    );
  }

  void getVerifyToken(String? token) async {
    emit(VerifyTokenLoading());

    final response = await _getVerifyToken(token);

    emit(_failureOrSuccess(response, token.toString()));
  }

  void logout() {
    emit(VerifyTokenInitial());
  }

  SignInState _failureOrSuccess(
    Either<Failure, VerifyToken> response,
    String token,
  ) {
    return response.fold(
      (failure) => VerifyTokenFailure(mapFailureToMessage(failure)),
      (verifyToken) =>
          VerifyTokenSuccess(verifyToken: verifyToken, token: token),
    );
  }
}

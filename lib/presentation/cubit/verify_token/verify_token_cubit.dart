import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:will_app/core/api/errors/failure.dart';
import 'package:will_app/domain/contracts/usecases/abstract_get_verify_token.dart';
import 'package:will_app/domain/entities/verify_token.dart';

part 'verify_token_state.dart';

class VerifyTokenCubit extends Cubit<VerifyTokenState> {
  VerifyTokenCubit({required AbstractGetVerifyToken getVerifyToken})
      : _getVerifyToken = getVerifyToken,
        super(VerifyTokenLoading());

  final AbstractGetVerifyToken _getVerifyToken;

  void getVerifyToken(String token) async {
    emit(VerifyTokenLoading());

    final response = await _getVerifyToken(token);

    emit(_failureOrSuccess(response));
  }

  VerifyTokenState _failureOrSuccess(
    Either<Failure, VerifyToken> response,
  ) {
    return response.fold(
      (failure) => VerifyTokenFailure(mapFailureToMessage(failure)),
      (verifyToken) => VerifyTokenSuccess(verifyToken),
    );
  }
}

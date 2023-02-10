import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import 'package:will_app/core/api/errors/failure.dart';
import 'package:will_app/domain/contracts/usecases/abstract_post_sign_in.dart';
import 'package:will_app/domain/entities/sign_in.dart';
import 'package:will_app/domain/entities/user.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit({required AbstractPostSignIn postSignIn})
      : _postSignIn = postSignIn,
        super(SignInLoading());

  final AbstractPostSignIn _postSignIn;

  void postSignIn(User user) async {
    emit(SignInLoading());

    final response = await _postSignIn(user);

    emit(_failureOrSuccess(response));
  }

  SignInState _failureOrSuccess(
    Either<Failure, SignIn> response,
  ) {
    return response.fold(
      (failure) => SignInFailure(mapFailureToMessage(failure)),
      (singIn) => SignInSuccess(singIn),
    );
  }
}

part of 'sign_in_cubit.dart';

abstract class SignInState extends Equatable {
  const SignInState();

  @override
  List<Object> get props => [];
}

class _Failure extends SignInState {
  final String message;

  const _Failure(this.message);

  @override
  List<Object> get props => [message];
}

class SignInLoading extends SignInState {}

class SignInFailure extends _Failure {
  const SignInFailure(String message) : super(message);
}

class VerifyTokenInitial extends SignInState {}

class VerifyTokenLoading extends SignInState {}

class VerifyTokenSuccess extends SignInState {
  final VerifyToken verifyToken;
  final String token;

  const VerifyTokenSuccess({
    required this.verifyToken,
    required this.token,
  });

  @override
  List<Object> get props => [verifyToken, token];
}

class VerifyTokenFailure extends _Failure {
  const VerifyTokenFailure(String message) : super(message);
}

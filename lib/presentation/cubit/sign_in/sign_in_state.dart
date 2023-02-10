part of 'sign_in_cubit.dart';

abstract class SignInState extends Equatable {
  const SignInState();

  @override
  List<Object> get props => [];
}

class SignInLoading extends SignInState {}

class SignInSuccess extends SignInState {
  final SignIn singIn;

  const SignInSuccess(this.singIn);

  @override
  List<Object> get props => [singIn];
}

class SignInFailure extends SignInState {
  final String message;

  const SignInFailure(this.message);

  @override
  List<Object> get props => [message];
}

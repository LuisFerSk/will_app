part of 'verify_token_cubit.dart';

abstract class VerifyTokenState extends Equatable {
  const VerifyTokenState();

  @override
  List<Object> get props => [];
}

class VerifyTokenLoading extends VerifyTokenState {}

class VerifyTokenSuccess extends VerifyTokenState {
  final VerifyToken verifyToken;

  const VerifyTokenSuccess(this.verifyToken);

  @override
  List<Object> get props => [verifyToken];
}

class VerifyTokenFailure extends VerifyTokenState {
  final String message;

  const VerifyTokenFailure(this.message);

  @override
  List<Object> get props => [message];
}

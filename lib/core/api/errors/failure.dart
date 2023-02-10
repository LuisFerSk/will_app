import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}

class NoConnectionFailure extends Failure {
  const NoConnectionFailure() : super(message: 'No connection!');
}

class ServerFailure extends Failure {
  const ServerFailure({required String message}) : super(message: message);
}

class CacheFailure extends Failure {
  const CacheFailure({required String message}) : super(message: message);
}

String mapFailureToMessage(Failure failure) {
  if (failure is ServerFailure) {
    return failure.message;
  } else if (failure is NoConnectionFailure) {
    return failure.message;
  } else {
    return failure.message;
  }
}

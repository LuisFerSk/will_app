import 'package:will_app/domain/entities/response/response.dart';

class SignIn extends Response {
  SignIn({
    required String status,
    required String message,
    required this.info,
    required this.token,
  }) : super(status: status, message: message);

  final Info info;
  final String token;
}

class Info {
  const Info({
    required this.username,
    required this.role,
  });

  final String username;
  final String role;
}

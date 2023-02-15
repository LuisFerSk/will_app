import 'package:will_app/domain/entities/response/response.dart';

class VerifyToken extends Response {
  VerifyToken({
    required String status,
    required String message,
    required this.info,
  }) : super(status: status, message: message);

  final Info info;
}

class Info {
  Info({
    required this.id,
    required this.username,
    required this.role,
    required this.iat,
    required this.exp,
  });

  final int id;
  final String username;
  final String role;
  final int iat;
  final int exp;
}

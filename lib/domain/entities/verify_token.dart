class VerifyToken {
  VerifyToken({
    required this.status,
    required this.message,
    required this.info,
  });

  final String status;
  final String message;
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

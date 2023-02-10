class SignIn {
  const SignIn({
    required this.status,
    required this.message,
    required this.info,
    required this.token,
  });

  final String status;
  final String message;
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

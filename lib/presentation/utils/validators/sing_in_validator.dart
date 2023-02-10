mixin SignInValidationMixin {
  String? isUsernameValid(String value) {
    if (value.isNotEmpty) {
      return null;
    }

    // if(RegExp(r'').hasMatch(value)){ }

    return 'El nombre de usuario es requerido';
  }

  String? isPasswordValid(String value) {
    if (value.isNotEmpty) {
      return null;
    }

    return 'La contraseña es requerida';
  }
}

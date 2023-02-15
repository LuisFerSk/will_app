mixin PrinterScannerValidationMixin {
  String? isTypeValid(String value) {
    if (value.isNotEmpty) {
      return null;
    }

    return 'El tipo de impresora o scanner es requerido';
  }

  String? isBrandValid(String value) {
    if (value.isNotEmpty) {
      return null;
    }

    return 'La marca es requerida';
  }

  String? isLicensePlateValid(String value) {
    if (value.isNotEmpty) {
      return null;
    }

    return 'La placa es requerida';
  }

  String? isModelValid(String value) {
    if (value.isNotEmpty) {
      return null;
    }

    return 'El modelo es requerida';
  }

  String? isSerialValid(String value) {
    if (value.isNotEmpty) {
      return null;
    }

    return 'El serial es requerida';
  }

  String? isCampusValid(String value) {
    if (value.isNotEmpty) {
      return null;
    }

    return 'La sede es requerida';
  }

  String? isAreaValid(String value) {
    if (value.isNotEmpty) {
      return null;
    }

    return 'La area es requerida';
  }

  String? isUsernameValid(String value) {
    if (value.isNotEmpty) {
      return null;
    }

    return 'El nombre de usuario es requerida';
  }

  String? isCcValid(String value) {
    if (value.isNotEmpty) {
      return null;
    }

    return 'La cédula del usuario es requerida';
  }

  String? isPhoneValid(String value) {
    if (value.isNotEmpty) {
      return null;
    }

    return 'El número de teléfono del usuario es requerida';
  }
}

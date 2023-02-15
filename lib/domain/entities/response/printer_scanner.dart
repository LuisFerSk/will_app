import 'package:will_app/domain/entities/response/response.dart';

class PrinterScanner extends Response {
  PrinterScanner({
    required String status,
    required String message,
    required this.info,
  }) : super(status: status, message: message);

  final Info info;
}

class Info {
  Info({
    required this.id,
    required this.type,
    required this.model,
    required this.serial,
    required this.licensePlate,
    required this.campus,
    required this.area,
    required this.user,
    required this.cc,
    required this.phone,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.brandId,
    required this.brand,
  });

  final int id;
  final String type;
  final String model;
  final String serial;
  final String licensePlate;
  final String campus;
  final String area;
  final String user;
  final String cc;
  final String phone;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
  final int brandId;
  final Brand brand;
}

class Brand {
  Brand({
    required this.id,
    required this.name,
    required this.type,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
  });

  final int id;
  final String name;
  final String type;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime deletedAt;
}

class PrinterScannerCreate {
  PrinterScannerCreate({
    required this.type,
    required this.campus,
    required this.brand,
    required this.model,
    required this.serial,
    this.licensePlate,
    required this.area,
    required this.user,
    required this.cc,
    this.phone,
  });

  final String type;
  final String campus;
  final String brand;
  final String model;
  final String serial;
  final String? licensePlate;
  final String area;
  final String user;
  final String cc;
  final String? phone;
}

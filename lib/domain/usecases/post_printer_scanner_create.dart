import 'package:dartz/dartz.dart';

import 'package:will_app/core/api/errors/failure.dart';
import 'package:will_app/data/models/requests/printer_scanner/printer_scanner_request.dart';
import 'package:will_app/domain/contracts/repositories/abstract_printer_scanner_create_repository.dart';
import 'package:will_app/domain/contracts/usecases/abstract_post_printer_scanner_create.dart';
import 'package:will_app/domain/entities/request/printer_scanner_create.dart';
import 'package:will_app/domain/entities/response/printer_scanner.dart';

class PostPrinterScannerCreate implements AbstractPostPrinterScannerCreate {
  final AbstractPrinterScannerCreateRepository _printerScanner;

  PostPrinterScannerCreate(
      {required AbstractPrinterScannerCreateRepository printerScanner})
      : _printerScanner = printerScanner;

  @override
  Future<Either<Failure, PrinterScanner>> call(
    String? token,
    PrinterScannerCreate printerScanner,
  ) async {
    return _printerScanner(
      token,
      PrinterScannerCreateRequest(
        newArea: printerScanner.area,
        newCampus: printerScanner.campus,
        newCc: printerScanner.cc,
        newModel: printerScanner.model,
        newSerial: printerScanner.serial,
        newType: printerScanner.type,
        newUser: printerScanner.user,
        newLicensePlate: printerScanner.licensePlate,
        newPhone: printerScanner.phone,
        newBrand: printerScanner.brand,
      ),
    );
  }
}

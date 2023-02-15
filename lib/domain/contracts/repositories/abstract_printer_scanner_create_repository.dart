import 'package:dartz/dartz.dart';

import 'package:will_app/core/api/errors/failure.dart';
import 'package:will_app/data/models/requests/printer_scanner/printer_scanner_request.dart';
import 'package:will_app/data/models/responses/printer_scanner/printer_scanner_response.dart';

abstract class AbstractPrinterScannerCreateRepository {
  Future<Either<Failure, PrinterScannerResponse>> call(
    String? token,
    PrinterScannerCreateRequest printerScanner,
  );
}

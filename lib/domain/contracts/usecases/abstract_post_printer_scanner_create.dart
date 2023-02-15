import 'package:dartz/dartz.dart';

import 'package:will_app/core/api/errors/failure.dart';
import 'package:will_app/domain/entities/request/printer_scanner_create.dart';
import 'package:will_app/domain/entities/response/printer_scanner.dart';

abstract class AbstractPostPrinterScannerCreate {
  Future<Either<Failure, PrinterScanner>> call(
    String? token,
    PrinterScannerCreate printerScanner,
  );
}

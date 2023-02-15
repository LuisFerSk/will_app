import 'package:will_app/data/models/requests/printer_scanner/printer_scanner_request.dart';
import 'package:will_app/data/models/responses/printer_scanner/printer_scanner_response.dart';

abstract class AbstractPrinterScannerCreateService {
  Future<PrinterScannerResponse> call(
    String? token,
    PrinterScannerCreateRequest printerScanner,
  );
}

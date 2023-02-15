import 'package:dio/dio.dart';

import 'package:will_app/core/api/abstract_api_client.dart';
import 'package:will_app/data/models/requests/printer_scanner/printer_scanner_request.dart';
import 'package:will_app/data/models/responses/printer_scanner/printer_scanner_response.dart';
import 'package:will_app/domain/contracts/services/printer_scanner_create_service.dart';

class PrinterScannerCreateService
    implements AbstractPrinterScannerCreateService {
  final AbstractAPIClient _apiClient;

  PrinterScannerCreateService({required AbstractAPIClient apiClient})
      : _apiClient = apiClient;

  @override
  Future<PrinterScannerResponse> call(
    String? token,
    PrinterScannerCreateRequest request,
  ) async {
    final client = await _apiClient.postPrinterScannerCreate(token, request);

    if (client.response.statusCode == 200) {
      return client.data;
    }

    throw DioError(requestOptions: client.response.requestOptions);
  }
}

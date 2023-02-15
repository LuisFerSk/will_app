import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:will_app/core/api/errors/failure.dart';
import 'package:will_app/core/app_mixin.dart';
import 'package:will_app/data/models/requests/printer_scanner/printer_scanner_request.dart';
import 'package:will_app/data/models/responses/printer_scanner/printer_scanner_response.dart';
import 'package:will_app/domain/contracts/repositories/abstract_printer_scanner_create_repository.dart';
import 'package:will_app/domain/contracts/services/printer_scanner_create_service.dart';

class PrinterScannerCreateRepository
    with ConnectivityMixin
    implements AbstractPrinterScannerCreateRepository {
  final AbstractPrinterScannerCreateService _printerScannerCreate;

  PrinterScannerCreateRepository(
      {required AbstractPrinterScannerCreateService printerScannerCreate})
      : _printerScannerCreate = printerScannerCreate;

  @override
  Future<Either<Failure, PrinterScannerResponse>> call(
    String? token,
    PrinterScannerCreateRequest request,
  ) async {
    if (await isInConnection()) {
      try {
        final client = await _printerScannerCreate(token, request);
        return Right(client);
      } on DioError catch (e) {
        return Left(ServerFailure(message: e.message));
      }
    }

    return const Left(NoConnectionFailure());
  }
}

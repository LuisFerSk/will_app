import 'package:will_app/data/services/maintenance_find_made_per_day/maintenance_find_made_per_day_service.dart';
import 'package:will_app/data/services/sign_in/sign_in_service.dart';
import 'package:will_app/data/services/verify_token/verify_token_service.dart';
import 'package:will_app/data/services/printer_scanner_create/printer_scanner_service.dart';
import 'package:will_app/domain/contracts/services/abstract_maintenance_find_made_per_day_services.dart';
import 'package:will_app/domain/contracts/services/abstract_sign_in_services.dart';
import 'package:will_app/domain/contracts/services/abstract_verify_token_services.dart';
import 'package:will_app/domain/contracts/services/printer_scanner_create_service.dart';

import 'client_module.dart';

mixin ServiceModule on ClientModule {
  AbstractSignInServices get signInService {
    return SignInService(apiClient: apiClient);
  }

  AbstractVerifyTokenServices get verifyTokenService {
    return VerifyTokenService(apiClient: apiClient);
  }

  AbstractMaintenanceFindMadePerDayServices
      get maintenanceFindMadePerDayService {
    return MaintenanceFindMadePerDayService(apiClient: apiClient);
  }

  AbstractPrinterScannerCreateService get printerScannerCreateService {
    return PrinterScannerCreateService(apiClient: apiClient);
  }
}

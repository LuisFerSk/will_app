import 'package:will_app/data/models/responses/maintenance_find_made_per_day/maintenance_find_made_per_day_response.dart';

abstract class AbstractMaintenanceFindMadePerDayServices {
  Future<MaintenanceFindMadePerDayResponse> call(String? token);
}

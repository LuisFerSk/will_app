import 'package:dartz/dartz.dart';

import 'package:will_app/core/api/errors/failure.dart';
import 'package:will_app/data/models/responses/maintenance_find_made_per_day/maintenance_find_made_per_day_response.dart';

abstract class AbstractMaintenanceFindMadePerDayRepository {
  Future<Either<Failure, MaintenanceFindMadePerDayResponse>> call(
      String? token);
}

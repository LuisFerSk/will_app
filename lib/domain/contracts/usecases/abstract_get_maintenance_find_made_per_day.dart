import 'package:dartz/dartz.dart';

import 'package:will_app/core/api/errors/failure.dart';
import 'package:will_app/domain/entities/maintenance_find_made_per_day.dart';

abstract class AbstractGetMaintenanceFindMadePerDay {
  Future<Either<Failure, MaintenanceFindMadePerDay>> call(String? token);
}

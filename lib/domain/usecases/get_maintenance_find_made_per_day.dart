import 'package:dartz/dartz.dart';

import 'package:will_app/core/api/errors/failure.dart';
import 'package:will_app/domain/contracts/repositories/abstract_maintenance_find_made_per_day_repository.dart';
import 'package:will_app/domain/contracts/usecases/abstract_get_maintenance_find_made_per_day.dart';
import 'package:will_app/domain/entities/maintenance_find_made_per_day.dart';

class GetMaintenanceFindMadePerDay
    implements AbstractGetMaintenanceFindMadePerDay {
  final AbstractMaintenanceFindMadePerDayRepository _maintenanceFindMadePerDay;

  GetMaintenanceFindMadePerDay(
      {required AbstractMaintenanceFindMadePerDayRepository
          maintenanceFindMadePerDay})
      : _maintenanceFindMadePerDay = maintenanceFindMadePerDay;

  @override
  Future<Either<Failure, MaintenanceFindMadePerDay>> call(String token) async {
    return _maintenanceFindMadePerDay(token);
  }
}

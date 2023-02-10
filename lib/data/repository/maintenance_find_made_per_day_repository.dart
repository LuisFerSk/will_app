import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:will_app/core/api/errors/failure.dart';
import 'package:will_app/core/app_mixin.dart';
import 'package:will_app/data/models/responses/maintenance_find_made_per_day/maintenance_find_made_per_day_response.dart';
import 'package:will_app/domain/contracts/repositories/abstract_maintenance_find_made_per_day_repository.dart';
import 'package:will_app/domain/contracts/services/abstract_maintenance_find_made_per_day_services.dart';

class MaintenanceFindMadePerDayRepository
    with ConnectivityMixin
    implements AbstractMaintenanceFindMadePerDayRepository {
  final AbstractMaintenanceFindMadePerDayServices _maintenanceFindMadePerDay;

  MaintenanceFindMadePerDayRepository(
      {required AbstractMaintenanceFindMadePerDayServices
          maintenanceFindMadePerDay})
      : _maintenanceFindMadePerDay = maintenanceFindMadePerDay;

  @override
  Future<Either<Failure, MaintenanceFindMadePerDayResponse>> call() async {
    if (await isInConnection()) {
      try {
        final client = await _maintenanceFindMadePerDay();
        return Right(client);
      } on DioError catch (e) {
        return Left(ServerFailure(message: e.message));
      }
    }

    return const Left(NoConnectionFailure());
  }
}

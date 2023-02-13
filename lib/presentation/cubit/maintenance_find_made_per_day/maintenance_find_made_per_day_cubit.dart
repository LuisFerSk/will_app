import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:will_app/core/api/errors/failure.dart';
import 'package:will_app/domain/contracts/usecases/abstract_get_maintenance_find_made_per_day.dart';
import 'package:will_app/domain/entities/maintenance_find_made_per_day.dart';

part 'maintenance_find_made_per_day_state.dart';

class MaintenanceFindMadePerDayCubit
    extends Cubit<MaintenanceFindMadePerDayState> {
  MaintenanceFindMadePerDayCubit(
      {required AbstractGetMaintenanceFindMadePerDay
          getMaintenanceFindMadePerDay})
      : _getMaintenanceFindMadePerDay = getMaintenanceFindMadePerDay,
        super(MaintenanceFindMadePerDayLoading());

  final AbstractGetMaintenanceFindMadePerDay _getMaintenanceFindMadePerDay;

  void getMaintenanceFindMadePerDay(String? token) async {
    emit(MaintenanceFindMadePerDayLoading());

    final response = await _getMaintenanceFindMadePerDay(token);

    emit(_failureOrSuccess(response));
  }

  MaintenanceFindMadePerDayState _failureOrSuccess(
    Either<Failure, MaintenanceFindMadePerDay> response,
  ) {
    return response.fold(
      (failure) =>
          MaintenanceFindMadePerDayFailure(mapFailureToMessage(failure)),
      (maintenanceFindMadePerDay) =>
          MaintenanceFindMadePerDaySuccess(maintenanceFindMadePerDay),
    );
  }
}

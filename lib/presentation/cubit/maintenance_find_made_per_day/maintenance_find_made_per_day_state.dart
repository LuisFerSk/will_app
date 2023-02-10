part of 'maintenance_find_made_per_day_cubit.dart';

abstract class MaintenanceFindMadePerDayState extends Equatable {
  const MaintenanceFindMadePerDayState();

  @override
  List<Object> get props => [];
}

class MaintenanceFindMadePerDayLoading extends MaintenanceFindMadePerDayState {}

class MaintenanceFindMadePerDaySuccess extends MaintenanceFindMadePerDayState {
  final MaintenanceFindMadePerDay maintenanceFindMadePerDay;

  const MaintenanceFindMadePerDaySuccess(this.maintenanceFindMadePerDay);

  @override
  List<Object> get props => [maintenanceFindMadePerDay];
}

class MaintenanceFindMadePerDayFailure extends MaintenanceFindMadePerDayState {
  final String message;

  const MaintenanceFindMadePerDayFailure(this.message);

  @override
  List<Object> get props => [message];
}

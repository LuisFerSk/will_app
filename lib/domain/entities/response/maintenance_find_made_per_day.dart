import 'package:will_app/domain/entities/response/response.dart';

class MaintenanceFindMadePerDay extends Response {
  MaintenanceFindMadePerDay({
    required String status,
    required String message,
    required this.info,
  }) : super(status: status, message: message);

  final List<Info> info;
}

class Info {
  Info({
    required this.date,
    required this.count,
  });

  final DateTime date;
  final int count;
}

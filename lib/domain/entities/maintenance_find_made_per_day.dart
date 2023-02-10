class MaintenanceFindMadePerDay {
  MaintenanceFindMadePerDay({
    required this.status,
    required this.message,
    required this.info,
  });

  final String status;
  final String message;
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

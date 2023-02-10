import 'package:dio/dio.dart';

import 'package:will_app/core/api/abstract_api_client.dart';
import 'package:will_app/data/models/responses/maintenance_find_made_per_day/maintenance_find_made_per_day_response.dart';
import 'package:will_app/domain/contracts/services/abstract_maintenance_find_made_per_day_services.dart';

class MaintenanceFindMadePerDayService
    implements AbstractMaintenanceFindMadePerDayServices {
  final AbstractAPIClient _apiClient;

  MaintenanceFindMadePerDayService({required AbstractAPIClient apiClient})
      : _apiClient = apiClient;

  @override
  Future<MaintenanceFindMadePerDayResponse> call(String token) async {
    final client = await _apiClient.getMaintenanceFindMadePerDay(token);

    if (client.response.statusCode == 200) {
      return client.data;
    }

    throw DioError(requestOptions: client.response.requestOptions);
  }
}

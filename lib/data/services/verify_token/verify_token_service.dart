import 'package:dio/dio.dart';

import 'package:will_app/core/api/abstract_api_client.dart';
import 'package:will_app/data/models/responses/verify_token/verify_token_response.dart';
import 'package:will_app/domain/contracts/services/abstract_verify_token_services.dart';

class VerifyTokenService implements AbstractVerifyTokenServices {
  final AbstractAPIClient _apiClient;

  VerifyTokenService({required AbstractAPIClient apiClient})
      : _apiClient = apiClient;

  @override
  Future<VerifyTokenResponse> call(String token) async {
    final client = await _apiClient.getVerifyToken(token);

    if (client.response.statusCode == 200) {
      return client.data;
    }

    throw DioError(requestOptions: client.response.requestOptions);
  }
}

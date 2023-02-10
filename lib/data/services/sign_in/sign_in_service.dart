import 'package:dio/dio.dart';

import 'package:will_app/core/api/abstract_api_client.dart';
import 'package:will_app/data/models/requests/user/user_request.dart';
import 'package:will_app/data/models/responses/sing_in/sing_in_response.dart';
import 'package:will_app/domain/contracts/services/abstract_sign_in_services.dart';

class SignInService implements AbstractSignInServices {
  final AbstractAPIClient _apiClient;

  SignInService({required AbstractAPIClient apiClient})
      : _apiClient = apiClient;

  @override
  Future<SignInResponse> call(UserRequest request) async {
    final client = await _apiClient.postSignIn(request);

    if (client.response.statusCode == 200) {
      return client.data;
    }

    throw DioError(requestOptions: client.response.requestOptions);
  }
}

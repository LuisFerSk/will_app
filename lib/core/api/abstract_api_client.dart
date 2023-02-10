import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;

import 'package:will_app/data/models/requests/user/user_request.dart';
import 'package:will_app/data/models/responses/sing_in/sing_in_response.dart';

part 'abstract_api_client.g.dart';

@RestApi()
abstract class AbstractAPIClient {
  factory AbstractAPIClient(Dio dio, {String baseUrl}) = _AbstractAPIClient;

  @POST('/signin')
  Future<HttpResponse<SignInResponse>> postSignIn(@Body() UserRequest request);

  // @GET('/maintenance/find-made-per-day')
  // Future<HttpResponse<SignInResponse>> postSignIn(@Body() UserRequest request);
}

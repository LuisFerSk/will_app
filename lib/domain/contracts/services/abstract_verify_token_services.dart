import 'package:will_app/data/models/responses/verify_token/verify_token_response.dart';

abstract class AbstractVerifyTokenServices {
  Future<VerifyTokenResponse> call(String? token);
}

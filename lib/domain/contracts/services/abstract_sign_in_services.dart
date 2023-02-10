import 'package:will_app/data/models/requests/user/user_request.dart';
import 'package:will_app/data/models/responses/sing_in/sing_in_response.dart';

abstract class AbstractSignInServices {
  Future<SignInResponse> call(UserRequest request);
}

import 'package:will_app/core/api/abstract_api_client.dart';
import 'package:will_app/core/api/api_client.dart';

import 'config_module.dart';

mixin ClientModule on ConfigModule {
  AbstractAPIClient get apiClient {
    return APIClient.apiClient(
      baseDomain: appConfig.baseDomain,
    );
  }
}

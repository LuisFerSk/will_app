import 'package:will_app/presentation/utils/preferences/preferences.dart';

class TokenPreferences {
  static const _key = 'token';

  static void setToken(String token) => Preferences.setPreference(_key, token);

  static Future<String?> getToken() => Preferences.getPreference(_key);
}

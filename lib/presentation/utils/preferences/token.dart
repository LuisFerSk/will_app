import 'package:will_app/presentation/utils/preferences/preferences.dart';

class TokenPreferences {
  static const _tokenKey = 'token';

  static Future<void> setToken(String token) =>
      Preferences.setPreference(_tokenKey, token);

  static Future<String?> getToken() => Preferences.getPreference(_tokenKey);

  static Future<bool> removeToken() => Preferences.removePreference(_tokenKey);
}

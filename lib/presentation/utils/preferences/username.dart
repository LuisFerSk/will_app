import 'package:will_app/presentation/utils/preferences/preferences.dart';

class UsernamePreferences {
  static const _key = 'username';

  static void setUsername(String username) =>
      Preferences.setPreference(_key, username);

  static Future<String?> getUsername() => Preferences.getPreference(_key);
}

import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static Future<void> setPreference(String key, String value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    await preferences.setString(key, value);
  }

  static Future<String?> getPreference(String key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    return preferences.getString(key);
  }

  static Future<bool> removePreference(String key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    return preferences.remove(key);
  }
}
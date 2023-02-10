import 'package:shared_preferences/shared_preferences.dart';

mixin TokenPreferencesMixin {
  final _tokenKey = 'token';

  Future<void> setToken(String token) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    await preferences.setString(_tokenKey, token);
  }

  Future<String?> getToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    return preferences.getString(_tokenKey);
  }
}

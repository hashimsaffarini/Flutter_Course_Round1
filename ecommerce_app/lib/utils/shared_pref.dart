import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static late SharedPreferences _instance;

  static Future<void> init() async {
    /// create an instance of SharedPreferences
    _instance = await SharedPreferences.getInstance();
  }

  static setBool(String key, bool value) {
    _instance.setBool(key, value);
  }

  static getBool(String key) {
    return _instance.getBool(key) ?? false;
  }
}

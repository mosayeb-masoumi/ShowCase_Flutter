import 'package:shared_preferences/shared_preferences.dart';

class SharePreference{

  static SharedPreferences? _prefs;

  // call this method from iniState() function of mainApp().
  static Future<SharedPreferences?> init() async {
    _prefs = await SharedPreferences.getInstance();
    return _prefs;
  }


  static Future<bool?> setFirstTimeOpening(bool value) async => await _prefs?.setBool("first_time" , value);
  static bool? getFirstTimeOpening() => _prefs?.getBool("first_time") ?? true;  // default value is true




}
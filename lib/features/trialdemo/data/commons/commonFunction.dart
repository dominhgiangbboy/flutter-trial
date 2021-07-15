import 'package:shared_preferences/shared_preferences.dart';

class CommonFunction {
  /*
  * Shared preferences
   */
  static void setSharedPreferences(String key, String value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(key, value);
  }
}

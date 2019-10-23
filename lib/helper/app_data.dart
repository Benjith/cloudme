import 'package:shared_preferences/shared_preferences.dart';

class AppData {
  static SharedPreferences prefs;
  static bool isLoggedIN;

  static void checkIfLogged() async {
    bool islogin = prefs.getBool('login');
    if (islogin == true) {
      isLoggedIN = true;
    } else {
      isLoggedIN = false;
    }
  }
}

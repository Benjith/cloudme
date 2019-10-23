import 'package:shared_preferences/shared_preferences.dart';

class AppData {
  static bool isLogged;
  static SharedPreferences prefs;
static String apiURL = 'https://dev.cloudmesoft.com/api';
  static void isLoggedIN() {
    isLogged = prefs.getBool('isLogged');
  }
}

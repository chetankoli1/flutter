import 'package:shared_preferences/shared_preferences.dart';

class Constants {
  Future createSessson(bool key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool("loggedIn", key);
  }

  Future getSesson() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.getBool("loggedIn");
  }

  Future removeSesson() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove("loggedIn");
  }
}

import 'package:shared_preferences/shared_preferences.dart';

class Preferences {
  static late SharedPreferences _prefs;
  static String _nombre = '';
  static bool _Darkmode = false;
  static int _genero = 1;
  static Future init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static String get nombre {
    return _prefs.getString('nombre') ?? _nombre;
  }

  static set nombre(String nombre) {
    _nombre = nombre;
    _prefs.setString('nombre', nombre);
  }

  static bool get darkMode {
    return _prefs.getBool('darkMode') ?? _Darkmode;
  }

  static set darkMode(bool value) {
    _Darkmode = value;
    _prefs.setBool('darkMode', value);
  }

  static int get genero {
    return _prefs.getInt('genero') ?? _genero;
  }

  static set genero(int value) {
    _genero = value;
    _prefs.setInt('genero', value);
  }
}

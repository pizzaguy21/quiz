import 'package:flutter/material.dart';

class ThemeFontProvider with ChangeNotifier {
  // Index untuk memilih theme (0: Theme A, 1: Theme B, 2: Theme C)
  int _themeIndex = 0;
  // Index untuk memilih font (0: Font A, 1: Font B, 2: Font C)
  int _fontIndex = 0;

  // Getter untuk theme index
  int get themeIndex => _themeIndex;
  // Getter untuk font index
  int get fontIndex => _fontIndex;

  // Fungsi untuk mengganti tema
  void changeTheme(int newIndex) {
    _themeIndex = newIndex;
    notifyListeners();
  }

  // Fungsi untuk mengganti font
  void changeFont(int newIndex) {
    _fontIndex = newIndex;
    notifyListeners();
  }

  // Menyediakan theme sesuai dengan index
  ThemeData get theme {
    switch (_themeIndex) {
      case 1:
        return ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.blue[50],  // background untuk scaffold
          buttonTheme: ButtonThemeData(buttonColor: Colors.blueAccent),
        );
      case 2:
        return ThemeData(
          primarySwatch: Colors.green,
          scaffoldBackgroundColor: Colors.green[50],  // background untuk scaffold
          buttonTheme: ButtonThemeData(buttonColor: Colors.greenAccent),
        );
      default:
        return ThemeData(
          primarySwatch: Colors.orange,
          scaffoldBackgroundColor: Colors.orange[50],  // background untuk scaffold
          buttonTheme: ButtonThemeData(buttonColor: Colors.orangeAccent),
        );
    }
  }

  // Menyediakan font sesuai dengan index
  TextStyle get textStyle {
    switch (_fontIndex) {
      case 1:
        return TextStyle(fontFamily: 'Roboto');
      case 2:
        return TextStyle(fontFamily: 'Lora');
      default:
        return TextStyle(fontFamily: 'Poppins');
    }
  }
}

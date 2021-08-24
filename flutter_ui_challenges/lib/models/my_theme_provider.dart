import 'package:flutter/material.dart';

class MyThemeProvider extends ChangeNotifier {
  bool _isLightTheme = true;
  bool get isLightTheme => _isLightTheme;

  void changeTheme() {
    _isLightTheme = !_isLightTheme;
    notifyListeners();
  }
}

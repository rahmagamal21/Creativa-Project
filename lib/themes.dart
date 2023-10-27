import 'package:creativa_courses_app/constants.dart';
import 'package:flutter/material.dart';

class MyThemes {
  //static const primary =Colors.blue ;
  static final primaryColor = Colors.blue.shade300;

  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    primaryColorDark: blue  ,
    colorScheme: ColorScheme.dark(primary: blue),
    dividerColor: Colors.white,

  );

  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: blue,
    colorScheme: ColorScheme.light(primary: blue),
    dividerColor: Colors.black,

  );
}

class DarkThemeProvider extends ChangeNotifier {
  bool isSwitched = false;
  void toggleSwitch() {
    isSwitched==true?isSwitched=false:isSwitched=true;
    notifyListeners();
  }
}

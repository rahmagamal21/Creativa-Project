import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:creativa_courses_app/constants.dart';
import 'package:creativa_courses_app/themes.dart';
import 'package:flutter/material.dart';

import 'Pages/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
        initTheme: isDarkMode ? MyThemes.darkTheme : MyThemes.lightTheme,
        builder: (context, myTheme) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            /*theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),*/
            theme: myTheme,
            title: 'Creativa Courses',
            home: const CustomSplashScreen(),
          );
        });
  }
}

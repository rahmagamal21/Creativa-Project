
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:creativa_courses_app/Pages/login_page.dart';

import 'package:flutter/material.dart';

class CustomSplashScreen extends StatelessWidget {
  const CustomSplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return AnimatedSplashScreen(
      // duration: for the screen appearance duration
      duration: 1300,
      splash:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset('assets/images/Logo.png'),
      ),
      nextScreen: const LoginScreen(),
      splashIconSize: 400,
      splashTransition: SplashTransition.fadeTransition,
      //for the fadeTransition ( splashTransition ) duration
      animationDuration: const Duration(seconds:1),
      backgroundColor: Colors.white,
    );
  }
}
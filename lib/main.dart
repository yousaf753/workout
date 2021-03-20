import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:hassan/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
            duration: 1000,
            splash: Container(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                'assets/images/splash.png',
                fit: BoxFit.contain,
              ),
            ),
            nextScreen: Main_Page(),
            splashTransition: SplashTransition.rotationTransition,
            backgroundColor: Colors.red));
  }
}

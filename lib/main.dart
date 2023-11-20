import 'package:builders/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
        splash: Image.asset(
          "assets/appstore.png",
        ),
        splashIconSize: 100,
        //home: showOnboarding ? OnboardingScreen() : HomeScreen(),
        nextScreen: HomePage(),
        splashTransition: SplashTransition.scaleTransition,

        //backgroundColor: Colors.orange,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

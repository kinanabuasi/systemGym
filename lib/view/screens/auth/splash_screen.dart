import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../public/insight_screen.dart';
import 'introduction_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedSplashScreen(
      splash: Image.asset(
        "assets/images/main_logo.png",
        fit: BoxFit.fill,
      ),
      nextScreen: IntroductionScreen(),
      splashTransition: SplashTransition.rotationTransition,
      splashIconSize: 250,
      duration: 2000,
      curve: Curves.fastOutSlowIn,
      backgroundColor: mainColor,
      animationDuration: const Duration(seconds: 2),
    ));
  }
}

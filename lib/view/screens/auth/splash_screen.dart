import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:systemgym/view/screens/auth/introduction_screen.dart';

import '../../../constants/colors.dart';
import '../profile/profilee_screen.dart';
import '../public/home/notifications_screen.dart';
import '../public/insight_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedSplashScreen(
      splash: Image.asset(
        "assets/images/logo.png",
        fit: BoxFit.fill,
      ),
      nextScreen: InsightScreen(),
      splashTransition: SplashTransition.rotationTransition,
      splashIconSize: 200,
      duration: 2500,
      curve: Curves.fastOutSlowIn,
      backgroundColor: mainColor,
      animationDuration: const Duration(seconds: 2),
    ));
  }
}

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/routes.dart';

import '../../../constants/colors.dart';
import '../public/insight_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _action();
    super.initState();
  }

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

  _action() async {
    Future.delayed(const Duration(seconds: 2), () => Get.toNamed(Routes.howToLoginScreen));
  }
}

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/data/remote/auth_remote.dart';
import 'package:systemgym/view/screens/auth/how_to_login_screen.dart';

import '../../../constants/colors.dart';
import '../../../data/local/auth_local.dart';
import '../public/home/home_admin_screen.dart';
import 'introduction_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final AuthLocalDataSource _authLocalDataSource = AuthLocalDataSource();
  final AuthRemoteDataSource _authRemoteDataSource = AuthRemoteDataSource();
  int counter = 0;

  @override
  void initState() {
    _action();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedSplashScreen.withScreenFunction(
      splash: Image.asset(
        "assets/images/main_logo.png",
        fit: BoxFit.fill,
      ),
      screenFunction: () => _action(),
      splashTransition: SplashTransition.rotationTransition,
      splashIconSize: 250,
      duration: 2000,
      curve: Curves.fastOutSlowIn,
      backgroundColor: mainColor,
      animationDuration: const Duration(seconds: 2),
    ));
  }

  // _action() async {
  //   Future.delayed(const Duration(seconds: 2), () => Get.toNamed(Routes.howToLoginScreen));
  // }

  Widget _getIntroHistory() {
    String? intro;
    final data = _authLocalDataSource.getIntro();
    data.fold((l) => intro = '0', (r) => intro = r);
    if (intro == '1') return const HowToLoginScreen();
    return const IntroductionScreen();
  }

  String? _getToken() {
    String? token;
    final data = _authLocalDataSource.getToken();
    data.fold((l) => null, (r) => token = r);
    return token;
  }

  Future<Widget> _action() async {
    String? token = _getToken();
    if (token != null) {
      await refreshToken();
      return const HomeAdminScreen();
    } else {
      return _getIntroHistory();
    }
  }

  refreshToken() async {
    final data = await _authRemoteDataSource.adminRefresh();
    data.fold((l) {
      if (counter < 2) {
        refreshToken();
        counter++;
      } else {
        Get.to(() => const HowToLoginScreen());
      }
    }, (r) => null);
  }
}

import 'package:get/get.dart';
import '../logic/bindings/auth/verification_binding.dart';
import '../view/screens/auth/forgot_password_screen.dart';
import '../view/screens/auth/introduction_screen.dart';
import '../view/screens/auth/sign_in_screen.dart';
import '../view/screens/auth/sign_up_screen.dart';
import '../view/screens/auth/splash_screen.dart';
import '../view/screens/auth/verification_screen.dart';

class AppRoutes {
  static const splash = Routes.splashScreen;

  static final routes = [
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.introduction,
      page: () => IntroductionScreen(),
    ),
    GetPage(
        name: Routes.signIn,
        page: () => const SignInScreen(),
        transition: Transition.rightToLeft,
        transitionDuration: const Duration(milliseconds: 300)),
    GetPage(
        name: Routes.signUp,
        page: () => const SignUpScreen(),
        transition: Transition.downToUp,
        transitionDuration: const Duration(milliseconds: 300)),
    GetPage(
        name: Routes.forgotPassword,
        page: () => const ForgotPasswordScreen(),
        transition: Transition.fadeIn,
        transitionDuration: const Duration(milliseconds: 300)),
    GetPage(
        name: Routes.verificationScreen,
        page: () => const VerificationScreen(),
        transition: Transition.zoom,
        binding: VerificationBinding(),
        transitionDuration: const Duration(milliseconds: 300)),
  ];
}

class Routes {
  static const splashScreen = '/splashScreen';
  static const introduction = '/introduction';
  static const signIn = '/signIn';
  static const signUp = '/signUp';
  static const forgotPassword = '/forgotPassword';
  static const verificationScreen = '/verificationScreen';
}

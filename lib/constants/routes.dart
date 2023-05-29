// ignore_for_file: constant_identifier_names, prefer_const_constructors

import 'package:get/get.dart';
import 'package:systemgym/logic/bindings/other/add_products_binding.dart';
import 'package:systemgym/view/screens/other/add_products_screen.dart';
import '../logic/bindings/auth/verification_binding.dart';
import '../view/screens/auth/player_auth/choose_age_screen.dart';
import '../view/screens/auth/player_auth/choose_gender_screen.dart';
import '../view/screens/auth/forgot_password_screen.dart';
import '../view/screens/auth/introduction_screen.dart';
import '../view/screens/auth/player_auth/sign_in_as_player_screen.dart';
import '../view/screens/auth/sign_in_screen.dart';
import '../view/screens/auth/sign_up_screen.dart';
import '../view/screens/auth/splash_screen.dart';
import '../view/screens/auth/verification_screen.dart';
import '../view/screens/public/add_new_department_screen.dart';
import '../view/screens/public/adding_an_employee_screen.dart';
import '../view/screens/public/all_department_screen.dart';
import '../view/screens/public/modify_club_settings_screen.dart';
import '../view/screens/public/trainer_detail_screen.dart';
import '../view/screens/public/workout_plan_today_screen.dart';

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
    GetPage(
      name: Routes.addProducts,
      page: () => AddProductScreen(),
      binding: AddProductsBinding(),
    ),
    GetPage(
      name: Routes.modifyClubSettings,
      page: () => ModifyClubSettingsScreen(),
    ),
    GetPage(
      name: Routes.addNewDepartment,
      page: () => AddNewDepartmentScreen(),
    ),
    GetPage(
      name: Routes.allDepartment,
      page: () => AllDepartmentScreen(),
    ),
    GetPage(
      name: Routes.trainerDetail,
      page: () => TrainerDetailScreen(),
    ),
    GetPage(
      name: Routes.workoutPlanToday,
      page: () => WorkoutPlanTodayScreen(),
    ),
    GetPage(
      name: Routes.signInAsPlayer,
      page: () => SignInAsPlayerScreen(),
    ),
    GetPage(
      name: Routes.chooseGender,
      page: () => ChooseGenderScreen(),
    ),
    GetPage(
      name: Routes.chooseAge,
      page: () => ChooseAgeScreen(),
    ),
    GetPage(
      name: Routes.adding_an_employee_Screen,
      page: () => adding_an_employee_Screen(),
    ),
  ];
}

class Routes {
  static const splashScreen = '/splashScreen';
  static const introduction = '/introduction';
  static const signIn = '/signIn';
  static const signInAsPlayer = '/signInAsPlayer';
  static const signUp = '/signUp';
  static const forgotPassword = '/forgotPassword';
  static const verificationScreen = '/verificationScreen';
  static const addProducts = '/addProducts';
  static const modifyClubSettings = '/modifyClubSettings';
  static const addNewDepartment = '/addNewDepartment';
  static const allDepartment = '/allDepartment';
  static const trainerDetail = '/trainerDetail';
  static const workoutPlanToday = '/workoutPlanToday';
  static const chooseGender = '/chooseGender';
  static const chooseAge = '/chooseAge';
  static const adding_an_employee_Screen = '/adding_an_employee_Screen';
}

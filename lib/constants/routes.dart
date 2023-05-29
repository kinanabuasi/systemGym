// ignore_for_file: constant_identifier_names, prefer_const_constructors

import 'package:get/get.dart';
import 'package:systemgym/logic/bindings/other/add_products_binding.dart';
import 'package:systemgym/view/screens/other/add_products_screen.dart';
import '../logic/bindings/auth/verification_binding.dart';
import '../view/screens/auth/player_auth/choose_age_screen.dart';
import '../view/screens/auth/player_auth/choose_gender_screen.dart';
import '../view/screens/auth/forgot_password_screen.dart';
import '../view/screens/auth/introduction_screen.dart';
import '../view/screens/auth/player_auth/choose_goal_screen.dart';
import '../view/screens/auth/player_auth/choose_height_screen.dart';
import '../view/screens/auth/player_auth/choose_level_screen.dart';
import '../view/screens/auth/player_auth/choose_weight_screen.dart';
import '../view/screens/auth/player_auth/sign_in_as_player_screen.dart';
import '../view/screens/auth/sign_in_screen.dart';
import '../view/screens/auth/sign_up_screen.dart';
import '../view/screens/auth/splash_screen.dart';
import '../view/screens/auth/verification_screen.dart';
import '../view/screens/profile/edit_profile_screen.dart';
import '../view/screens/public/add_new_department_screen.dart';
import '../view/screens/public/adding_an_employee_screen.dart';
import '../view/screens/public/all_department_screen.dart';
import '../view/screens/public/modify_club_settings_screen.dart';
import '../view/screens/public/trainer_detail_screen.dart';
import '../view/screens/public/workout_plan_today_screen.dart';
import '../view/screens/settings/contact_us_screen.dart';
import '../view/screens/settings/language_screen.dart';
import '../view/screens/settings/notifications_screen.dart';
import '../view/screens/settings/privacy_policy_screen.dart';
import '../view/screens/settings/settings_screen.dart';
import '../view/screens/settings/units_of_measure_screen.dart';

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
      name: Routes.chooseWeight,
      page: () => ChooseWeightScreen(),
    ),
    GetPage(
      name: Routes.chooseHeight,
      page: () => ChooseHeightScreen(),
    ),
    GetPage(
      name: Routes.chooseGoal,
      page: () => ChooseGoalScreen(),
    ),
    GetPage(
      name: Routes.chooseLevel,
      page: () => ChooseLevelScreen(),
    ),
    GetPage(
      name: Routes.adding_an_employee_Screen,
      page: () => adding_an_employee_Screen(),
    ),
    GetPage(
      name: Routes.settingsScreen,
      page: () => SettingsScreen(),
    ),
    GetPage(
      name: Routes.unitsOfMeasureScreen,
      page: () => UnitsOfMeasureScreen(),
    ),
    GetPage(
      name: Routes.notificationsScreen,
      page: () => NotificationsScreen(),
    ),
    GetPage(
      name: Routes.languageScreen,
      page: () => LanguageScreen(),
    ),
    GetPage(
      name: Routes.contactUsScreen,
      page: () => ContactUsScreen(),
    ),
    GetPage(
      name: Routes.privacyPolicyScreen,
      page: () => PrivacyPolicyScreen(),
    ),
    GetPage(
      name: Routes.editProfileScreen,
      page: () => EditProfileScreen(),
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
  static const chooseWeight = '/chooseWeight';
  static const chooseHeight = '/chooseHeight';
  static const chooseGoal = '/chooseGoal';
  static const chooseLevel = '/chooseLevel';
  static const adding_an_employee_Screen = '/adding_an_employee_Screen';
  static const settingsScreen = '/settingsScreen';
  static const unitsOfMeasureScreen = '/unitsOfMeasureScreen';
  static const notificationsScreen = '/notificationsScreen';
  static const languageScreen = '/languageScreen';
  static const contactUsScreen = '/contactUsScreen';
  static const privacyPolicyScreen = '/privacyPolicyScreen';
  static const editProfileScreen = '/editProfileScreen';
}

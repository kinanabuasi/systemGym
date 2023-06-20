// ignore_for_file: constant_identifier_names, prefer_const_constructors

import 'package:get/get.dart';
import 'package:systemgym/logic/bindings/other/add_products_binding.dart';
import 'package:systemgym/view/screens/other/add_products_screen.dart';

import '../logic/bindings/auth/sign_in_binding.dart';
import '../logic/bindings/auth/sign_up_bindind.dart';
import '../logic/bindings/auth/verification_binding.dart';
import '../logic/bindings/public/modify_club_settings_binding.dart';
import '../view/screens/auth/forgot_password_screen.dart';
import '../view/screens/auth/how_to_login_screen.dart';
import '../view/screens/auth/introduction_screen.dart';
import '../view/screens/auth/player_auth/choose_age_screen.dart';
import '../view/screens/auth/player_auth/choose_gender_screen.dart';
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
import '../view/screens/profile/pro_profile_screen.dart';
import '../view/screens/profile/profilee_screen.dart';
import '../view/screens/public/add_new_department_screen.dart';
import '../view/screens/public/adding_an_employee_screen.dart';
import '../view/screens/public/all_department_screen.dart';
import '../view/screens/public/diet_plan_screen.dart';
import '../view/screens/public/insight_screen.dart';
import '../view/screens/public/modify_club_settings_screen.dart';
import '../view/screens/public/payment/add_new_card_screen.dart';
import '../view/screens/public/payment/edit_card_screen.dart';
import '../view/screens/public/payment/payment_completed_screen.dart';
import '../view/screens/public/payment/payment_screen.dart';
import '../view/screens/public/player_screens/fitness_trainers_screen.dart';
import '../view/screens/public/player_screens/home_player_screen.dart';
import '../view/screens/public/player_screens/notifications_player_screen.dart';
import '../view/screens/public/player_screens/workout_categories_screen.dart';
import '../view/screens/public/reviews/reviews_screen.dart';
import '../view/screens/public/reviews/write_review_screen.dart';
import '../view/screens/public/trainer_detail_screen.dart';
import '../view/screens/public/trainer_screens/home_tainer_screen.dart';
import '../view/screens/public/workout_plan_today_screen.dart';
import '../view/screens/settings/contact_us_screen.dart';
import '../view/screens/settings/language_screen.dart';
import '../view/screens/settings/notifications_settings_screen.dart';
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
    GetPage(name: Routes.signIn, page: () => SignInScreen(), binding: SignInBinding(), transition: Transition.rightToLeft, transitionDuration: const Duration(milliseconds: 300)),
    GetPage(name: Routes.signUp, page: () => SignUpScreen(), binding: SignUpBinding(), transition: Transition.downToUp, transitionDuration: const Duration(milliseconds: 300)),
    GetPage(name: Routes.forgotPassword, page: () => const ForgotPasswordScreen(), transition: Transition.fadeIn, transitionDuration: const Duration(milliseconds: 300)),
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
      binding: ModifyClubSettingsBinding(),
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
      name: Routes.notificationsSettingsScreen,
      page: () => NotificationsSettingsScreen(),
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
    GetPage(
      name: Routes.reviewsScreen,
      page: () => ReviewsScreen(),
    ),
    GetPage(
      name: Routes.writeReviewsScreen,
      page: () => WriteReviewsScreen(),
    ),
    GetPage(
      name: Routes.paymentScreen,
      page: () => PaymentScreen(),
    ),
    GetPage(
      name: Routes.editCardScreen,
      page: () => EditCardScreen(),
    ),
    GetPage(
      name: Routes.addNewCardScreen,
      page: () => AddNewCardScreen(),
    ),
    GetPage(
      name: Routes.paymentCompletedScreen,
      page: () => PaymentCompletedScreen(),
    ),
    GetPage(
      name: Routes.proProfileScreen,
      page: () => ProProfileScreen(),
    ),
    GetPage(
      name: Routes.profileScreen,
      page: () => ProfileScreen(),
    ),
    GetPage(
      name: Routes.howToLoginScreen,
      page: () => HowToLoginScreen(),
    ),
    GetPage(
      name: Routes.insightScreen,
      page: () => InsightScreen(),
    ),
    GetPage(
      name: Routes.notificationsPlayerScreen,
      page: () => NotificationsPlayerScreen(),
    ),
    GetPage(
      name: Routes.fitnessTrainersScreen,
      page: () => FitnessTrainersScreen(),
    ),
    GetPage(
      name: Routes.dietPlanScreen,
      page: () => DietPlanScreen(),
    ),
    GetPage(
      name: Routes.workoutCategoriesScreen,
      page: () => WorkoutCategoriesScreen(),
    ),
    GetPage(
      name: Routes.homePlayerScreen,
      page: () => HomePlayerScreen(),
    ),
    GetPage(
      name: Routes.homeTrainerScreen,
      page: () => HomeTrainerScreen(),
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
  static const notificationsSettingsScreen = '/notificationsSettingsScreen';
  static const languageScreen = '/languageScreen';
  static const contactUsScreen = '/contactUsScreen';
  static const privacyPolicyScreen = '/privacyPolicyScreen';
  static const editProfileScreen = '/editProfileScreen';
  static const reviewsScreen = '/reviewsScreen';
  static const writeReviewsScreen = '/WriteReviewsScreen';
  static const paymentScreen = '/paymentScreen';
  static const editCardScreen = '/editCardScreen';
  static const addNewCardScreen = '/addNewCardScreen';
  static const paymentCompletedScreen = '/paymentCompletedScreen';
  static const proProfileScreen = '/proProfileScreen';
  static const profileScreen = '/profileScreen';
  static const howToLoginScreen = '/howToLoginScreen';
  static const insightScreen = '/insightScreen';
  static const notificationsPlayerScreen = '/notificationsPlayerScreen';
  static const workoutCategoriesScreen = '/workoutCategoriesScreen';
  static const fitnessTrainersScreen = '/fitnessTrainersScreen';
  static const dietPlanScreen = '/dietPlanScreen';
  static const homePlayerScreen = '/homePlayerScreen';
  static const homeTrainerScreen = '/homeTrainerScreen';
}

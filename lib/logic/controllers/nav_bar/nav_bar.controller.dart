import 'package:get/get.dart';

import '../../../view/screens/public/home/notifications_screen.dart';
import '../../../view/screens/public/person_daily_program_screen.dart';
import '../../../view/screens/public/sessions_screen.dart';

class NavBarController extends GetxController {
  bool allowExit = false;

  List pages = [
    person_daily_program_Screen(),
    SessionsScreen(),
    SessionsScreen(),
    NotificatiosScreen(),
  ];
  RxInt index = 1.obs;
}

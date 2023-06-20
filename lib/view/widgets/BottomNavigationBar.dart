// ignore_for_file: unused_import, unused_field, prefer_final_fields, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/public/diet_plan_screen.dart';
import '../screens/public/home/Home_view.dart';
import '../screens/public/notifications_screen.dart';
import '../screens/public/sessions_screen.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  CustomBottomNavigationBar({super.key});

  final RxInt currentIndex = 0.obs;

  final List<Widget> pagesChildren = [
    Home_View_Screen(),
    SessionsScreen(),
    DietPlanScreen(),
    Notification_screen(),
  ];
  final List<String> pagesTitles = [
    'Home',
    'Sessions',
    'Notifications',
    'Diet Plan',
  ];
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

Widget getIconForPage(int index) {
  switch (index) {
    case 0:
      return Icon(Icons.home);
    case 1:
      return Icon(Icons.schedule);
    case 2:
      return Icon(Icons.notifications);
    case 3:
      return Icon(Icons.restaurant_menu);
    default:
      return SizedBox.shrink();
  }
}

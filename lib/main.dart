// ignore_for_file: unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/view/screens/public/All%20%20employee_screen.dart';
import 'package:systemgym/view/screens/public/adding_a_coach_screen.dart';
import 'package:systemgym/view/screens/public/adding_a_trainer_screen.dart';
import 'package:systemgym/view/screens/public/adding_an_employee.dart';
import 'constants/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Adding_a_trainer_Screen(),
        // adding_an_employee_Screen(),
        //ChampionshipResultsScreen(), //for debugging
        theme: ThemeData(fontFamily: 'Poppins'),
        // initialRoute: Routes.splashScreen,
        // getPages: AppRoutes.routes
        );
  }
}

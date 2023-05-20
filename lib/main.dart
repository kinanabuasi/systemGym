import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
      debugShowCheckedModeBanner: true,
      initialRoute: Routes.splashScreen,
      getPages: AppRoutes.routes,
    );
  }
}

// first push ...
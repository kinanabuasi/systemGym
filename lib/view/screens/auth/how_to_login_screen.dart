import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../constants/routes.dart';

class HowToLoginScreen extends StatelessWidget {
  const HowToLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        body: Column(
          children: [
            SizedBox(height: 200),
            TextButton(
                onPressed: () {
                  Get.toNamed(Routes.signInAsPlayer);
                },
                child: Text("As Player")),
            TextButton(
                onPressed: () {
                  Get.toNamed(Routes.signIn);
                },
                child: Text("As Trainer")),
          ],
        ));
  }
}

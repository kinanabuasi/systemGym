import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/routes.dart';

class SignInController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  validateLogin() {
    var formData = formKey.currentState;
    if (formData?.validate() == true) {
      Get.toNamed(Routes.modifyClubSettings);
    }
  }
}

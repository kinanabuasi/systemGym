import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/routes.dart';

class SignUpController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController clubNameController = TextEditingController();
  TextEditingController subsecriptionPeriodController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  validateLogin() {
    var formData = formKey.currentState;
    if (formData?.validate() == true) {
      Get.toNamed(Routes.workoutPlanToday);
    }
  }
}

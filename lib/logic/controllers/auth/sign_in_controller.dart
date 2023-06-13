// ignore_for_file: unused_field, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/api_links.dart';

import '../../../services/api_services.dart';

class SignInController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  /*  validateLogin() {
    var formData = formKey.currentState;
    if (formData?.validate() == true) {
      Get.toNamed(Routes.modifyClubSettings);
    }
  } */
  Future<void> validateLogin() async {
    var formData = formKey.currentState;

    if (formData?.validate() == true) {
      var url = ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login;

      Map map = {'email': emailController.text, 'password': passwordController.text};

      ApiServices().postRequest(url, map);

      update();
    }
  }
}

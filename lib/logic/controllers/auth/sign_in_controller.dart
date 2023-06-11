// ignore_for_file: unused_field, avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/api_links.dart';
import 'package:http/http.dart' as http;
import '../../../constants/colors.dart';
import '../../../constants/routes.dart';
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
      var url =
          Uri.parse(ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login)
              .toString();

      Map map = {
        'email': emailController.text,
        'password': passwordController.text
      };

      ApiServices().postRequest(url, map);

      update();
    }
  }
}

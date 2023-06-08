// ignore_for_file: unused_field, avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/api_links.dart';
import 'package:http/http.dart' as http;
import '../../../constants/colors.dart';
import '../../../constants/routes.dart';

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
    print("before check");

    var formData = formKey.currentState;

    if (formData?.validate() == true) {
      print("before check");

      var headers = {'Content-Type': 'application/json'};

      try {
        var url =
            Uri.parse(ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login);

        Map body = {
          'email': emailController.text,
          'password': passwordController.text
        };

        http.Response response =
            await http.post(url, headers: headers, body: jsonEncode(body));

        if (response.statusCode == 200) {
          print("Check if status code = 200");

          final json = jsonDecode(response.body);
          if (json['code'] == 0) {
            var token = json['data']['Token'];
            emailController.clear();
            passwordController.clear();
          } else if (json['code'] == 1) {
            throw jsonDecode(response.body)['message'];
          }

          Get.toNamed(Routes.modifyClubSettings);
        } else {
          throw jsonDecode(response.body)['Message'] ?? "Error";
        }
      } catch (error) {
        Get.snackbar(
          "$error",
          'Invalid email or password',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: secondYellowColor,
          colorText: mainColor,
          duration: Duration(seconds: 3),
        );
        print(error);
      }

      update();
    }
  }
}

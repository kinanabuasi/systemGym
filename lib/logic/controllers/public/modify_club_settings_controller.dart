// ignore_for_file: unused_field, avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/api_links.dart';
import 'package:http/http.dart' as http;
import '../../../constants/colors.dart';
import '../../../constants/routes.dart';

class ModifyClubSettingsController extends GetxController {
  TextEditingController clubNameController = TextEditingController();
  TextEditingController commercialRegistrationNumberController =
      TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController clubAddressController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController postalCodeController = TextEditingController();
  TextEditingController clubWebsiteController = TextEditingController();
  TextEditingController facebookController = TextEditingController();
  TextEditingController instagramController = TextEditingController();
  TextEditingController twitterController = TextEditingController();
  TextEditingController youtupeController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> validate() async {
    var formData = formKey.currentState;

    if (formData?.validate() == true) {
      print("success");
      /* print("before check");

      var headers = {'Content-Type': 'application/json'};

      try {
        var url =
            Uri.parse(ApiEndPoints.baseUrl + ApiEndPoints.authEndpoints.login);

        Map body = {
          'email': emailController.text,
        };

        http.Response response =
            await http.post(url, headers: headers, body: jsonEncode(body));
        print(response.statusCode.toString());

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
          print("else");

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

      print(emailController.text);

      print(passwordController.text);

      print("after check"); */
      update();
    }
  }
}

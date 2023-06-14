// ignore_for_file: unused_field, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/remote/club_remote.dart';

class ModifyClubSettingsController extends GetxController {
  TextEditingController clubNameController = TextEditingController();
  TextEditingController commercialRegistrationNumberController = TextEditingController();
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
  final ClubeRemoteDataSource _clubeRemoteDataSource = ClubeRemoteDataSource();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Future<void> validate() async {
    var formData = formKey.currentState;

    if (formData?.validate() == true) {
      final Map<String, dynamic> clubeData = initClubeSetting();
      final data = await _clubeRemoteDataSource.saveClubeSettings(clubeData);
      data.fold((l) => null, (r) => null);
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

  Map<String, dynamic> initClubeSetting() {
    return {
      '1': clubNameController.text.trim(),
      '2': commercialRegistrationNumberController.text.trim(),
      '3': phoneNumberController.text.trim(),
      '4': emailController.text.trim(),
      '5': descriptionController.text.trim(),
      '6': clubAddressController.text.trim(),
      '7': countryController.text.trim(),
      '8': stateController.text.trim(),
      '9': postalCodeController.text.trim(),
      '10': clubWebsiteController.text.trim(),
      '11': facebookController.text.trim(),
      '12': instagramController.text.trim(),
      '13': twitterController.text.trim(),
      '14': youtupeController.text.trim(),
    };
  }
}

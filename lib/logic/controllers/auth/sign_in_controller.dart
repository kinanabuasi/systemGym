// ignore_for_file: unused_field, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/data/remote/auth_remote.dart';

class SignInController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final AuthRemoteDataSource _authRemoteDataSource = AuthRemoteDataSource();

  /*  validateLogin() {
    var formData = formKey.currentState;
    if (formData?.validate() == true) {
      Get.toNamed(Routes.modifyClubSettings);
    }
  } */
  Future<void> validateLogin() async {
    var formData = formKey.currentState;

    if (formData?.validate() == true) {
      Map<String, dynamic> map = {'email': emailController.text, 'password': passwordController.text};
      final data = await _authRemoteDataSource.userLogin(map);
      data.fold((l) => null, (r) => null);
      update();
    }
  }
}

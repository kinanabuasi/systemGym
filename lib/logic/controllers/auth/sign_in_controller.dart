// ignore_for_file: unused_field, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/routes.dart';
import 'package:systemgym/data/remote/auth_remote.dart';
import 'package:systemgym/services/snackbar.dart';

class SignInController extends GetxController {
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  RxBool isLoading = false.obs;
  late final int roleId;
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
      isLoading.value = true;
      Map<String, dynamic> map = {'email': emailController.text, 'password': passwordController.text};
      final data = await _authRemoteDataSource.adminLogin(map);
      data.fold((l) => SnackbarUtil.showError(message: 'Wrong Data'), (r) => Get.toNamed(Routes.homeAdminScreen));
      isLoading.value = false;
      update();
    }
  }

  @override
  void onInit() {
    roleId = Get.arguments;
    super.onInit();
  }

  action() {
    if (roleId == 1) Get.toNamed(Routes.addNewCardScreen);
    if (roleId == 2) Get.toNamed(Routes.addNewCardScreen);
    if (roleId == 3) Get.toNamed(Routes.addNewCardScreen);
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/remote/auth_remote.dart';
import '../../../services/snackbar.dart';

class SignUpController extends GetxController {
  RxBool isLoading = false.obs;
  final AuthRemoteDataSource _authRemoteDataSource = AuthRemoteDataSource();

  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController clubNameController = TextEditingController();
  TextEditingController subsecriptionPeriodController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Map<String, dynamic> initData() {
    return {'email': emailController.text, 'password': passwordController.text};
  }

  Future<void> signup() async {
    var formData = formKey.currentState;
    if (formData?.validate() == true) {
      isLoading.value = true;
      Map<String, dynamic> map = initData();
      final data = await _authRemoteDataSource.adminLogin(map);
      data.fold((l) => SnackbarUtil.showError(message: 'Wrong Data'), (r) => null);
      isLoading.value = false;
      update();
    }
  }
}

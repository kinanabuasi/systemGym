import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationController extends GetxController {
  var otp = ''.obs;

  void onOtpChanged(String value) {
    otp.value = value;
    if (value.length == 1) {
      Get.focusScope!.nextFocus();
    }
  }

  /* 
  final int numberOfDigits = 6;
  final TextEditingController otpController = TextEditingController();
  final RxInt numberOfDigitsEntered = RxInt(0);
  final List<TextEditingController> digitControllers = List.generate(
    6,
    (_) => TextEditingController(),
  );

  void verifyOtp() {
    // TODO: Implement OTP verification logic
  } */
}

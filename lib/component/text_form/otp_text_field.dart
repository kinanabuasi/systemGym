import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../../logic/controllers/auth/verification_controller.dart';

final otpController = Get.find<VerificationController>();
Widget buildOtpTextField() {
  return SizedBox(
    width: 40,
    child: TextField(
      showCursor: false,
      style: const TextStyle(
          color: white, fontSize: 30, fontWeight: FontWeight.bold),
      decoration: InputDecoration(
          counter: const Text(""),
          hintText: "*",
          hintStyle: const TextStyle(
              color: white, fontWeight: FontWeight.bold, fontSize: 25),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: yellowColor, width: 3)),
          border: UnderlineInputBorder(
              borderSide:
                  BorderSide(color: yellowColor.withOpacity(.8), width: 3))),
      keyboardType: TextInputType.number,
      maxLength: 1,
      textAlign: TextAlign.center,
      onChanged: otpController.onOtpChanged,
    ),
  );
}

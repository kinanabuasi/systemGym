import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../component/text_form/otp_text_field.dart';
import '../../../constants/colors.dart';
import '../../../logic/controllers/auth/verification_controller.dart';
import '../../../component/buttons/my_buttons.dart';
import '../../../component/my_text.dart';

final otpController = Get.find<VerificationController>();

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: mainColor,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back,
                color: white,
                size: 28,
              )),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: mainColor,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                    text: "Verification",
                    color: white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
                const SizedBox(
                  height: 30,
                ),
                MyText(
                    text:
                        "Check your email. We've sent you\nthe PIN at your email",
                    color: white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildOtpTextField(),
                    buildOtpTextField(),
                    buildOtpTextField(),
                    buildOtpTextField(),
                    buildOtpTextField(),
                    buildOtpTextField(),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Center(
                    child: InkWell(
                  onTap: () {},
                  child: MyText(
                      text: "Did you receive any code?",
                      color: yellowColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                )),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                  child: MyButton(
                      color: yellowColor,
                      widget: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: MyText(
                            text: "Verify",
                            color: black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      function: () {}),
                )
              ],
            ),
          ),
        ));
  }
}

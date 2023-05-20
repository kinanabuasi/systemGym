import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../constants/routes.dart';
import '../../../component/buttons/my_buttons.dart';
import '../../../component/my_text.dart';
import '../../../component/text_form/my_text_form_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
                    text: "Forgot Password?",
                    color: white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
                const SizedBox(
                  height: 30,
                ),
                MyText(
                    text:
                        "Enter your information below or\nlogin with an other account",
                    color: white,
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
                const SizedBox(
                  height: 40,
                ),
                MyTextFormField(
                    validator: () {},
                    hintText: "Email",
                    prefixIcon: const Icon(Icons.email_outlined)),
                const SizedBox(
                  height: 80,
                ),
                Center(
                    child: InkWell(
                  onTap: () {},
                  child: MyText(
                      text: "Try another way",
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
                            text: "Send",
                            color: black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      function: () {
                        Get.toNamed(Routes.verificationScreen);
                      }),
                )
              ],
            ),
          ),
        ));
  }
}

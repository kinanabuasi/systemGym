import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../constants/routes.dart';
import '../../../component/linear_gradient.dart';
import '../../../component/buttons/my_buttons.dart';
import '../../../component/my_text.dart';
import '../../../component/text_form/my_text_form_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            Expanded(
                child: Image.asset(
              "assets/images/signin.png",
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
              alignment: Alignment.topRight,
            )),
            Expanded(
                child: Container(
              width: double.infinity,
              color: mainColor,
            ))
          ],
        ),
        LinearGradientContainer(
          beginAlignment: Alignment.center,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MyText(
                  text: "S Y S T E M  G Y M",
                  color: white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
              const SizedBox(
                height: 60,
              ),
              MyTextFormField(
                  validator: () {},
                  hintText: "Email",
                  prefixIcon: const Icon(
                    Icons.email,
                    color: whiteGrey,
                  )),
              const SizedBox(
                height: 20,
              ),
              MyTextFormField(
                  obsecure: true,
                  validator: () {},
                  hintText: "Password",
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: whiteGrey,
                  )),
              const SizedBox(height: 15),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.forgotPassword);
                },
                child: MyText(
                    text: "Forgot Password?",
                    color: white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 40,
              ),
              MyButton(
                  color: yellowColor,
                  widget: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MyText(
                        text: "Sign In",
                        color: black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  function: () {}),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(
                      text: "Didn't have any account? ",
                      color: white,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.signUp);
                    },
                    child: MyText(
                        text: "Sign up here",
                        color: yellowColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 40)
            ],
          ),
        )
      ],
    ));
  }
}

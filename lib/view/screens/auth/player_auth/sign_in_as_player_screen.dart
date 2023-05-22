import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../component/buttons/my_buttons.dart';
import '../../../../component/linear_gradient.dart';
import '../../../../component/my_text.dart';
import '../../../../component/text_form/my_text_form_field.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/routes.dart';
import '../../../widgets/auth/introduction_screen_widget.dart';

class SignInAsPlayerScreen extends StatelessWidget {
  const SignInAsPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        body: Stack(
          children: [
            SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Column(children: [
                  Expanded(
                      flex: 2,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: const BoxDecoration(color: mainColor),
                          ),
                          ClipPath(
                            clipper: CustomClipPath(),
                            child: SizedBox(
                              width: double.infinity,
                              child: Image.asset(
                                "assets/images/login_as_player.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const LinearGradientContainer(
                              beginAlignment: Alignment.bottomCenter),
                          Positioned(
                            bottom: 150,
                            left: 20,
                            child: MyText(
                                text: "Welcome Back,\nSarah",
                                color: white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                  Expanded(
                      child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                MyTextFormField(
                                  enabledBorderColor: darkGrey,
                                  focusedBorderColor: secondYellowColor,
                                  textColor: white,
                                  fillColor: Colors.transparent,
                                  validator: () {},
                                  hintText: "Email",
                                ),
                                const SizedBox(height: 15),
                                MyTextFormField(
                                  enabledBorderColor: darkGrey,
                                  focusedBorderColor: secondYellowColor,
                                  textColor: white,
                                  fillColor: Colors.transparent,
                                  validator: () {},
                                  hintText: "Password",
                                ),
                                const SizedBox(height: 15),
                                MyText(
                                    text: "Forgot Password?",
                                    color: secondYellowColor,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal)
                              ]),
                          SizedBox(),
                          SizedBox(
                            height: 50,
                            width: 125,
                            child: MyButton(
                                color: yellowColor,
                                widget: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    MyText(
                                        text: "Login",
                                        color: mainColor,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                    Icon(Icons.chevron_right, color: mainColor)
                                  ],
                                ),
                                function: () {
                                  Get.toNamed(Routes.chooseGender);
                                }),
                          )
                        ],
                      ),
                    ),
                  ))
                ])),
          ],
        ));
  }
}

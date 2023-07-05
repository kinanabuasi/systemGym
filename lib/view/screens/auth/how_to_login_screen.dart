import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../component/buttons/my_buttons.dart';
import '../../../component/my_text.dart';
import '../../../constants/colors.dart';
import '../../../constants/routes.dart';

class HowToLoginScreen extends StatelessWidget {
  const HowToLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              SizedBox(
                height: 50,
                width: 120,
                child: MyButton(
                    color: yellowColor,
                    Circular: 40,
                    widget: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(
                            text: "Next",
                            color: mainColor,
                            fontSize: 17,
                            fontWeight: FontWeight.bold),
                        const Icon(Icons.chevron_right, color: mainColor)
                      ],
                    ),
                    function: () {}),
              ),
            ],
          ),
        ),
        backgroundColor: mainColor,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyText(
                        text: "Define the user attribute",
                        color: white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                    const SizedBox(
                      height: 10,
                    ),
                    MyText(
                        textAlign: TextAlign.center,
                        text:
                            "To give you a better experience we need\nto know who you are.",
                        color: white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(children: [
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.signIn);
                            },
                            child: CircleAvatar(
                              backgroundColor: secondYellowColor,
                              radius: 70,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/admin.png",
                                      height: 90,
                                      width: 90,
                                    ),
                                    MyText(
                                        text: "Admin",
                                        color: mainColor,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)
                                  ]),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.homeTrainerScreen);
                            },
                            child: CircleAvatar(
                              backgroundColor: red,
                              radius: 70,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/trainer1.png",
                                      height: 90,
                                      width: 90,
                                    ),
                                    MyText(
                                        text: "Trainer",
                                        color: mainColor,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)
                                  ]),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.chooseGender);
                            },
                            child: CircleAvatar(
                              backgroundColor: green,
                              radius: 70,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/player.png",
                                      height: 90,
                                      width: 90,
                                    ),
                                    MyText(
                                        text: "Player",
                                        color: mainColor,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600)
                                  ]),
                            ),
                          ),
                        ]),
                      ]),
                ),
              ])),
        ),
      ),
    );
  }
}

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/component/my_text.dart';
import 'package:systemgym/constants/colors.dart';

import '../../../../constants/routes.dart';
import '../../../../logic/controllers/auth/player_auth/choose_weight_controller.dart';
import '../../../widgets/auth_player/take_information_body.dart';

class ChooseGoalScreen extends StatelessWidget {
  const ChooseGoalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TakeInformationBody(
        infoText: "This helps us create your personalized plan",
        screenHead: "What's your goal",
        nextButtonFunction: () {
          Get.toNamed(Routes.chooseLevel);
        },
        screenBody: GetBuilder<WeightController>(
            init: WeightController(),
            builder: (weightController) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  children: [
                    const Divider(
                      thickness: 2,
                      color: yellowColor,
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                          aspectRatio: 16 / 9,
                          viewportFraction: 0.6,
                          scrollPhysics: const ScrollPhysics(
                              parent: BouncingScrollPhysics()),
                          height: 100.0,
                          scrollDirection: Axis.vertical),
                      items: [
                        "Lose weight",
                        "Get fitter",
                        "Gain more flexible",
                        "Learn the basic",
                        "Gain Weight",
                      ].map((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MyText(
                                    text: i,
                                    color: white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ],
                            );
                          },
                        );
                      }).toList(),
                    ),
                    const Divider(
                      thickness: 2,
                      color: yellowColor,
                    ),
                  ],
                ),
              );
            }));
  }
}

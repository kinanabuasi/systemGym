import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/component/my_text.dart';
import 'package:systemgym/constants/colors.dart';

import '../../../../constants/routes.dart';
import '../../../../logic/controllers/auth/player_auth/choose_weight_controller.dart';
import '../../../widgets/auth_player/take_information_body.dart';

class ChooseWeightScreen extends StatelessWidget {
  const ChooseWeightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TakeInformationBody(
        infoText: "You can always change this later  ",
        screenHead: "What's your weight",
        nextButtonFunction: () {
          Get.toNamed(Routes.chooseHeight);
        },
        screenBody: GetBuilder<WeightController>(
            init: WeightController(),
            builder: (weightController) {
              return CarouselSlider(
                options: CarouselOptions(
                    scrollPhysics:
                        const ScrollPhysics(parent: BouncingScrollPhysics()),
                    height: 400.0,
                    scrollDirection: Axis.horizontal),
                items: [
                  1,
                  2,
                  3,
                  4,
                  5,
                  6,
                  7,
                  8,
                  9,
                  10,
                  11,
                  12,
                  13,
                  14,
                  15,
                  16,
                  17,
                  18,
                  90,
                  20,
                  21,
                  22,
                  23,
                  24,
                  25,
                  26,
                  27,
                  28,
                  29,
                  30,
                  31,
                  32,
                  33,
                  34,
                  35,
                  36,
                  37,
                  38,
                  39,
                  40,
                  41,
                  42,
                  43,
                  44,
                  45,
                  46,
                  47,
                  48,
                  49,
                  50,
                  51,
                  52,
                  53,
                  54,
                  55,
                  56,
                  57,
                  58,
                  59,
                  60,
                  61,
                  62,
                  63,
                  64,
                  65,
                  66,
                  67,
                  68,
                  69,
                  70,
                  71,
                  72,
                  73,
                  74,
                  75,
                  76,
                  77,
                  78,
                  79,
                  80,
                  81,
                  82,
                  83,
                  84,
                  85,
                  86,
                  87,
                  88,
                  89,
                  90,
                  91,
                  92,
                  93,
                  94,
                  95,
                  96,
                  97,
                  98,
                  99,
                  100,
                  101,
                  102,
                  103,
                  104,
                  105,
                  106,
                  107,
                  108,
                  109,
                  110,
                  111,
                  112,
                  113,
                  114,
                  115,
                  116,
                  117,
                  118,
                  119,
                  120,
                  121,
                  122,
                  123,
                  124,
                  125,
                  126,
                  127,
                  128,
                  129,
                  130,
                  131,
                  132,
                  133,
                  134,
                  135,
                  136,
                  137,
                  138,
                  139,
                  140,
                  141,
                  142,
                  143,
                  144,
                  145,
                  146,
                  147,
                  148,
                  149
                ].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              MyText(
                                  text: "$i",
                                  color: white,
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold),
                              const SizedBox(
                                width: 5,
                              ),
                              MyText(
                                  text: "kg",
                                  color: white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold)
                            ],
                          ),
                          const SizedBox(height: 10),
                          Container(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                    width: 2, height: 20, color: yellowColor),
                                Container(
                                    width: 2, height: 30, color: yellowColor),
                                Container(
                                    width: 2, height: 40, color: yellowColor),
                                Container(
                                    width: 2, height: 50, color: yellowColor),
                                Container(
                                    width: 2, height: 60, color: yellowColor),
                                Container(
                                    width: 2, height: 50, color: yellowColor),
                                Container(
                                    width: 2, height: 40, color: yellowColor),
                                Container(
                                    width: 2, height: 30, color: yellowColor),
                                Container(
                                    width: 2, height: 20, color: yellowColor),
                              ],
                            ),
                          )
                        ],
                      );
                    },
                  );
                }).toList(),
              );
            }));
  }
}

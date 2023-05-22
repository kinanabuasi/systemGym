import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:systemgym/component/my_text.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:systemgym/logic/controllers/auth/player_auth/choose_gender_controller.dart';

import '../../../../component/buttons/my_buttons.dart';
import '../../../../logic/controllers/auth/player_auth/choose_age_controller.dart';

AgeController ageController = Get.put(AgeController());

class ChooseAgeScreen extends StatelessWidget {
  ChooseAgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: mainColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                MyText(
                    text: "Tell us about yourself!",
                    color: white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                const SizedBox(
                  height: 10,
                ),
                MyText(
                    textAlign: TextAlign.center,
                    text:
                        "To give you a better experience we need to know your gender",
                    color: white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ],
            ),
            GetBuilder<AgeController>(
                init: AgeController(),
                builder: (ageController) {
                  return NumberPicker(
                    haptics: true,
                    value: ageController.selectedNumber.value,
                    minValue: 0,
                    itemHeight: 75,
                    decoration: const BoxDecoration(
                        border: Border.symmetric(
                            horizontal: BorderSide(color: secondYellowColor))),
                    selectedTextStyle: const TextStyle(
                        color: white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                    textStyle: const TextStyle(color: darkGrey, fontSize: 40),
                    maxValue: 100,
                    onChanged: (value) {
                      ageController.selectedNumber.value = value;
                      ageController.update();
                    },
                  );
                }),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: darkGrey,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: white),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: 125,
                  child: MyButton(
                      color: yellowColor,
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
            )
          ],
        ),
      ),
    ));
  }
}

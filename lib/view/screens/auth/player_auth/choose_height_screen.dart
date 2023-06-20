import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:systemgym/component/my_text.dart';
import 'package:systemgym/constants/colors.dart';

import '../../../../constants/routes.dart';
import '../../../../logic/controllers/auth/player_auth/choose_height_controller.dart';
import '../../../widgets/auth_player/take_information_body.dart';

class ChooseHeightScreen extends StatelessWidget {
  const ChooseHeightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TakeInformationBody(
        infoText: "This helps us create your personalized plan",
        screenHead: "Whats's your height?",
        nextButtonFunction: () {
          Get.toNamed(Routes.chooseGoal);
        },
        screenBody: GetBuilder<HeightController>(
            init: HeightController(),
            builder: (heightController) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NumberPicker(
                    haptics: true,
                    value: heightController.selectedNumber.value,
                    minValue: 0,
                    itemHeight: 75,
                    decoration: const BoxDecoration(border: Border.symmetric(horizontal: BorderSide(color: secondYellowColor))),
                    selectedTextStyle: const TextStyle(color: white, fontSize: 50, fontWeight: FontWeight.bold),
                    textStyle: const TextStyle(color: darkGrey, fontSize: 40),
                    maxValue: 220,
                    onChanged: (value) {
                      heightController.selectedNumber.value = value;
                      heightController.update();
                    },
                  ),
                  MyText(text: "cm", color: white, fontSize: 20, fontWeight: FontWeight.bold)
                ],
              );
            }));
  }
}

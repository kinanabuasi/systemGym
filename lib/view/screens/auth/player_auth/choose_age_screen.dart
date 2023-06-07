import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:systemgym/constants/colors.dart';

import '../../../../constants/routes.dart';
import '../../../../logic/controllers/auth/player_auth/choose_age_controller.dart';
import '../../../widgets/auth_player/take_information_body.dart';

AgeController ageController = Get.put(AgeController());

class ChooseAgeScreen extends StatelessWidget {
  const ChooseAgeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TakeInformationBody(
        infoText: "To give you a better experience we need to know your gender",
        screenHead: "Tell us about yourself!",
        nextButtonFunction: () {
          Get.toNamed(Routes.chooseWeight);
        },
        screenBody: GetBuilder<AgeController>(
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
                    color: white, fontSize: 50, fontWeight: FontWeight.bold),
                textStyle: const TextStyle(color: darkGrey, fontSize: 40),
                maxValue: 100,
                onChanged: (value) {
                  ageController.selectedNumber.value = value;
                  ageController.update();
                },
              );
            }));
  }
}

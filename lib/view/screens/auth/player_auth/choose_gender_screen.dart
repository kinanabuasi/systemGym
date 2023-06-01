import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:systemgym/logic/controllers/auth/player_auth/choose_gender_controller.dart';

import '../../../../constants/routes.dart';
import '../../../widgets/auth_player/take_information_body.dart';

GenderController genderController = Get.put(GenderController());

class ChooseGenderScreen extends StatelessWidget {
  const ChooseGenderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TakeInformationBody(
        infoText: "To give you a better experience we need to know your gender",
        screenHead: "Tell us about yourself!",
        nextButtonFunction: () {
          Get.toNamed(Routes.chooseAge);
        },
        screenBody: GetBuilder<GenderController>(
            init: GenderController(),
            builder: (genderController) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      genderController.isFemalePressed = false;
                      genderController.isMalePressed = true;
                      genderController.update();
                    },
                    child: CircleAvatar(
                      backgroundColor: genderController.isMalePressed
                          ? yellowColor
                          : darkGrey,
                      radius: 70,
                      child: Icon(
                        Icons.male,
                        color:
                            genderController.isMalePressed ? mainColor : white,
                        size: 60,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      genderController.isMalePressed = false;
                      genderController.isFemalePressed = true;
                      genderController.update();
                    },
                    child: CircleAvatar(
                      backgroundColor: genderController.isFemalePressed
                          ? yellowColor
                          : darkGrey,
                      radius: 70,
                      child: Icon(
                        Icons.female,
                        color: genderController.isFemalePressed
                            ? mainColor
                            : white,
                        size: 60,
                      ),
                    ),
                  ),
                ],
              );
            }));
  }
}

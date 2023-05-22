import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/component/my_text.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:systemgym/logic/controllers/auth/player_auth/choose_gender_controller.dart';

import '../../../../component/buttons/my_buttons.dart';
import '../../../../constants/routes.dart';

GenderController genderController = Get.put(GenderController());

class ChooseGenderScreen extends StatelessWidget {
  const ChooseGenderScreen({super.key});

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
            GetBuilder<GenderController>(
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
                            color: genderController.isMalePressed
                                ? mainColor
                                : white,
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
                }),
            Row(
              children: [
                Spacer(),
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
                      function: () {
                        Get.toNamed(Routes.chooseAge);
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}

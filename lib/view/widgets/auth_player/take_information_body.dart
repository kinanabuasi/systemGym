import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/component/my_text.dart';
import 'package:systemgym/constants/colors.dart';

import '../../../../component/buttons/my_buttons.dart';

class TakeInformationBody extends StatelessWidget {
  final String screenHead, infoText;
  final Widget screenBody;
  final Function() nextButtonFunction;
  const TakeInformationBody(
      {super.key,
      required this.infoText,
      required this.screenHead,
      required this.nextButtonFunction,
      required this.screenBody});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
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
                  function: nextButtonFunction),
            ),
          ],
        ),
      ),
      backgroundColor: mainColor,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                MyText(
                    text: screenHead,
                    color: white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                const SizedBox(
                  height: 10,
                ),
                MyText(
                    textAlign: TextAlign.center,
                    text: infoText,
                    color: white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ],
            ),
            screenBody,
            SizedBox()
          ],
        ),
      ),
    ));
  }
}

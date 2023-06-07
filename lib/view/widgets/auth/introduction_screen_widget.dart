import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../constants/routes.dart';
import '../../../component/linear_gradient.dart';
import '../../../component/buttons/my_buttons.dart';
import '../../../component/my_text.dart';

buildIntroScreens({
  required String imageUrl,
  required String title,
  required String supTitle,
  required bool isShow,
}) {
  return isShow == false
      ? Stack(
          children: [
            SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Column(children: [
                  Expanded(
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
                            imageUrl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const LinearGradientContainer(
                          beginAlignment: Alignment.bottomCenter),
                    ],
                  )),
                  Expanded(
                      child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: mainColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(children: [
                          MyText(
                            textAlign: TextAlign.center,
                            text: title,
                            color: white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                          const SizedBox(height: 15),
                          MyText(
                            textAlign: TextAlign.center,
                            text: supTitle,
                            color: yellowColor,
                            fontSize: 33,
                            fontWeight: FontWeight.w900,
                          ),
                        ]),
                      ],
                    ),
                  ))
                ])),
          ],
        )
      : Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset("assets/images/intro1.png", fit: BoxFit.cover),
            ),
            const LinearGradientContainer(
                beginAlignment: Alignment.bottomCenter),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyText(
                    text: title,
                    textAlign: TextAlign.center,
                    color: white,
                    fontSize: 33,
                    fontWeight: FontWeight.bold),
                const SizedBox(
                  height: 20,
                ),
                MyText(
                    text: supTitle,
                    textAlign: TextAlign.center,
                    color: whiteGrey,
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80.0),
                  child: MyButton(
                    function: () {
                      Get.toNamed(Routes.howToLoginScreen);
                    },
                    widget: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MyText(
                        fontWeight: FontWeight.bold,
                        color: black,
                        text: "Get Started",
                        fontSize: 20,
                      ),
                    ),
                    color: yellowColor,
                  ),
                ),
                const SizedBox(
                  height: 100,
                )
              ],
            ),
          ],
        );
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path0 = Path();

    path0.moveTo(size.width * -0.0012500, size.height * -0.0100000);
    path0.lineTo(0, size.height * 0.9970000);
    path0.quadraticBezierTo(size.width * 0.7521875, size.height * 0.8231200,
        size.width, size.height * 0.8235000);
    path0.quadraticBezierTo(size.width * 1.0021875, size.height * 0.5751200,
        size.width, size.height * 0.0050000);
    path0.close();

    return path0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

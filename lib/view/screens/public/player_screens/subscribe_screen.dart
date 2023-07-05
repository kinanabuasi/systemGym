import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../component/buttons/my_buttons.dart';
import '../../../../component/linear_gradient.dart';
import '../../../../component/my_text.dart';
import '../../../../constants/colors.dart';
import '../../../../logic/controllers/player_controllers/subscribe_controller.dart';
import '../../../widgets/auth/introduction_screen_widget.dart';

class SubscribeScreen extends StatelessWidget {
  const SubscribeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: mainColor,
        body: Stack(children: [
          SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                children: [
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
                            "assets/images/subscribe.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const LinearGradientContainer(
                          beginAlignment: Alignment.bottomCenter),
                      Positioned(
                        bottom: 120,
                        left: 20,
                        child: MyText(
                            text: "Be Premiume\nGet unlimited access",
                            color: white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      Positioned(
                        bottom: 70,
                        left: 20,
                        child: MyText(
                            text:
                                "When you subscribe, you’ll get\ninstant unlimited access",
                            color: white,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                      )
                    ],
                  )),
                  ClipPath(
                    clipper: CustomClipPath(),
                    child: SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        "assets/images/subscribe.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const LinearGradientContainer(
                      beginAlignment: Alignment.bottomCenter),
                  Positioned(
                    bottom: 150,
                    left: 20,
                    child: MyText(
                        text: "Be Premiume\nGet unlimited access",
                        color: white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  Positioned(
                    bottom: 100,
                    left: 20,
                    child: MyText(
                        text:
                            "When you subscribe, you’ll get\ninstant unlimited access",
                        color: white,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  )
                ],
              )),
          Expanded(
              child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GetBuilder<SubscribeController>(
                      init: SubscribeController(),
                      builder: (subscribeController) {
                        return Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  subscribeController.isYearlyPressed = false;
                                  subscribeController.isMonthlyPressed = true;
                                  subscribeController.update();
                                },
                                child: Container(
                                  height: 100,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: subscribeController
                                                  .isMonthlyPressed
                                              ? red
                                              : darkGrey),
                                      color:
                                          subscribeController.isMonthlyPressed
                                              ? black
                                              : darkGrey,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(Icons.circle,
                                              color: subscribeController
                                                      .isMonthlyPressed
                                                  ? red
                                                  : whiteGrey),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              MyText(
                                                  text: "Monthly",
                                                  color: white,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w600),
                                              MyText(
                                                  text:
                                                      "Pay monthly, cancel any time",
                                                  color: red,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ],
                                          ),
                                          MyText(
                                              text: "\$19.99 /m",
                                              color: white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600)
                                        ]),
                                  ),
                                ),
                              ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        subscribeController.isYearlyPressed =
                                            false;
                                        subscribeController.isMonthlyPressed =
                                            true;
                                        subscribeController.update();
                                      },
                                      child: Container(
                                        height: 75,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: subscribeController
                                                        .isMonthlyPressed
                                                    ? red
                                                    : darkGrey),
                                            color: subscribeController
                                                    .isMonthlyPressed
                                                ? black
                                                : darkGrey,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Icon(Icons.circle,
                                                    color: subscribeController
                                                            .isMonthlyPressed
                                                        ? red
                                                        : whiteGrey),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    MyText(
                                                        text: "Monthly",
                                                        color: white,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                    MyText(
                                                        text:
                                                            "Pay monthly, cancel any time",
                                                        color: red,
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ],
                                                ),
                                                MyText(
                                                    text: "\$19.99 /m",
                                                    color: white,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600)
                                              ]),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    InkWell(
                                      onTap: () {
                                        subscribeController.isMonthlyPressed =
                                            false;
                                        subscribeController.isYearlyPressed =
                                            true;
                                        subscribeController.update();
                                      },
                                      child: Container(
                                        height: 100,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: subscribeController
                                                        .isYearlyPressed
                                                    ? red
                                                    : darkGrey),
                                            color: subscribeController
                                                    .isYearlyPressed
                                                ? black
                                                : darkGrey,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Icon(Icons.circle,
                                                    color: subscribeController
                                                            .isYearlyPressed
                                                        ? red
                                                        : whiteGrey),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    MyText(
                                                        text: "Yearly",
                                                        color: white,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                    MyText(
                                                        text:
                                                            "Pay yearly, cancel any time",
                                                        color: red,
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ],
                                                ),
                                                MyText(
                                                    text: "\$129.99 /y",
                                                    color: white,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600)
                                              ]),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    InkWell(
                                      onTap: () {
                                        subscribeController.isMonthlyPressed =
                                            false;
                                        subscribeController.isYearlyPressed =
                                            true;
                                        subscribeController.update();
                                      },
                                      child: Container(
                                        height: 75,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: subscribeController
                                                        .isYearlyPressed
                                                    ? red
                                                    : darkGrey),
                                            color: subscribeController
                                                    .isYearlyPressed
                                                ? black
                                                : darkGrey,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Icon(Icons.circle,
                                                    color: subscribeController
                                                            .isYearlyPressed
                                                        ? red
                                                        : whiteGrey),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    MyText(
                                                        text: "Yearly",
                                                        color: white,
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                    MyText(
                                                        text:
                                                            "Pay yearly, cancel any time",
                                                        color: red,
                                                        fontSize: 10,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ],
                                                ),
                                                MyText(
                                                    text: "\$129.99 /y",
                                                    color: white,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w600)
                                              ]),
                                        ),
                                      ),
                                    ),
                                  ])
                            ]);
                      }),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: MyButton(
                          Circular: 40,
                          color: secondYellowColor,
                          widget: Center(
                              child: MyText(
                                  text: "Subscribe Now",
                                  color: mainColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600)),
                          function: () {}),
                    ),
                  ),
                ],
              ),
            ),
          ))
        ]));
  }
}

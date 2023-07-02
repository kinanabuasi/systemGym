import 'package:flutter/material.dart';

import '../../../../component/buttons/my_buttons.dart';
import '../../../../component/linear_gradient.dart';
import '../../../../component/my_text.dart';
import '../../../../constants/colors.dart';
import '../../../widgets/auth/introduction_screen_widget.dart';

class SubscribeSingleScreen extends StatelessWidget {
  const SubscribeSingleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: mainColor,
        body: Stack(
          children: [
            SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Column(children: [
                  Expanded(
                      flex: 2,
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
                                "assets/images/login_as_player.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const LinearGradientContainer(
                              beginAlignment: Alignment.bottomCenter),
                          Positioned(
                            bottom: 90,
                            left: 20,
                            child: MyText(
                                text: "Select the desired\nsubscription method",
                                color: white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
                  Expanded(
                      flex: 2,
                      child: SizedBox(
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 60.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              MyButton(
                                  Circular: 40,
                                  color: purple,
                                  widget: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12.0),
                                    child: Row(
                                      children: [
                                        MyText(
                                            text: "Annual Single",
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                        Spacer(),
                                        const Icon(Icons.chevron_right,
                                            color: Colors.black)
                                      ],
                                    ),
                                  ),
                                  function: () {}),
                              SizedBox(height: 20),
                              MyButton(
                                  Circular: 40,
                                  color: purple,
                                  widget: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 12.0),
                                    child: Row(
                                      children: [
                                        MyText(
                                            text: "Monthly Single",
                                            color: Colors.black,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                        Spacer(),
                                        const Icon(Icons.chevron_right,
                                            color: Colors.black)
                                      ],
                                    ),
                                  ),
                                  function: () {}),
                            ],
                          ),
                        ),
                      ))
                ])),
          ],
        ));
  }
}

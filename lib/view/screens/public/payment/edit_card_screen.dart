import 'package:flutter/material.dart';

import '../../../../component/app_bars/settings_app_bar.dart';
import '../../../../component/buttons/my_buttons.dart';
import '../../../../component/my_text.dart';
import '../../../../constants/colors.dart';

class EditCardScreen extends StatelessWidget {
  const EditCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SettingAppBar(title: "EDIT CARD"),
      backgroundColor: mainColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 40.0, right: 40, bottom: 20),
        child: MyButton(
            Circular: 40,
            color: secondYellowColor,
            widget: MyText(
                text: "Save",
                color: mainColor,
                fontSize: 18,
                fontWeight: FontWeight.bold),
            function: () {}),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: double.infinity,
            height: 170,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color.fromARGB(255, 219, 12, 238),
                      Color.fromARGB(243, 69, 50, 238),
                      Color.fromARGB(243, 184, 98, 241),
                    ])),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Spacer(),
                      MyText(
                          text: "VISA",
                          color: white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                  MyText(
                      text: "MEGAN SUSAN",
                      color: white,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                  MyText(
                      text: "5124 3256 6589 2048",
                      color: white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          MyText(
              text: "Card Holder Name",
              color: secondYellowColor,
              fontSize: 11,
              fontWeight: FontWeight.w600),
          MyText(
              text: "Mrgan Susan",
              color: white,
              fontSize: 18,
              fontWeight: FontWeight.w600),
          const SizedBox(height: 10),
          Divider(
            thickness: 1,
            color: darkGrey,
          ),
          const SizedBox(height: 15),
          MyText(
              text: "Card Number",
              color: secondYellowColor,
              fontSize: 11,
              fontWeight: FontWeight.w600),
          MyText(
              text: "5124 - 3256 - 6589 - 2048",
              color: white,
              fontSize: 18,
              fontWeight: FontWeight.w600),
          const SizedBox(height: 10),
          Divider(
            thickness: 1,
            color: darkGrey,
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                      text: "Expiry (MM/YY)",
                      color: secondYellowColor,
                      fontSize: 11,
                      fontWeight: FontWeight.w600),
                  MyText(
                      text: "01 - 23",
                      color: white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                  SizedBox(
                    width: 100,
                    child: Divider(
                      thickness: 1,
                      color: darkGrey,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                      text: "CVC",
                      color: secondYellowColor,
                      fontSize: 11,
                      fontWeight: FontWeight.w600),
                  MyText(
                      text: "696",
                      color: white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                  SizedBox(
                    width: 100,
                    child: Divider(
                      thickness: 1,
                      color: darkGrey,
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 30),
          Divider(
            thickness: 1,
            color: darkGrey,
          ),
          const SizedBox(height: 15),
          MyText(
              text: "Delete Card",
              color: red,
              fontSize: 18,
              fontWeight: FontWeight.w600),
          const SizedBox(height: 15),
          Divider(
            thickness: 1,
            color: darkGrey,
          ),
        ]),
      ),
    );
  }
}

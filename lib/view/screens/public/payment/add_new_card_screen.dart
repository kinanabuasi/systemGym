import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../component/app_bars/settings_app_bar.dart';
import '../../../../component/buttons/my_buttons.dart';
import '../../../../component/my_text.dart';
import '../../../../constants/colors.dart';

class AddNewCardScreen extends StatelessWidget {
  final RxBool isChecked = false.obs;
  AddNewCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SettingAppBar(title: "ADD NEW CARD"),
      backgroundColor: mainColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 40.0, right: 40, bottom: 20),
        child: MyButton(
            Circular: 40,
            color: secondYellowColor,
            widget: MyText(
                text: "Done",
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
                      text: "HOLDER NAME",
                      color: white,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                  MyText(
                      text: "0000 0000 0000 0000",
                      color: white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          MyText(
              text: "Card Holder Name",
              color: white,
              fontSize: 18,
              fontWeight: FontWeight.w600),
          const SizedBox(height: 10),
          const Divider(
            thickness: 1,
            color: darkGrey,
          ),
          const SizedBox(height: 40),
          MyText(
              text: "Card Number",
              color: white,
              fontSize: 18,
              fontWeight: FontWeight.w600),
          const SizedBox(height: 10),
          const Divider(
            thickness: 1,
            color: darkGrey,
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                      text: "Expiry (MM/YY)",
                      color: white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                  const SizedBox(
                    width: 100,
                    child: Divider(
                      thickness: 1,
                      color: darkGrey,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyText(
                      text: "CVC",
                      color: white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                  const SizedBox(
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
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Checkbox(
                  checkColor: mainColor,
                  activeColor: secondYellowColor,
                  value: isChecked.value,
                  onChanged: (newValue) => isChecked.value = newValue!,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              MyText(
                  text: "Set as default payment card",
                  color: white,
                  fontSize: 13,
                  fontWeight: FontWeight.w600)
            ],
          )
        ]),
      ),
    );
  }
}

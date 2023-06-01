import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../component/buttons/my_buttons.dart';
import '../../../../component/my_text.dart';
import '../../../../constants/colors.dart';

class PaymentCompletedScreen extends StatelessWidget {
  final RxBool isChecked = false.obs;
  PaymentCompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 40.0, right: 40, bottom: 20),
          child: MyButton(
              color: secondYellowColor,
              Circular: 40,
              widget: MyText(
                  text: "Done",
                  color: mainColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              function: () {}),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                      text: "Payment Completed!",
                      color: whiteGrey,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ],
              ),
              SizedBox(height: 20),
              MyText(
                  text: "You’ve book a new appointment\nwith your trainer.",
                  color: whiteGrey,
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
              SizedBox(height: 40),
              Container(
                width: double.infinity,
                height: 220,
                decoration: BoxDecoration(
                  color: darkGrey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(children: [
                            MyText(
                                text: "trainer",
                                color: whiteGrey,
                                fontSize: 11,
                                fontWeight: FontWeight.normal),
                            const CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage("assets/images/person3.png"),
                            ),
                          ]),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  MyText(
                                      text: "Emily Kevin",
                                      color: whiteGrey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    width: 30,
                                    decoration: BoxDecoration(
                                        color: secondYellowColor,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Center(
                                      child: MyText(
                                          color: black,
                                          text: "4.6",
                                          fontSize: 11,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ),
                                ],
                              ),
                              MyText(
                                  text: "High Intensity Training",
                                  color: secondYellowColor,
                                  fontSize: 11,
                                  fontWeight: FontWeight.normal)
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Divider(thickness: 1, color: whiteGrey),
                      const SizedBox(
                        height: 5,
                      ),
                      MyText(
                          text: "Date",
                          color: whiteGrey,
                          fontSize: 11,
                          fontWeight: FontWeight.normal),
                      MyText(
                          text: "20 October 2021 - Wednesday",
                          color: whiteGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                      const SizedBox(height: 15),
                      MyText(
                          text: "Time",
                          color: whiteGrey,
                          fontSize: 11,
                          fontWeight: FontWeight.normal),
                      Row(
                        children: [
                          MyText(
                              text: "09:30 AM",
                              color: whiteGrey,
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                          Spacer(),
                          Icon(Icons.notifications, color: whiteGrey)
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

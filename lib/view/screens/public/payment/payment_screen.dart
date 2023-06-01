import 'package:flutter/material.dart';

import '../../../../component/app_bars/settings_app_bar.dart';
import '../../../../component/buttons/my_buttons.dart';
import '../../../../component/my_text.dart';
import '../../../../constants/colors.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SettingAppBar(title: "PAYMENT"),
      backgroundColor: mainColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 40.0, right: 40, bottom: 20),
        child: MyButton(
            Circular: 40,
            color: secondYellowColor,
            widget: MyText(
                text: "Confirm",
                color: mainColor,
                fontSize: 18,
                fontWeight: FontWeight.bold),
            function: () {}),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: MyText(
              text: "Payment Method",
              color: white,
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: SizedBox(
            height: 115,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                Container(
                  child: const Center(
                    child: Icon(Icons.add, color: white),
                  ),
                  width: 60,
                  height: 115,
                  decoration: BoxDecoration(
                      color: darkGrey, borderRadius: BorderRadius.circular(20)),
                ),
                const SizedBox(width: 10),
                ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10.0, left: 10),
                        child: Container(
                          width: 140,
                          height: 115,
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
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  children: [
                                    const Spacer(),
                                    MyText(
                                        text: "VISA",
                                        color: white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ],
                                ),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      MyText(
                                          text: "....",
                                          color: white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                      MyText(
                                          text: "2048",
                                          color: white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                      Center(
                                          child: IconButton(
                                              onPressed: () {},
                                              icon: const Icon(Icons.check,
                                                  size: 20,
                                                  color: secondYellowColor)))
                                    ])
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
        ),
        const SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: MyText(
              text: "Order Details",
              color: white,
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(
            thickness: 1,
            color: darkGrey,
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              Column(children: [
                MyText(
                    text: "trainer",
                    color: white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal),
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/person3.png"),
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
                          color: white,
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
                      fontSize: 15,
                      fontWeight: FontWeight.normal)
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(
            thickness: 1,
            color: darkGrey,
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: MyText(
              text: "Date",
              color: white,
              fontSize: 15,
              fontWeight: FontWeight.normal),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: MyText(
              text: "20 October 2021 - Wednesday",
              color: white,
              fontSize: 15,
              fontWeight: FontWeight.normal),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: MyText(
              text: "Time",
              color: white,
              fontSize: 15,
              fontWeight: FontWeight.normal),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: MyText(
              text: "09:30 AM",
              color: white,
              fontSize: 15,
              fontWeight: FontWeight.normal),
        ),
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(
            thickness: 1,
            color: darkGrey,
          ),
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: [
              MyText(
                  text: "Estimated Cost",
                  color: white,
                  fontSize: 13,
                  fontWeight: FontWeight.normal),
              const Spacer(),
              MyText(
                  text: "175.99 \$",
                  color: white,
                  fontSize: 13,
                  fontWeight: FontWeight.normal),
            ],
          ),
        ),
        const SizedBox(height: 15),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Divider(
            thickness: 1,
            color: darkGrey,
          ),
        ),
      ]),
    );
  }
}

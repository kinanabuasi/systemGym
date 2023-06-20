import 'package:flutter/material.dart';

import '../../../../component/app_bars/settings_app_bar.dart';
import '../../../../component/buttons/my_buttons.dart';
import '../../../../component/my_text.dart';
import '../../../../constants/colors.dart';

class ReviewsScreen extends StatelessWidget {
  const ReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: mainColor,
          appBar: const SettingAppBar(
            title: "REVIEWS",
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 20.0, left: 40, right: 40),
            child:
                MyButton(color: secondYellowColor, widget: MyText(text: "Write a Review", color: black, fontSize: 18, fontWeight: FontWeight.bold), function: () {}, Circular: 40),
          ),
          body: SingleChildScrollView(
            child: SizedBox(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                    child: Container(
                      height: 30,
                      width: double.infinity,
                      decoration: BoxDecoration(color: darkGrey, borderRadius: BorderRadius.circular(20)),
                      child: TabBar(
                          indicatorSize: TabBarIndicatorSize.tab,
                          indicator: BoxDecoration(color: yellowColor, borderRadius: BorderRadius.circular(20)),
                          labelColor: black,
                          indicatorColor: secondYellowColor,
                          labelStyle: const TextStyle(color: mainColor),
                          unselectedLabelColor: white,
                          tabs: const [
                            Tab(
                              text: "Recent",
                            ),
                            Tab(text: "Critical"),
                            Tab(text: "Favourable")
                          ]),
                    ),
                  ),
                  SizedBox(
                    height: 700,
                    child: TabBarView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  MyText(text: "4.6", color: white, fontSize: 50, fontWeight: FontWeight.bold),
                                  const Spacer(),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          MyText(text: "5", color: white, fontSize: 10, fontWeight: FontWeight.normal),
                                          const SizedBox(width: 5),
                                          const SizedBox(
                                            width: 170,
                                            child: LinearProgressIndicator(
                                              backgroundColor: darkGrey,
                                              color: white,
                                              value: 0.6,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          MyText(text: "4", color: white, fontSize: 10, fontWeight: FontWeight.normal),
                                          const SizedBox(width: 5),
                                          const SizedBox(
                                            width: 170,
                                            child: LinearProgressIndicator(
                                              backgroundColor: darkGrey,
                                              color: white,
                                              value: 0.7,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          MyText(text: "3", color: white, fontSize: 10, fontWeight: FontWeight.normal),
                                          const SizedBox(width: 5),
                                          const SizedBox(
                                            width: 170,
                                            child: LinearProgressIndicator(
                                              backgroundColor: darkGrey,
                                              color: white,
                                              value: 0.3,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          MyText(text: "2", color: white, fontSize: 10, fontWeight: FontWeight.normal),
                                          const SizedBox(width: 5),
                                          const SizedBox(
                                            width: 170,
                                            child: LinearProgressIndicator(
                                              backgroundColor: darkGrey,
                                              color: white,
                                              value: 0.2,
                                            ),
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          MyText(text: "1", color: white, fontSize: 10, fontWeight: FontWeight.normal),
                                          const SizedBox(width: 5),
                                          const SizedBox(
                                            width: 170,
                                            child: LinearProgressIndicator(
                                              backgroundColor: darkGrey,
                                              color: white,
                                              value: 0.1,
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [const Spacer(), MyText(text: "174 Ratings", color: white, fontSize: 20, fontWeight: FontWeight.normal)],
                              ),
                              const SizedBox(height: 30),
                              ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: 3,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemBuilder: (context, index) {
                                    return Container(
                                      height: 150,
                                      margin: const EdgeInsets.only(bottom: 16),
                                      width: double.infinity,
                                      decoration: BoxDecoration(color: darkGrey, borderRadius: BorderRadius.circular(20)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                const CircleAvatar(
                                                  radius: 20,
                                                  backgroundImage: AssetImage("assets/images/person4.png"),
                                                ),
                                                const SizedBox(width: 10),
                                                MyText(text: "Sharon Jem", color: white, fontSize: 15, fontWeight: FontWeight.bold),
                                                const SizedBox(width: 10),
                                                Container(
                                                  width: 50,
                                                  decoration: BoxDecoration(color: secondYellowColor, borderRadius: BorderRadius.circular(20)),
                                                  child: Center(child: MyText(text: "4.6", color: black, fontSize: 11, fontWeight: FontWeight.normal)),
                                                ),
                                                const Spacer(),
                                                MyText(text: "2d ago", color: white, fontSize: 11, fontWeight: FontWeight.normal)
                                              ],
                                            ),
                                            const SizedBox(height: 5),
                                            MyText(
                                                text:
                                                    "Had such an amazing session with Maria. She instantly picked up on the level of my fitness and adjusted the workout to suit me whilst also pushing me to my limits.",
                                                color: white,
                                                fontSize: 13,
                                                fontWeight: FontWeight.normal)
                                          ],
                                        ),
                                      ),
                                    );
                                  })
                            ],
                          ),
                        ),
                        Container(width: 5, height: 5, color: yellowColor),
                        Container(width: 5, height: 5, color: yellowColor),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}

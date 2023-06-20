import 'package:flutter/material.dart';

import '../../../../component/my_text.dart';
import '../../../../constants/colors.dart';

class HomeTrainerScreen extends StatelessWidget {
  const HomeTrainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: mainColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              MyText(
                  text: "HELLO SARAH",
                  color: white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700),
              MyText(
                  text: "Good morning",
                  color: white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
              SizedBox(height: 30),
              Row(
                children: [
                  MyText(
                      text: "Today Workout Plan",
                      color: white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                  Spacer(),
                  MyText(
                      text: "Mon 26 Apr",
                      color: secondYellowColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ],
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 160,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/intro1.png"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(),
                      MyText(
                          text: "Wake Up Call",
                          color: white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                      MyText(
                          text: "04 Workouts for Beginner",
                          color: secondYellowColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  MyText(
                      text: "Workout Categories",
                      color: white,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                  Spacer(),
                  MyText(
                      text: "See all",
                      color: secondYellowColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ],
              ),
              SizedBox(height: 10),
              Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: darkGrey, borderRadius: BorderRadius.circular(20)),
                child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                        color: yellowColor,
                        borderRadius: BorderRadius.circular(20)),
                    labelColor: black,
                    indicatorColor: secondYellowColor,
                    labelStyle: const TextStyle(color: mainColor),
                    unselectedLabelColor: white,
                    tabs: const [
                      Tab(
                        text: "Beginner",
                      ),
                      Tab(text: "Intermedia"),
                      Tab(text: "Advance")
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 330,
                child: TabBarView(children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 160,
                        child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 270,
                                height: 160,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/meal5.png"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Spacer(),
                                      MyText(
                                          text: "Wake Up Call",
                                          color: white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600),
                                      MyText(
                                          text: "04 Workouts for Beginner",
                                          color: secondYellowColor,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      MyText(
                          text: "New Workout",
                          color: white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.only(right: 10),
                                height: 100,
                                width: 150,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/meal4.png"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20)),
                              );
                            }),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 160,
                        child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 270,
                                height: 160,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/meal5.png"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Spacer(),
                                      MyText(
                                          text: "Wake Up Call",
                                          color: white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600),
                                      MyText(
                                          text: "04 Workouts for Beginner",
                                          color: secondYellowColor,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      MyText(
                          text: "New Workout",
                          color: white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.only(right: 10),
                                height: 100,
                                width: 150,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/meal4.png"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20)),
                              );
                            }),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 160,
                        child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 270,
                                height: 160,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/meal5.png"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Spacer(),
                                      MyText(
                                          text: "Wake Up Call",
                                          color: white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.w600),
                                      MyText(
                                          text: "04 Workouts for Beginner",
                                          color: secondYellowColor,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400),
                                    ],
                                  ),
                                ),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      MyText(
                          text: "New Workout",
                          color: white,
                          fontSize: 17,
                          fontWeight: FontWeight.w600),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.only(right: 10),
                                height: 100,
                                width: 150,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/meal4.png"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(20)),
                              );
                            }),
                      ),
                    ],
                  ),
                ]),
              )
            ]),
          ),
        ),
      )),
    );
  }
}

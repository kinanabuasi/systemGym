import 'package:flutter/material.dart';

import '../../../../component/my_text.dart';
import '../../../../constants/colors.dart';

class WorkoutCategoriesScreen extends StatelessWidget {
  const WorkoutCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: mainColor,
          appBar: AppBar(
            backgroundColor: mainColor,
            elevation: 0,
            centerTitle: true,
            title: MyText(
                text: "Workout Categories",
                color: white,
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
          body: ListView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Container(
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
                          text: "Bigenner",
                        ),
                        Tab(text: "Intermediate"),
                        Tab(text: "Advance")
                      ]),
                ),
              ),
              SizedBox(
                height: 1000,
                child: TabBarView(children: [
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10),
                          child: Container(
                            width: double.infinity,
                            height: 160,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/meal1.png"),
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
                        );
                      }),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10),
                          child: Container(
                            width: double.infinity,
                            height: 160,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/meal1.png"),
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
                        );
                      }),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10),
                          child: Container(
                            width: double.infinity,
                            height: 160,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/meal1.png"),
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
                        );
                      }),
                ]),
              )
            ],
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/component/my_text.dart';

import '../../../component/buttons/my_buttons.dart';
import '../../../constants/colors.dart';
import '../../widgets/public/trainer_detail_widgets/read_all_reviews.dart';

class WorkoutPlanTodayScreen extends StatelessWidget {
  const WorkoutPlanTodayScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40, bottom: 20),
          child: MyButton(
              color: yellowColor,
              widget: MyText(
                  text: "Start Workout",
                  color: black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
              function: () {}),
        ),
        backgroundColor: black,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(0),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: const Center(
                        child: Padding(
                      padding: EdgeInsets.all(8.0),
                    )),
                  )),
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/images/trainer.png",
                  fit: BoxFit.cover,
                ),
              ),
              backgroundColor: mainColor,
              expandedHeight: 170,
              leading: IconButton(
                icon:
                    const Icon(Icons.chevron_left, size: 33, color: whiteGrey),
                onPressed: () {
                  Get.back();
                },
              ),
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 15),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                  text: "Day 01 - Warm Up",
                                  color: white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                              MyText(
                                  text: "04 Workouts for Beginner",
                                  color: yellowColor,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                            ]),
                        const SizedBox(height: 25),
                        Row(
                          children: [
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  color: blackWithOpacity,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    const Icon(Icons.play_circle, color: white),
                                    const SizedBox(width: 5),
                                    MyText(
                                        text: "60 min",
                                        color: white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.normal)
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 100,
                              decoration: BoxDecoration(
                                  color: blackWithOpacity,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    const Icon(Icons.fireplace_outlined,
                                        color: white),
                                    const SizedBox(width: 5),
                                    MyText(
                                        text: "350 Cal",
                                        color: white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.normal)
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        MyText(
                            text:
                                "Hello etrevago company how are you? Hello etrevago company how",
                            color: white,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width - 60,
                                height: 90,
                                decoration: BoxDecoration(
                                    color: blackWithOpacity,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 90,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius: BorderRadius.circular(10),
                                        image: const DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                            "assets/images/trainer.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        MyText(
                                            text: "Simple Warm-Up",
                                            color: white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                        MyText(
                                            text: "Exercises",
                                            color: white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                        MyText(
                                            text: "0:30",
                                            color: yellowColor,
                                            fontSize: 13,
                                            fontWeight: FontWeight.bold),
                                      ],
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.chevron_right,
                                          color: white,
                                        ))
                                  ],
                                ),
                              ),
                            );
                          },
                          itemCount: 3,
                        ),
                      ]),
                ),
              ),
            )
          ],
        ));
  }
}

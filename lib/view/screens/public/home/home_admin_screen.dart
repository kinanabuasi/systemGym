import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/logic/controllers/public/All_coach_controller.dart';
import 'package:systemgym/logic/controllers/public/homeAdminController.dart';
import 'package:systemgym/view/widgets/public/home_admin_screen_widgets/PersonWidget.dart';

import '../../../../component/my_counter.dart';
import '../../../../component/my_text.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/routes.dart';
import '../../../widgets/public/home_admin_screen_widgets/admin_drawer_body.dart';
import '../../../widgets/public/home_admin_screen_widgets/see_all_widget.dart';

class HomeAdminScreen extends StatelessWidget {
  const HomeAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GetBuilder<homeAdminController>(
        init: homeAdminController(),
        builder: (controller) => Scaffold(
          backgroundColor: mainColor,
          drawer: const drawerBody(),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 20, top: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                MyText(
                                    text: "Hello",
                                    color: white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                                //
                                MyText(
                                    text: " Admin",
                                    color: secondYellowColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600)
                              ],
                            ),
                            MyText(
                                text: "Manage your club today!",
                                color: white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600)
                          ],
                        ),
                        const Spacer(),
                        Builder(builder: (context) {
                          return InkWell(
                            onTap: () {
                              Scaffold.of(context).openDrawer();
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Center(
                                child: SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: Stack(
                                    children: [
                                      const CircleAvatar(
                                        backgroundImage: AssetImage(
                                            "assets/images/person3.png"),
                                        radius: 25,
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: Container(
                                          height: 8,
                                          width: 8,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: green,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        })
                      ],
                    ),
                    const SizedBox(height: 30),
                    SeeAllWidget(
                      whatToSeeAll: 'All Employees',
                      seeAllFunction: () {
                        Get.toNamed(Routes.allEmployeeScreen);
                      },
                    ),
                    const SizedBox(height: 10),
                    // const ShowAllWidget(
                    //   activeColor: green,
                    //   image: "assets/images/person1.png",
                    //   name: "Amanka",
                    // ),
                    const SizedBox(height: 20),
                    Container(
                        //  height: 450,
                        margin: const EdgeInsets.only(right: 20),
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: whiteGrey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyText(
                                  color: originalBlack,
                                  text: "Performance Analyzsis",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                                ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: 3,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10.0),
                                        child: Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: colorPref[index],
                                              radius: 5,
                                            ),
                                            const SizedBox(width: 5),
                                            MyText(
                                                text: typePerf[index],
                                                color: originalBlack,
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400),
                                            const Spacer(),
                                            Row(
                                              children: [
                                                MyText(
                                                    text: precentPerf[index],
                                                    color: originalBlack,
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.normal),
                                                const SizedBox(width: 5),
                                                SizedBox(
                                                  width: 170,
                                                  child:
                                                      LinearProgressIndicator(
                                                    backgroundColor: darkGrey,
                                                    color: colorPref[index],
                                                    value: doublePerf[index],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    })
                              ]),
                        )),
                    const SizedBox(height: 20),
                    SeeAllWidget(
                      whatToSeeAll: 'All Coaches',
                      seeAllFunction: () {
                        Get.toNamed(Routes.allCoachScreen);
                      },
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.allCoach.length,
                        itemBuilder: (context, index) => PersonWidget(
                            image: controller.allCoach[index].imagePath,
                            title: controller.allCoach[index].name!.en,
                            color: Colors.green),
                        // Text(controller.allCoach[index].name!.ar
                        //     .toString())
                      ),
                    ),

                    // const ShowAllWidget(
                    //   activeColor: red,
                    //   image: "assets/images/person3.png",
                    //   name: "Amanka",
                    // ),
                    const SizedBox(height: 20),
                    SeeAllWidget(
                      whatToSeeAll: 'All Products',
                      seeAllFunction: () {
                        //   controller.test();
                        Get.toNamed(Routes.allProductsScreen);
                      },
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 150,
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.allProduct.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.all(5),
                              margin: const EdgeInsets.all(5),
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white),
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/images/trainer1.png"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 40,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        MyText(
                                            text: controller
                                                .allProduct[index].name!.en
                                                .toString(),
                                            color: white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700),
                                        MyText(
                                            text:
                                                '${controller.allProduct[index].price.toString()}\$',
                                            color: red,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    // SeeAllWidget(
                    //   whatToSeeAll: 'All Sections',
                    //   seeAllFunction: () {
                    //     Get.toNamed(Routes.allTrainingsSectionScreen);
                    //   },
                    // ),
                    // const SizedBox(height: 10),
                    // SizedBox(
                    //   height: 100,
                    //   child: ListView.builder(
                    //       physics: const BouncingScrollPhysics(),
                    //       scrollDirection: Axis.horizontal,
                    //       itemCount: 5,
                    //       shrinkWrap: true,
                    //       itemBuilder: (context, index) {
                    //         return Container(
                    //           margin: const EdgeInsets.only(right: 10),
                    //           height: 100,
                    //           width: 75,
                    //           decoration: BoxDecoration(
                    //               image: const DecorationImage(
                    //                   image:
                    //                       AssetImage("assets/images/meal3.png"),
                    //                   fit: BoxFit.cover),
                    //               borderRadius: BorderRadius.circular(20)),
                    //           child: Align(
                    //             alignment: Alignment.bottomCenter,
                    //             child: Padding(
                    //               padding: const EdgeInsets.all(8.0),
                    //               child: MyText(
                    //                   text: "Gym",
                    //                   color: white,
                    //                   fontSize: 16,
                    //                   fontWeight: FontWeight.w700),
                    //             ),
                    //           ),
                    //         );
                    //       }),
                    // ),
                    const SizedBox(
                      height: 20,
                    ),
                    SeeAllWidget(
                      whatToSeeAll: 'All Teams',
                      seeAllFunction: () {
                        // Get.toNamed(Routes.allTeamScreen);
                      },
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 120,
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.allTeams.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 10),
                              height: 120,
                              width: 220,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage(
                                          "assets/images/workout_plan_detail.png"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MyText(
                                      text: controller.allTeams[index].name!.en
                                          .toString(),
                                      color: black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            );
                          }),
                    ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    // SeeAllWidget(
                    //   whatToSeeAll: 'All Championships',
                    //   seeAllFunction: () {
                    //     Get.toNamed(Routes.allTournamentScreen);
                    //   },
                    // ),
                    // const SizedBox(height: 10),
                    // SizedBox(
                    //   height: 120,
                    //   child: ListView.builder(
                    //       physics: const BouncingScrollPhysics(),
                    //       scrollDirection: Axis.horizontal,
                    //       itemCount: 5,
                    //       shrinkWrap: true,
                    //       itemBuilder: (context, index) {
                    //         return Container(
                    //           margin: const EdgeInsets.only(right: 10),
                    //           height: 120,
                    //           width: 220,
                    //           decoration: BoxDecoration(
                    //               image: const DecorationImage(
                    //                   image: AssetImage("assets/images/meal6.png"),
                    //                   fit: BoxFit.cover),
                    //               borderRadius: BorderRadius.circular(20)),
                    //           child: Align(
                    //             alignment: Alignment.bottomLeft,
                    //             child: Padding(
                    //               padding: const EdgeInsets.all(8.0),
                    //               child: MyText(
                    //                   text: "Gym Centres",
                    //                   color: white,
                    //                   fontSize: 16,
                    //                   fontWeight: FontWeight.w700),
                    //             ),
                    //           ),
                    //         );
                    //       }),
                    // ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    // SeeAllWidget(
                    //   whatToSeeAll: 'All payments from trainers',
                    //   seeAllFunction: () {},
                    // ),
                    // const SizedBox(height: 10),
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 20.0),
                    //   child: MyCounter(
                    //       itemsLength: 4,
                    //       id: "id",
                    //       name: "name",
                    //       description: "description"),
                    // ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    // SeeAllWidget(
                    //   whatToSeeAll: 'All payments to coaches',
                    //   seeAllFunction: () {},
                    // ),
                    // const SizedBox(height: 10),
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 20.0),
                    //   child: MyCounter(
                    //       itemsLength: 4,
                    //       id: "id",
                    //       name: "name",
                    //       description: "description"),
                    // ),
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    // SeeAllWidget(
                    //   whatToSeeAll: 'All payments to employees',
                    //   seeAllFunction: () {},
                    // ),
                    // const SizedBox(height: 10),
                    // Padding(
                    //   padding: const EdgeInsets.only(right: 20.0),
                    //   child: MyCounter(
                    //       itemsLength: 4,
                    //       id: "id",
                    //       name: "name",
                    //       description: "description"),
                    // )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

List<String> typePerf = ["trainers", "employees", "coaches"];
List<Color> colorPref = [green, orange, red];
List<String> precentPerf = ["50%", "80%", "40%"];
List<double> doublePerf = [0.5, 0.8, 0.4];

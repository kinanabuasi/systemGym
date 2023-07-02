import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../component/my_counter.dart';
import '../../../../component/my_text.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/routes.dart';
import '../../../widgets/public/home_admin_screen_widgets/admin_drawer_body.dart';
import '../../../widgets/public/home_admin_screen_widgets/see_all_widget.dart';
import '../../../widgets/public/home_admin_screen_widgets/show_all_widget.dart';
import '../add_team_screen.dart';

class HomeAdminScreen extends StatelessWidget {
  const HomeAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        drawer: const drawerBody(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, bottom: 20, top: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                              text: "Admin",
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
                                  backgroundImage:
                                      AssetImage("assets/images/person3.png"),
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
              const SeeAllWidget(
                whatToSeeAll: 'All Employees',
              ),
              const SizedBox(height: 10),
              const ShowAllWidget(
                activeColor: green,
                image: "assets/images/person1.png",
                name: "Amanka",
              ),
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
                                              fontWeight: FontWeight.normal),
                                          const SizedBox(width: 5),
                                          SizedBox(
                                            width: 170,
                                            child: LinearProgressIndicator(
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
              const SeeAllWidget(
                whatToSeeAll: 'All Coaches',
              ),
              const SizedBox(height: 10),
              const ShowAllWidget(
                activeColor: whiteGrey,
                image: "assets/images/person2.png",
                name: "Stella",
              ),
              const SizedBox(height: 20),
              const SeeAllWidget(
                whatToSeeAll: 'All Trainers',
              ),
              const SizedBox(height: 10),
              const ShowAllWidget(
                activeColor: red,
                image: "assets/images/person3.png",
                name: "Amanka",
              ),
              const SizedBox(height: 20),
              const SeeAllWidget(
                whatToSeeAll: 'All Products',
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 150,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 150,
                        width: 130,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/images/meal5.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)),
                      );
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              const SeeAllWidget(
                whatToSeeAll: 'All Sections',
              ),
              const SizedBox(height: 10),
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
                        width: 75,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/images/meal3.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: MyText(
                                text: "Gym",
                                color: white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              const SeeAllWidget(
                whatToSeeAll: 'All Teams',
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 120,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 120,
                        width: 220,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/images/meal6.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: MyText(
                                text: "Gym Centres",
                                color: white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              const SeeAllWidget(
                whatToSeeAll: 'All Championships',
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 120,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 120,
                        width: 220,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/images/meal6.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: MyText(
                                text: "Gym Centres",
                                color: white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
              const SeeAllWidget(
                whatToSeeAll: 'All payments from trainers',
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: MyCounter(
                    itemsLength: 4,
                    id: "id",
                    name: "name",
                    description: "description"),
              ),
              const SizedBox(
                height: 20,
              ),
              const SeeAllWidget(
                whatToSeeAll: 'All payments to coaches',
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: MyCounter(
                    itemsLength: 4,
                    id: "id",
                    name: "name",
                    description: "description"),
              ),
              const SizedBox(
                height: 20,
              ),
              const SeeAllWidget(
                whatToSeeAll: 'All payments to employees',
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: MyCounter(
                    itemsLength: 4,
                    id: "id",
                    name: "name",
                    description: "description"),
              )
            ]),
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

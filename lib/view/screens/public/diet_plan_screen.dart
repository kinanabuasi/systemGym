// ignore_for_file: unused_import, unused_field, prefer_final_fields, must_be_immutable, prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../component/my_text.dart';
import '../../../component/upload_image_widget.dart';
import '../../../constants/colors.dart';

class DietPlanScreen extends StatelessWidget {
  const DietPlanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: mainColor,
          appBar: AppBar(
            backgroundColor: mainColor,
            elevation: 0,
            leading: IconButton(
                onPressed: () {}, icon: Icon(Icons.arrow_back, color: white)),
            centerTitle: true,
            title: MyText(
                text: "Diet Plan",
                color: white,
                fontSize: 16,
                fontWeight: FontWeight.w700),
            actions: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Center(
                  child: SizedBox(
                    width: 30,
                    height: 30,
                    child: Stack(
                      children: [
                        CircleAvatar(
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
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Column(children: [
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
                          text: "Breakfast",
                        ),
                        Tab(text: "Lunch"),
                        Tab(text: "Dinner")
                      ]),
                ),
              ),
              SizedBox(
                height: 1000,
                child: TabBarView(children: [
                  GridView.builder(
                      shrinkWrap: true,
                      itemCount: mealsPhoto.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      mealsPhoto[index],
                                    ),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20)),
                            height: 150,
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MyText(
                                      text: mealsName[index],
                                      color: white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                )),
                          ),
                        );
                      }),
                  GridView.builder(
                      shrinkWrap: true,
                      itemCount: mealsPhoto.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      mealsPhoto[index],
                                    ),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20)),
                            height: 150,
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MyText(
                                      text: mealsName[index],
                                      color: white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                )),
                          ),
                        );
                      }),
                  GridView.builder(
                      shrinkWrap: true,
                      itemCount: mealsPhoto.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      mealsPhoto[index],
                                    ),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20)),
                            height: 150,
                            child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: MyText(
                                      text: mealsName[index],
                                      color: white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                )),
                          ),
                        );
                      })
                ]),
              )
            ]),
          )),
    );
  }
}

List<String> mealsPhoto = [
  "assets/images/meal1.png",
  "assets/images/meal2.png",
  "assets/images/meal3.png",
  "assets/images/meal4.png",
  "assets/images/meal5.png",
  "assets/images/meal6.png",
];

List<String> mealsName = [
  "Oatmeal",
  "Waffles",
  "Cornflakes",
  "Fruites Salad",
  "Pancakes",
  "Bread and Tea",
];

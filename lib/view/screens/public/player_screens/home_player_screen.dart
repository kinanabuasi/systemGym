import 'package:flutter/material.dart';

import '../../../../component/my_text.dart';
import '../../../../constants/colors.dart';

class HomePlayerScreen extends StatelessWidget {
  const HomePlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
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
                          MyText(
                              text: "Juliet",
                              color: secondYellowColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)
                        ],
                      ),
                      MyText(
                          text: "Let’s start your day",
                          color: white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600)
                    ],
                  ),
                  const Spacer(),
                  Padding(
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
                  )
                ],
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  MyText(
                      text: "Today Workout Plan",
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: MyText(
                        text: "6 am - 8 am",
                        color: secondYellowColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 170,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 170,
                        width: 150,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/images/meal2.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: MyText(
                                text: "Jogging",
                                color: white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  MyText(
                      text: "Categories",
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: MyText(
                        text: "See all",
                        color: whiteGrey,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
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
              const SizedBox(height: 20),
              Row(
                children: [
                  MyText(
                      text: "Trending",
                      color: white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: MyText(
                        text: "See all",
                        color: whiteGrey,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ],
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
              const SizedBox(height: 20),
              MyText(
                  text: "Discover",
                  color: white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
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
                        width: 220,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage("assets/images/meal5.png"),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)),
                      );
                    }),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../../component/my_text.dart';
import '../../../../constants/colors.dart';

class FitnessTrainersScreen extends StatelessWidget {
  const FitnessTrainersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: mainColor,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.chevron_left, color: white, size: 25)),
          centerTitle: true,
          title: MyText(
              text: "FITNESS TRAINERS",
              color: white,
              fontSize: 20,
              fontWeight: FontWeight.w700),
        ),
        body: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                    color: darkGrey, borderRadius: BorderRadius.circular(20)),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage("assets/images/person3.png"),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              MyText(
                                  text: "Richard Will",
                                  color: white,
                                  fontSize: 17,
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
                              color: whiteGrey,
                              fontSize: 11,
                              fontWeight: FontWeight.normal),
                          MyText(
                              text: "5 years experience",
                              color: secondYellowColor,
                              fontSize: 11,
                              fontWeight: FontWeight.normal)
                        ],
                      ),
                      const Icon(
                        Icons.chevron_right,
                        color: white,
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}

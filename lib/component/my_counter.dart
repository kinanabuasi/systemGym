// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../constants/colors.dart';
import 'my_text.dart';

class MyCounter extends StatelessWidget {
  final int itemsLength;
  final String id, name, description;
  bool haveBlackArrow;
  MyCounter(
      {super.key,
      required this.itemsLength,
      required this.id,
      required this.name,
      required this.description,
      this.haveBlackArrow = false});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: itemsLength,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Container(
              height: 60,
              width: double.infinity,
              color: whiteGrey.withOpacity(.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/black_avatar.png'),
                    radius: 25,
                  ),
                  MyText(
                      text: "ID",
                      color: secondYellowColor,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                  MyText(
                      text: "department name",
                      color: secondYellowColor,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                  MyText(
                      text: "description",
                      color: secondYellowColor,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                  if (haveBlackArrow)
                    const Icon(
                      Icons.arrow_right_sharp,
                      color: originalBlack,
                    )
                ],
              ),
            ),
          );
        });
  }
}

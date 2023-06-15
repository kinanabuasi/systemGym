import 'package:flutter/material.dart';

import '../../component/my_text.dart';
import '../../constants/colors.dart';

class ContactInfo extends StatelessWidget {
  final String id, name, description;
  final bool haveBlackArrow;
  const ContactInfo({super.key, this.haveBlackArrow = false, required this.id, required this.name, required this.description});

  @override
  Widget build(BuildContext context) {
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
              backgroundImage: AssetImage('assets/images/black_avatar.png'),
              radius: 25,
            ),
            MyText(text: "ID", color: secondYellowColor, fontSize: 15, fontWeight: FontWeight.normal),
            MyText(text: "department name", color: secondYellowColor, fontSize: 15, fontWeight: FontWeight.normal),
            MyText(text: "description", color: secondYellowColor, fontSize: 15, fontWeight: FontWeight.normal),
            if (haveBlackArrow)
              const Icon(
                Icons.arrow_right_sharp,
                color: originalBlack,
              )
          ],
        ),
      ),
    );
  }
}

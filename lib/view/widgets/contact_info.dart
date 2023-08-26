import 'package:flutter/material.dart';

import '../../component/my_text.dart';
import '../../constants/colors.dart';

class ContactInfo extends StatelessWidget {
  final String id, name, description;
  final bool haveBlackArrow;
  const ContactInfo(
      {super.key,
      this.haveBlackArrow = false,
      required this.id,
      required this.name,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2.0),
      child: Container(
        height: 60,
        width: double.infinity,
        color: whiteGrey.withOpacity(.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 10,
            ),
            const CircleAvatar(
              backgroundImage: AssetImage('assets/images/black_avatar.png'),
              radius: 25,
            ),
            SizedBox(
              width: 10,
            ),
            MyText(
                text: id.toString(),
                color: secondYellowColor,
                fontSize: 15,
                fontWeight: FontWeight.normal),
            SizedBox(
              width: 10,
            ),
            MyText(
                text: name.toString(),
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
  }
}

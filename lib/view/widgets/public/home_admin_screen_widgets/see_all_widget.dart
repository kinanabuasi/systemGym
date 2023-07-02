import 'package:flutter/material.dart';

import '../../../../component/my_text.dart';
import '../../../../constants/colors.dart';

class SeeAllWidget extends StatelessWidget {
  final String whatToSeeAll;
  const SeeAllWidget({super.key, required this.whatToSeeAll});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyText(
            text: whatToSeeAll,
            color: white,
            fontSize: 16,
            fontWeight: FontWeight.w600),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: MyText(
              text: "see all",
              color: secondYellowColor,
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}

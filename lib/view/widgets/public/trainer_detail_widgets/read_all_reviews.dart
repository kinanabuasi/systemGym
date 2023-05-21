import 'package:flutter/material.dart';

import '../../../../component/my_text.dart';
import '../../../../constants/colors.dart';

class ReadAllReviews extends StatelessWidget {
  const ReadAllReviews({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 110,
          child: Stack(
            children: [
              const CircleAvatar(
                radius: 15,
                backgroundImage: AssetImage('assets/images/intro3.png'),
              ),
              const Positioned(
                  left: 20,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('assets/images/trainer.png'),
                  )),
              const Positioned(
                  left: 40,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('assets/images/intro1.png'),
                  )),
              const Positioned(
                  left: 60,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage: AssetImage('assets/images/intro2.png'),
                  )),
              Positioned(
                  left: 80,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: yellowColor,
                    child: Center(
                      child: MyText(
                          text: "174",
                          color: black,
                          fontSize: 13,
                          fontWeight: FontWeight.normal),
                    ),
                  )),
            ],
          ),
        ),
        const Spacer(),
        MyText(
            text: "Read all reviews",
            color: yellowColor,
            fontSize: 15,
            fontWeight: FontWeight.normal)
      ],
    );
  }
}

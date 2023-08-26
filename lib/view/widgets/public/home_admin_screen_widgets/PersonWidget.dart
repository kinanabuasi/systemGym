import 'package:flutter/material.dart';

import '../../../../component/my_text.dart';
import '../../../../constants/colors.dart';

Widget PersonWidget({required image, required title, required Color color}) {
  return Container(
    margin: const EdgeInsets.only(right: 10),
    height: 100,
    width: 50,
    child: Column(
      children: [
        Container(
          height: 50,
          child: Stack(
            children: [
              image == null
                  ? Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/player.png'),
                        radius: 25,
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/player.png'),
                        radius: 25,
                      ),
                    ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                top: 0,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: color, width: 3),
                    color: Colors.transparent,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: mainColor, width: 3),
                    color: color,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        MyText(
            text: title.toString(),
            color: color,
            fontSize: 11,
            fontWeight: FontWeight.w400)
      ],
    ),
  );
}

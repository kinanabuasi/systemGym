import 'package:flutter/material.dart';

import '../constants/colors.dart';

class UploadImageWidget extends StatelessWidget {
  double radius;
  double circleWidth, circleHeight;
  String bacImage;
  UploadImageWidget(
      {super.key,
      this.radius = 47,
      this.circleWidth = 94,
      this.circleHeight = 94,
      this.bacImage = 'assets/images/black_avatar.png'});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: circleWidth,
      height: circleHeight,
      child: Stack(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(bacImage),
            radius: radius,
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 46,
              width: 46,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: darkGrey,
              ),
              child: Image.asset(
                'assets/images/camera.png',
                width: 24,
                height: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

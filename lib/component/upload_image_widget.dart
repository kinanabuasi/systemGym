import 'package:flutter/material.dart';

import '../constants/colors.dart';

class UploadImageWidget extends StatelessWidget {
  const UploadImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 94,
      height: 94,
      child: Stack(
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/images/black_avatar.png'),
            radius: 47,
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

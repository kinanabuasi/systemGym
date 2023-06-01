import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../my_text.dart';

class SettingAppBar extends StatelessWidget implements PreferredSizeWidget {
  SettingAppBar({
    super.key,
    required this.title,
    this.titleColor = white,
  });
  final String title;
  Color titleColor;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration:
                const BoxDecoration(color: darkGrey, shape: BoxShape.circle),
            child: Center(
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.chevron_left,
                  color: white,
                  size: 25,
                ),
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: MyText(
            text: title,
            color: titleColor,
            fontSize: 25,
            fontWeight: FontWeight.bold));
  }
}

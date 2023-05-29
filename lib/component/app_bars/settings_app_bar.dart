import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/colors.dart';
import '../my_text.dart';

class SettingAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SettingAppBar({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: black,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(color: darkGrey, shape: BoxShape.circle),
            child: Center(
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(
                  Icons.chevron_left,
                  color: white,
                  size: 30,
                ),
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: MyText(
            text: title,
            color: white,
            fontSize: 25,
            fontWeight: FontWeight.bold));
  }
}

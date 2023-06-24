import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/colors.dart';

import '../../logic/controllers/nav_bar/nav_bar.controller.dart';
import '../../model/nav_bar_model.dart';
import 'common_image_view.dart';

class CustomBottomBar extends StatelessWidget {
  final NavBarController controller;
  CustomBottomBar({super.key, required this.controller});

  final List<NabBarModel> bottomMenuList = [
    NabBarModel(
      icon: 'assets/svg/home',
      title: 'Home',
      type: BottomBarEnum.tf,
    ),
    NabBarModel(
      icon: 'assets/svg/playe',
      title: 'Sessions',
      type: BottomBarEnum.tf,
    ),
    NabBarModel(
      icon: 'assets/svg/plate',
      title: 'Diet Plan',
      type: BottomBarEnum.tf,
    ),
    NabBarModel(
      icon: 'assets/svg/bell',
      title: 'Notification',
      type: BottomBarEnum.tf,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: mainColor,
        boxShadow: [
          BoxShadow(
            color: mainColor,
            blurRadius: 6,
            offset: Offset(5, 0),
          ),
        ],
      ),
      child: Obx(() {
        return BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: controller.index.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Column(
                children: [
                  CommonImageView(
                    svgPath: bottomMenuList[index].icon,
                    height: 34,
                    width: 34,
                    color: whiteGrey,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      bottomMenuList[index].title?.tr ?? '',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CommonImageView(svgPath: bottomMenuList[index].icon, height: 28, width: 29, color: white),
                  Padding(
                    padding: const EdgeInsets.all(7),
                    child: Text(
                      bottomMenuList[index].title?.tr ?? '',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              label: ''.tr,
            );
          }),
          onTap: (index) {
            // selectedIndex.value = index;
            controller.index.value = index;
            bottomMenuList[index].type;
          },
        );
      }),
    );
  }
}

enum BottomBarEnum {
  tf,
}

Widget getDefaultWidget() {
  return Container(
    color: Colors.white,
    padding: const EdgeInsets.all(10),
    child: const Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Please replace the respective Widget here',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    ),
  );
}

import 'package:flutter/material.dart';
import '../../../component/app_bars/app_bar.dart';

import 'package:systemgym/component/my_counter.dart';
import 'package:systemgym/constants/colors.dart';

class AllChampionshipScreen extends StatelessWidget {
  const AllChampionshipScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: const MyAppBar(whiteText: "All", yellowText: " championship"),
      body: Column(
        children: [
          const SizedBox(height: 50),
          MyCounter(
            haveBlackArrow: true,
            itemsLength: 4,
            description: "#player score",
            id: "#ID",
            name: "#player name",
          ),
        ],
      ),
    );
  }
}

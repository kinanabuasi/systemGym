import 'package:flutter/material.dart';
import 'package:systemgym/component/app_bars/app_bar.dart';
import 'package:systemgym/component/my_counter.dart';
import 'package:systemgym/constants/colors.dart';

class AllTeamScreen extends StatelessWidget {
  const AllTeamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: const MyAppBar(whiteText: "All", yellowText: " team"),
      body: Column(
        children: [
          const SizedBox(height: 50),
          MyCounter(
            haveBlackArrow: true,
            itemsLength: 4,
            description: "#description",
            id: "#ID",
            name: "#team name",
          ),
        ],
      ),
    );
  }
}

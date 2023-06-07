import 'package:flutter/material.dart';
import '../../../component/app_bars/app_bar.dart';

import 'package:systemgym/component/my_counter.dart';
import 'package:systemgym/constants/colors.dart';

class AllAccountingScreen extends StatelessWidget {
  const AllAccountingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: const MyAppBar(whiteText: "All", yellowText: " accounting"),
      body: Column(
        children: [
          const SizedBox(height: 50),
          MyCounter(
            haveBlackArrow: true,
            itemsLength: 4,
            description: "#total \$",
            id: "#ID",
            name: "#name",
          ),
        ],
      ),
    );
  }
}

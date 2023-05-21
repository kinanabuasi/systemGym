import 'package:flutter/material.dart';
import 'package:systemgym/component/app_bar.dart';
import 'package:systemgym/component/my_counter.dart';
import 'package:systemgym/constants/colors.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: const MyAppBar(whiteText: "All", yellowText: " products"),
      body: Column(
        children: [
          const SizedBox(height: 30),
          MyCounter(
            haveBlackArrow: true,
            itemsLength: 4,
            description: "#product name",
            id: "#ID",
            name: "#name",
          ),
        ],
      ),
    );
  }
}

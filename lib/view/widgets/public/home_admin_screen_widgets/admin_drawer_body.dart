import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/routes.dart';

class drawerBody extends StatelessWidget {
  const drawerBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: black,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Image.asset("assets/images/logo.png"),
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(thickness: 1, color: whiteGrey),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          trailing: const Icon(
                            Icons.chevron_right,
                            color: whiteGrey,
                          ),
                          title: Text(
                            titleNav[index],
                            style:
                                const TextStyle(fontSize: 17, color: whiteGrey),
                          ),
                          onTap: () {
                            Get.toNamed(navigationRoutes[index]);
                          },
                        ),
                        const Divider(thickness: 1, color: whiteGrey)
                      ],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}

List<String> titleNav = [
  "Add a product",
  "Add a section",
  "Add a coach",
  "Add a player",
  "Add an employee",
  "Add diet",
  "Add training",
];
List<String> navigationRoutes = [
  Routes.addProducts,
  Routes.addTrainingSectionScreen,
  Routes.addCoachScreen,
  Routes.addNewDepartment,
  Routes.adding_an_employee_Screen,
  Routes.addDietScreen,
  Routes.addTrainingSectionScreen
];

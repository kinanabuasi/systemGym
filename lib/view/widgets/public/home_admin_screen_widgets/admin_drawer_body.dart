// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../component/my_text.dart';
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
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: titleNav.length,
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
                  }),
              const SizedBox(height: 8),
              InkWell(
                onTap: () {
                  Get.offNamed(Routes.signIn);
                },
                child: MyText(
                    text: "Sign Out",
                    color: red,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Divider(thickness: 1, color: whiteGrey),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.subscribeScreen);
                },
                child: Container(
                  margin: const EdgeInsets.only(
                      left: 10, right: 10, bottom: 25, top: 10),
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                      color: darkGrey, borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 50,
                            decoration: BoxDecoration(
                                color: red,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: MyText(
                                  text: "Pro",
                                  color: whiteGrey,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          MyText(
                              text: "Upgrade to Premium",
                              color: whiteGrey,
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                          MyText(
                              text: "This subscription is auto-renewable",
                              color: whiteGrey,
                              fontSize: 9,
                              fontWeight: FontWeight.w400),
                        ],
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.chevron_right,
                        color: whiteGrey,
                        size: 30,
                      )
                    ]),
                  ),
                ),
              ),
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
  "Add a team",
  "Add a championship",
  "Accounting system",
];
List<String> navigationRoutes = [
  Routes.addProducts,
  Routes.addTrainingSectionScreen,
  Routes.addCoachScreen,
  Routes.addNewDepartment,
  Routes.adding_an_employee_Screen,
  Routes.addDietScreen,
  Routes.addTrainingSectionScreen,
  Routes.addTeamScreen,
  Routes.addANewTournamentScreen,
  Routes.accountingSystemScreen,
];

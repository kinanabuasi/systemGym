import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/component/app_bars/app_bar.dart';
import 'package:systemgym/constants/colors.dart';

import '../../../logic/controllers/public/All_team_controller.dart';
import '../../widgets/contact_info.dart';
import '../../widgets/progress_indicator.dart';

class AllTeamScreen extends GetView<AllTeamController> {
  const AllTeamScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: const MyAppBar(whiteText: "All", yellowText: " team"),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Obx(() => Visibility(
                visible: controller.isLoading.value,
                replacement: const ProgressIndicatorWidget(),
                child: ListView.separated(
                    itemBuilder: (context, i) => ContactInfo(
                          id: controller.allTeam[i].id.toString(),
                          name: controller.allTeam[i].name!.en ?? '',
                          description: controller.allTeam[i].description ?? '',
                        ),
                    separatorBuilder: (context, i) => const SizedBox(
                          height: 45,
                        ),
                    itemCount: controller.allTeam.length),
              )),
        ],
      ),
    );
  }
}

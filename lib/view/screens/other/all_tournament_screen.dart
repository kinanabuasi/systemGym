import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/component/app_bars/app_bar.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:systemgym/logic/controllers/public/All_tournamen_controller.dart';

import '../../widgets/contact_info.dart';
import '../../widgets/progress_indicator.dart';

class AllTournamentScreen extends GetView<AllTournamenController> {
  const AllTournamentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: const MyAppBar(whiteText: "All", yellowText: " tournament"),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Obx(() => Visibility(
                visible: controller.isLoading.value,
                replacement: const ProgressIndicatorWidget(),
                child: ListView.separated(
                    itemBuilder: (context, i) => ContactInfo(
                          id: controller.allTournamen[i].id.toString(),
                          name: controller.allTournamen[i].name!.en!,
                          description: controller.allTournamen[i].description ?? '',
                        ),
                    separatorBuilder: (context, i) => const SizedBox(
                          height: 45,
                        ),
                    itemCount: controller.allTournamen.length),
              )),
        ],
      ),
    );
  }
}

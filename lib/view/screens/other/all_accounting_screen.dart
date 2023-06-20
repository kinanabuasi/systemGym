import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/colors.dart';

import '../../../component/app_bars/app_bar.dart';
import '../../../logic/controllers/public/All_accounting_controller.dart';
import '../../widgets/contact_info.dart';
import '../../widgets/progress_indicator.dart';

class AllAccountingScreen extends GetView<AllAccountingController> {
  const AllAccountingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: const MyAppBar(whiteText: "All", yellowText: " accounting"),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Obx(() => Visibility(
                visible: controller.isLoading.value,
                replacement: const ProgressIndicatorWidget(),
                child: ListView.separated(
                    itemBuilder: (context, i) => ContactInfo(
                          id: controller.allAccounting[i].id.toString(),
                          name: 'name',
                          description: 'total',
                        ),
                    separatorBuilder: (context, i) => const SizedBox(
                          height: 45,
                        ),
                    itemCount: controller.allAccounting.length),
              )),
        ],
      ),
    );
  }
}

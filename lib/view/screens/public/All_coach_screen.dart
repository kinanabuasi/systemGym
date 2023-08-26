// ignore_for_file: must_be_immutable, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/logic/controllers/public/homeAdminController.dart';

import '../../../component/app_bars/app_bar.dart';
import '../../../constants/colors.dart';
import '../../../logic/controllers/public/All_coach_controller.dart';
import '../../widgets/contact_info.dart';
import '../../widgets/progress_indicator.dart';

class All_coach_Screen extends StatelessWidget {
  final homeAdminController _controller = Get.put(homeAdminController());
  All_coach_Screen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(whiteText: "All", yellowText: " coach"),
      body: Container(
        width: double.infinity,
        color: mainColor,
        child: Obx(() => Visibility(
              visible: _controller.isLoading.value,
              replacement: ProgressIndicatorWidget(),
              child: ListView.separated(
                  itemBuilder: (context, i) => ContactInfo(
                        id: _controller.allCoach[i].id.toString(),
                        name: _controller.allCoach[i].name!.en!,
                        description:
                            _controller.allCoach[i].coachDescription ?? '',
                      ),
                  separatorBuilder: (context, i) => SizedBox(
                        height: 10,
                      ),
                  itemCount: _controller.allCoach.length),
            )),
      ),
    );
  }
}

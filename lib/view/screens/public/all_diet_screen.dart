// ignore_for_file: must_be_immutable, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/logic/controllers/public/all_diet_controller.dart';

import '../../../component/app_bars/app_bar.dart';
import '../../../constants/colors.dart';
import '../../widgets/contact_info.dart';
import '../../widgets/progress_indicator.dart';

class All_trainers_Screen extends StatelessWidget {
  final AllDietController _controller = Get.put(AllDietController());
  All_trainers_Screen({Key? key}) : super(key: key);
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
                        id: _controller.allDiet[i].id.toString(),
                        name: _controller.allDiet[i].name!.en!,
                        description: _controller.allDiet[i].description ?? '',
                      ),
                  separatorBuilder: (context, i) => SizedBox(
                        height: 45,
                      ),
                  itemCount: _controller.allDiet.length),
            )),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:systemgym/component/app_bars/app_bar.dart';
import 'package:systemgym/component/my_counter.dart';
import 'package:systemgym/constants/colors.dart';

import '../../../logic/controllers/public/homeAdminController.dart';
import '../../widgets/contact_info.dart';
import '../../widgets/progress_indicator.dart';

class AllProductsScreen extends StatelessWidget {
  final homeAdminController _controller = Get.put(homeAdminController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: const MyAppBar(whiteText: "All", yellowText: " products"),
      body: Container(
        width: double.infinity,
        color: mainColor,
        child: Obx(() => Visibility(
              visible: _controller.isLoading.value,
              replacement: ProgressIndicatorWidget(),
              child: ListView.separated(
                  itemBuilder: (context, i) => ContactInfo(
                        id: _controller.allProduct[i].id.toString(),
                        name: _controller.allProduct[i].name!.en!,
                        description:
                            _controller.allProduct[i].description ?? '',
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

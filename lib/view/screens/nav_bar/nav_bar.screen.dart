import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../logic/controllers/nav_bar/nav_bar.controller.dart';
import '../../widgets/custom_bottom_bar.dart';

class NavBarScreen extends GetView<NavBarController> {
  const NavBarScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // await _exitApp(context, controller);
        return controller.allowExit;
      },
      child: Scaffold(
        body: Obx(
          () {
            return controller.pages[controller.index.value];
          },
        ),
        bottomSheet: CustomBottomBar(controller: controller),
      ),
    );
  }
}

// _exitApp(BuildContext context, AppCustomTheme theme, NavBarController controller) {
//   Alert(
//       context: context,
//       buttons: [
//         DialogButton(
//           onPressed: () {
//             controller.allowExit = true;
//             Get.back();
//           },
//           color: theme.BACKGROUND,
//           border: Border.all(color: ColorConstant.lightBlueA200),
//           child: Text('Ok'.tr, style: theme.Black900_15_W5!.copyWith(fontWeight: FontWeight.w700)),
//         ),
//         DialogButton(
//           onPressed: () {
//             Get.back();
//           },
//           color: ColorConstant.lightBlueA200,
//           child: Text('Cancel'.tr, style: AppStyle.WhiteA2700_15_W7),
//         ),
//       ],
//       content: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Text('Do you want to exit the app'.tr, style: theme.Black900_20_W7),
//       )).show();
// }

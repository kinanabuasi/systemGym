import 'package:get/get.dart';

import '../../controllers/other/add_products_controller.dart';
import '../../controllers/public/modify_club_settings_controller.dart';

class ModifyClubSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ModifyClubSettingsController());
  }
}

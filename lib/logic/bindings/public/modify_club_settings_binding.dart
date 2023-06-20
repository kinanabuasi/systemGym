import 'package:get/get.dart';

import '../../controllers/public/modify_club_settings_controller.dart';

class ModifyClubSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ModifyClubSettingsController());
  }
}

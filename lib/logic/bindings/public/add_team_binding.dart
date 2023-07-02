import 'package:get/get.dart';

import '../../controllers/other/add_products_controller.dart';
import '../../controllers/public/add_team_controller.dart';

//bi
class AddTeamBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddTeamController());
  }
}

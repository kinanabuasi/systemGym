import 'package:get/get.dart';

import '../../controllers/auth/sign_in_controller.dart';
import '../../controllers/auth/sign_up_controller.dart';
import '../../controllers/auth/verification_controller.dart';

class SignUpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpController());
  }
}

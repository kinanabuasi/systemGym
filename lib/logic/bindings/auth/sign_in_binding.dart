import 'package:get/get.dart';

import '../../controllers/auth/sign_in_controller.dart';
import '../../controllers/auth/verification_controller.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInController());
  }
}

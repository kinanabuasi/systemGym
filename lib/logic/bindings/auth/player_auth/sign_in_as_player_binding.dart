import 'package:get/get.dart';

import '../../../controllers/auth/player_auth/sign_in_as_player_controller.dart';

class SignInAsPlayerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignInAsPlayerController());
  }
}

import 'package:get/get.dart';

enum Subscribe {
  monthly,
  yearly,
}

class SubscribeController extends GetxController {
  Rx<Subscribe> selectedSubscribe = Subscribe.monthly.obs;
  bool isMonthlyPressed = false;
  bool isYearlyPressed = false;

  void selectGender(Subscribe subscribe) {
    selectedSubscribe.value = subscribe;
  }
}

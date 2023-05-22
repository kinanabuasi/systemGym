import 'package:get/get.dart';

enum Gender {
  male,
  female,
}

class GenderController extends GetxController {
  Rx<Gender> selectedGender = Gender.male.obs;
  bool isMalePressed = false;
  bool isFemalePressed = false;

  void selectGender(Gender gender) {
    selectedGender.value = gender;
  }
}

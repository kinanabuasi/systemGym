// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:systemgym/view/screens/auth/player_auth/choose_gender_screen.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../data/remote/coash_remote.dart';

class Adding_a_coach_controller extends GetxController {
  final CoachRemoteDataSource _coachRemoteDataSource = CoachRemoteDataSource();
  RxBool isLoading = false.obs;
  var FullNameController = TextEditingController();
  var UserNameController = TextEditingController();
  var PasswordController = TextEditingController();
  var PhoneNumberController = TextEditingController();
  var SubscriptionNumberController = TextEditingController();
  var EmailController = TextEditingController();
  var AboutTheTrainerController = TextEditingController();
  var DateOfBirthController = TextEditingController();
  var CoachStatusController = TextEditingController();
  var StateController = TextEditingController();
  var TheBeginningOfTheShiftController = TextEditingController();
  var SalaryController = TextEditingController();
  var HeightController = TextEditingController();
  var WeightController = TextEditingController();
  var NationalityController = TextEditingController();
  var AddressController = TextEditingController();
  var GovernorateController = TextEditingController();
  var PostalCodeController = TextEditingController();
  var WebsiteController = TextEditingController();
  var FacebookController = TextEditingController();
  var TwitterController = TextEditingController();
  var InstagramController = TextEditingController();
  var YouTubeController = TextEditingController();
  String? selectedGender;
  String? selectedCoachStatus;
  String? selectedProfessionalDegree;
  List Gender = [
    "Male",
    "Female",
  ];
  List CoachStatus = [
    "S1",
    "S2",
    "S3",
  ];
  List ProfessionalDegree = [
    "S1",
    "S2",
    "S3",
  ];
  void onGenderChanged(String? val) {
    selectedGender = val!;
    update();
  }

  void onCoachStatusChanged(String? val) {
    selectedCoachStatus = val!;
    update();
  }

  void onProfessionalDegreeChanged(String? val) {
    selectedProfessionalDegree = val!;
    update();
  }

  void onItemSave() {
    FullNameController.clear();
    UserNameController.clear();
    PhoneNumberController.clear();
    SubscriptionNumberController.clear();
    EmailController.clear();
    AboutTheTrainerController.clear();
    DateOfBirthController.clear();
    CoachStatusController.clear();
    StateController.clear();
    TheBeginningOfTheShiftController.clear();
    SalaryController.clear();
    HeightController.clear();
    WeightController.clear();
    NationalityController.clear();
    AddressController.clear();
    GovernorateController.clear();
    AddressController.clear();
    PostalCodeController.clear();
    WebsiteController.clear();
    FacebookController.clear();
    TwitterController.clear();
    InstagramController.clear();
    YouTubeController.clear();

    update();
  }

  Map<String, dynamic> initCoach() {
    return {
      "name_ar": UserNameController.text.trim(),
      "name_en": UserNameController.text.trim(),
      "user_name": FullNameController.text.trim(),
      "phone": PhoneNumberController.text.trim(),
      "email": EmailController.text.trim(),
      "password": PasswordController.text.trim(),
      "subscription_number": SubscriptionNumberController.text.trim(),
      "salary": SalaryController.text.trim(),
      "coach_description": '',
      "genders_id": selectedGender,
      "nationality_id": NationalityController.text.trim(),
      "location_id": GovernorateController.text.trim(),
      "sub_location_id": AddressController.text.trim(),
      "employment_type_id": '',
      "profs_id": '',
      "date_of_birth": '',
      "start_time": '',
      "end_time": '',
      "link_website": WebsiteController.text.trim(),
      "link_facebook": FacebookController.text.trim(),
      "link_twitter": TwitterController.text.trim(),
      "link_youtupe": YouTubeController.text.trim(),
    };
  }

  addCoach() async {
    Map<String, dynamic> coachData = initCoach();
    final data = await _coachRemoteDataSource.addCoash(coachData);
    data.fold((l) => null, (r) => null);
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class Adding_a_trainer_controller extends GetxController {
  var FullNameController = TextEditingController();
  var UserNameController = TextEditingController();
  var PhoneNumberController = TextEditingController();
  var SubscriptionNumberController = TextEditingController();
  var EmailController = TextEditingController();
  var AboutTheTrainerController = TextEditingController();
  var DateOfBirthController = TextEditingController();
  var SubtypeController = TextEditingController();
  var TheMonthlySubscriptionValue$Controller = TextEditingController();
  var TotalSubscriptionValueController = TextEditingController();
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
  String? selectedSubtype;
  String? selectedNationality;
  String? selectedProfessionalDegree;
  List Gender = [
    "Male",
    "Female",
  ];
  List Subtype = [
    "S1",
    "S2",
    "S3",
  ];
  List Nationality = [
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

  void onSubtypeChanged(String? val) {
    selectedSubtype = val!;
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
    TheMonthlySubscriptionValue$Controller.clear();
    TotalSubscriptionValueController.clear();
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

  Map<String, dynamic> initEmployee() {
    return {
      'link_youtupe': YouTubeController.text.trim(),
      'link_Instagram': InstagramController.text.trim(),
      'link_twitter': TwitterController.text.trim(),
      'link_facebook': FacebookController.text.trim(),
      'link_website': WebsiteController.text.trim(),
      'end_time': FullNameController.text.trim(),
      'start_time': FullNameController.text.trim(),
      'date_of_birth': FullNameController.text.trim(),
      'postal_code': FullNameController.text.trim(),
      'weight': FullNameController.text.trim(),
      'height': FullNameController.text.trim(),
      'profs_id': FullNameController.text.trim(),
      'employment_type_id': FullNameController.text.trim(),
      'sub_location_id': FullNameController.text.trim(),
      'location_id': FullNameController.text.trim(),
      'nationality_id': FullNameController.text.trim(),
      'genders_id': FullNameController.text.trim(),
      'coach_description': FullNameController.text.trim(),
      'salary': FullNameController.text.trim(),
      'password': FullNameController.text.trim(),
      'email': FullNameController.text.trim(),
      'phone': FullNameController.text.trim(),
      'user_name': FullNameController.text.trim(),
      'name_ar': FullNameController.text.trim(),
      'name_en': FullNameController.text.trim(),
      'subscription_number': FullNameController.text.trim(),
      'club_id': FullNameController.text.trim(),
    };
  }
}

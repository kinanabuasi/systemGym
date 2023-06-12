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
}

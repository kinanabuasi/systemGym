// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:systemgym/data/remote/nationality_remote.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../data/remote/coash_remote.dart';
import '../../../model/nationality_model.dart';

class Adding_a_trainer_controller extends GetxController {
  final CoachRemoteDataSource _coachRemoteDataSource = CoachRemoteDataSource();
  final NationalityRemoteDataSource _nationalityRemoteDataSource = NationalityRemoteDataSource();

  RxBool isLoading = false.obs;

  var FullNameController = TextEditingController();
  var UserNameController = TextEditingController();
  var PhoneNumberController = TextEditingController();
  var PasswordController = TextEditingController();
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
  var TheBeginningOfTheShiftController = TextEditingController();
  var WebsiteController = TextEditingController();
  var FacebookController = TextEditingController();
  var TwitterController = TextEditingController();
  var InstagramController = TextEditingController();
  var YouTubeController = TextEditingController();
  String? selectedGender;
  String? selectedSubtype;
  String? selectedNationality;
  String? selectedProfessionalDegree;

  late NationalityModel _nationalityModel;

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
      "name_ar": FullNameController.text.trim(),
      "name_en": FullNameController.text.trim(),
      "user_name": UserNameController.text.trim(),
      "phone": PhoneNumberController.text.trim(),
      "email": EmailController.text.trim(),
      "password": PasswordController.text.trim(),
      "subscription_number": SubscriptionNumberController.text.trim(),
      "salary": TheMonthlySubscriptionValue$Controller.text.trim(),
      "coach_description": AboutTheTrainerController.text.trim(),
      "genders_id": selectedGender,
      "nationality_id": _nationalityModel.id,
      "location_id": GovernorateController.text.trim(),
      "sub_location_id": AddressController.text.trim(),
      "employment_type_id": '',
      "profs_id": '',
      "date_of_birth": DateOfBirthController.text.trim(),
      "start_time": TheBeginningOfTheShiftController.text.trim(),
      "end_time": TheBeginningOfTheShiftController.text.trim(),
      "link_website": WebsiteController.text.trim(),
      "link_facebook": FacebookController.text.trim(),
      "link_twitter": TwitterController.text.trim(),
      "link_youtupe": YouTubeController.text.trim(),
    };
  }

  Future<List<NationalityModel>> getNationality() async {
    List<NationalityModel> nationalty = [];
    final data = await _nationalityRemoteDataSource.allNationality();
    data.fold((l) => null, (r) => nationalty = r);
    return nationalty;
  }

  initNationalty(NationalityModel nationalityModel) {
    _nationalityModel = nationalityModel;
  }
}

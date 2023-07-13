// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:systemgym/constants/routes.dart';
import 'package:systemgym/model/nationality_model.dart';
import 'package:systemgym/services/snackbar.dart';
import 'package:systemgym/view/screens/auth/player_auth/choose_gender_screen.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../data/remote/coash_remote.dart';
import '../../../data/remote/location_remote.dart';
import '../../../data/remote/nationality_remote.dart';
import '../../../data/remote/seeders_remote.dart';
import '../../../data/remote/sublocation_remote.dart';
import '../../../model/Location_model.dart';
import '../../../model/Sublocation_model.dart';
import '../../../model/gender_model.dart';
import '../../../model/seeders_level_model.dart';
import '../../../model/status_model.dart';

class Adding_a_coach_controller extends GetxController {
  final CoachRemoteDataSource _coachRemoteDataSource = CoachRemoteDataSource();
  final SeedersRemote _seedersRemote = SeedersRemote();
  final NationalityRemoteDataSource _nationalityRemoteDataSource = NationalityRemoteDataSource();
  final LocationRemoteDataSource _locationRemoteDataSource = LocationRemoteDataSource();
  final SublocationRemoteDataSource _sublocationRemoteDataSource = SublocationRemoteDataSource();

  RxBool isLoading = false.obs;
  var FullNameController = TextEditingController();
  var FullNameControllerAR = TextEditingController();
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
  var TheEndOfTheShiftController = TextEditingController();
  var SalaryController = TextEditingController();
  var HeightController = TextEditingController();
  var WeightController = TextEditingController();
  var PostalCodeController = TextEditingController();
  var WebsiteController = TextEditingController();
  var FacebookController = TextEditingController();
  var TwitterController = TextEditingController();
  var InstagramController = TextEditingController();
  var YouTubeController = TextEditingController();
  late SeedersIdModel professionalDegree;
  late SeedersIdModel employmentTypeId;
  late NationalityModel nationalityModel;
  late GenderModel genderModel;
  late LocationModel locationModel;
  late SubLocationModel subLocationModel;
  late StatusModel statusModel;
  String? imagePath;

  ScrollController scrollController = ScrollController();

  initImagePath(String path) {
    imagePath = path;
  }

  Future<List<SeedersIdModel>>? AllprofessionalDegree() async {
    List<SeedersIdModel> seeders = [];
    final data = await _seedersRemote.allProf();
    data.fold((l) => null, (r) => seeders = r);
    return seeders;
  }

  selectprofessionalDegree(SeedersIdModel profId) {
    professionalDegree = profId;
  }

  selectGendre(GenderModel gendre) {
    genderModel = gendre;
  }

  Future<List<NationalityModel>>? allNationality() async {
    List<NationalityModel> nationality = [];
    final data = await _nationalityRemoteDataSource.allNationality();
    data.fold((l) => null, (r) => nationality = r);
    return nationality;
  }

  selectNationalty(NationalityModel nationalty) {
    nationalityModel = nationalty;
  }

  Future<List<SeedersIdModel>>? allEmploymentType() async {
    List<SeedersIdModel> employmentType = [];
    final data = await _seedersRemote.allEmploymentType();
    data.fold((l) => null, (r) => employmentType = r);
    return employmentType;
  }

  selectEmploymentType(SeedersIdModel empType) {
    employmentTypeId = empType;
  }

  Future<List<LocationModel>>? allCountry() async {
    List<LocationModel> countries = [];
    final data = await _locationRemoteDataSource.allLocation();
    data.fold((l) => null, (r) => countries = r);
    return countries;
  }

  selectCountry(LocationModel city) {
    locationModel = city;
  }

  Future<List<SubLocationModel>>? allCity() async {
    List<SubLocationModel> sublocation = [];
    final data = await _sublocationRemoteDataSource.allSublocation();
    data.fold((l) => null, (r) => sublocation = r);
    return sublocation;
  }

  selectCity(SubLocationModel city) {
    subLocationModel = city;
  }

  selectStatusModel(StatusModel statue) {
    statusModel = statue;
  }

  addCoach() async {
    isLoading.value = true;
    Map<String, dynamic> coachData = initCoach();
    scrollController.animateTo(0.0, duration: const Duration(milliseconds: 500), curve: Curves.easeOut);
    final data = await _coachRemoteDataSource.addCoash(coachData);
    isLoading.value = false;
    data.fold((l) => SnackbarUtil.showError(message: l.failures), (r) => Get.toNamed(Routes.homeAdminScreen));
  }

  Map<String, dynamic> initCoach() {
    return {
      "image_path": imagePath,
      "name_ar": FullNameController.text.trim(),
      "name_en": FullNameController.text.trim(),
      "user_name": UserNameController.text.trim(),
      "phone": PhoneNumberController.text.trim(),
      "email": EmailController.text.trim(),
      "password": PasswordController.text.trim(),
      "subscription_number": SubscriptionNumberController.text.trim(),
      "salary": SalaryController.text.trim(),
      "coach_description": AboutTheTrainerController.text.trim(),
      "genders_id": genderModel.id,
      "nationality_id": nationalityModel.id,
      "location_id": locationModel.id,
      "sub_location_id": subLocationModel.id,
      "employment_type_id": employmentTypeId.id,
      "profs_id": professionalDegree.id,
      "date_of_birth": DateOfBirthController.text.trim(),
      "start_time": TheBeginningOfTheShiftController.text.trim(),
      "end_time": TheBeginningOfTheShiftController.text.trim(),
      "link_website": WebsiteController.text.trim(),
      "link_facebook": FacebookController.text.trim(),
      "link_twitter": TwitterController.text.trim(),
      "link_youtupe": YouTubeController.text.trim(),
      "height": HeightController.text.trim(),
      "weight": WeightController.text.trim(),
      "postal_code": PostalCodeController.text.trim(),
      "coach_status": statusModel.id,
    };
  }
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:images_picker/images_picker.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:systemgym/services/pick_image.dart';
import 'package:systemgym/services/snackbar.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../constants/routes.dart';
import '../../../data/remote/employee_remote.dart';
import '../../../data/remote/section_remote.dart';
import '../../../model/section_model.dart';
import '../../../model/status_model.dart';
import 'All_section_controller.dart';

class Adding_an_employee_controller extends GetxController {
  final EmployeeRemoteDataSource employeeRemoteDataSource = EmployeeRemoteDataSource();
  final SectionRemoteDataSource _sectionRemoteDataSource = SectionRemoteDataSource();
  final AllSectionController allSectionController = Get.put(AllSectionController());
  var isLoading = false.obs;

  var FullNameController = TextEditingController();
  var FullNameControllerAR = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var NationalNumberController = TextEditingController();
  var DescriptionController = TextEditingController();
  var fullDescriptionController = TextEditingController();
  var TheBeginningOfTheShiftController = TextEditingController();
  var TheEndOfTheShiftController = TextEditingController();
  var TotalSalaryController = TextEditingController();
  var DateOfBirthController = TextEditingController();

  String imagePath = '';
  late SectionModel selectedSectionModel;
  late StatusModel statusModel;

  final ScrollController _scrollController = ScrollController();

  Map<String, dynamic> initEmployee() {
    return {
      'date_of_birth': DateOfBirthController.text.trim(),
      'name_en': FullNameController.text.trim(),
      'name_ar': FullNameControllerAR.text.trim(),
      'full_description': fullDescriptionController.text.trim(),
      'section_id': selectedSectionModel.id,
      'description': DescriptionController.text.trim(),
      'national_id': NationalNumberController.text.trim(),
      'email': emailController.text.trim(),
      'password': passwordController.text.trim(),
      'emp_status': statusModel.id,
      'total_salary': TotalSalaryController.text.trim(),
      'start_time_shift': TheBeginningOfTheShiftController.text.trim(),
      'end_time_shift': TheEndOfTheShiftController.text.trim(),
    };
  }

  addEmployee() async {
    isLoading.value = true;
    Map<String, dynamic> empData = initEmployee();
    _scrollController.animateTo(0.0, duration: const Duration(milliseconds: 500), curve: Curves.easeOut);
    final data = await employeeRemoteDataSource.addEmployee(empData);
    data.fold((l) => SnackbarUtil.showError(message: l.failures), (r) => Get.toNamed(Routes.homeAdminScreen));
    isLoading.value = false;
  }

  Future<List<SectionModel>> getAllSection() async {
    List<SectionModel> sections = [];
    final data = await _sectionRemoteDataSource.allSection();
    data.fold((l) => null, (r) => sections = r);
    return sections;
  }

  selectSection(SectionModel sectionModel) {
    selectedSectionModel = sectionModel;
  }

  selectImage(String path) async {
    imagePath = path;
  }

  selectStatusModel(StatusModel statue) {
    statusModel = statue;
  }
}

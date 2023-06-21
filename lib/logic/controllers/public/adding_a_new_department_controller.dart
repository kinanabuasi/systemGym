// ignore_for_file: depend_on_referenced_packages, unused_local_variable, unused_element

// import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:http/http.dart' as http; 
import '../../../logic/controllers/other/add_products_controller.dart';
// import '../../../constants/urls.dart';

class AddDepartmentController extends GetxController {
  final TextEditingController departmentNameController =
      TextEditingController();
  final TextEditingController departmentDescriptionController =
      TextEditingController();

  final addProductController = AddProductsController.to;

  Future<void> addDepartment() async {
    final String departmentName = departmentNameController.text;
    final String departmentDescription = departmentDescriptionController.text;

    void onItemSave() {
      departmentNameController.clear();
      departmentDescriptionController.clear();

      update();
    }
    // try {
    //   final response = await http.post(
    //     Uri.parse(ApiUrls.department),
    //     headers: {
    //       HttpHeaders.contentTypeHeader: 'application/json',
    //     },
    //     body: addProductController.toJson(
    //         departmentName: departmentName,
    //         departmentDescription: departmentDescription,
    //         departmentImage: addProductController.imagePath),
    //   );
    //   if (response.statusCode == 201) {
    //     Get.snackbar(
    //       "Successful",
    //       "Department Added successfully",
    //       backgroundColor: Colors.green,
    //     );
    //   } else {
    //     Get.snackbar(
    //       "Error",
    //       "Failed to add department",
    //       backgroundColor: Colors.red,
    //     );
    //   }
    // } catch (e) {
    //   rethrow;
    // } finally {
    //   departmentNameController.clear();
    //   departmentDescriptionController.clear();
    // }
  }
}

// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:systemgym/data/remote/employee_remote.dart';

import '../../../model/employee_model.dart';

class AllEmployeesController extends GetxController {
  final EmployeeRemoteDataSource employeeRemoteDataSource = EmployeeRemoteDataSource();
  List<EmployeeModel> allEmp = [];
  RxBool isLoading = true.obs;
  @override
  void onInit() {
    getAllEmployees();
    super.onInit();
  }

  void getAllEmployees() async {
    final data = await employeeRemoteDataSource.allEmployee();
    data.fold((l) => null, (r) => allEmp = r);
    isLoading.value = false;
  }
}

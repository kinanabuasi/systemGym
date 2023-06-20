// ignore_for_file: file_names

import 'package:get/get.dart';

import '../../../data/remote/section_remote.dart';
import '../../../model/section_model.dart';

class AllSectionController extends GetxController {
  final SectionRemoteDataSource _sectionRemoteDataSource = SectionRemoteDataSource();
  List<SectionModel> allEmp = [];
  RxBool isLoading = true.obs;
  @override
  void onInit() {
    getAllSection();
    super.onInit();
  }

  void getAllSection() async {
    final data = await _sectionRemoteDataSource.allSection();
    data.fold((l) => null, (r) => allEmp = r);
    isLoading.value = false;
  }
}

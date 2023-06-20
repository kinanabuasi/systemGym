// ignore_for_file: file_names

import 'package:get/get.dart';

import '../../../data/remote/coash_remote.dart';
import '../../../model/coach_model.dart';

class AllCoachController extends GetxController {
  final CoachRemoteDataSource coachRemoteDataSource = CoachRemoteDataSource();
  List<CoachModel> allCoach = [];
  RxBool isLoading = true.obs;
  @override
  void onInit() {
    getAllCoach();
    super.onInit();
  }

  void getAllCoach() async {
    final data = await coachRemoteDataSource.allCoach();
    data.fold((l) => null, (r) => allCoach = r);
    isLoading.value = false;
  }
}

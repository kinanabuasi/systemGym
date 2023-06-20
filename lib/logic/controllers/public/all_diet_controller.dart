// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:systemgym/model/food_model.dart';

import '../../../data/remote/food_remote.dart';

class AllDietController extends GetxController {
  final FoodRemoteDataSource _dietRemoteDataSource = FoodRemoteDataSource();
  List<FoodModel> allDiet = [];
  RxBool isLoading = true.obs;
  @override
  void onInit() {
    getAllDiet();
    super.onInit();
  }

  void getAllDiet() async {
    final data = await _dietRemoteDataSource.allFood();
    data.fold((l) => null, (r) => allDiet = r);
    isLoading.value = false;
  }
}

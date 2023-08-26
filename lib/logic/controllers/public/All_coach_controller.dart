// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:systemgym/constants/storage_keys.dart';
import 'package:systemgym/data/local/auth_local.dart';

import '../../../data/remote/auth_remote.dart';
import '../../../data/remote/coash_remote.dart';
import '../../../model/coach_model.dart';
import '../../../services/snackbar.dart';

class AllCoachController extends GetxController {
  AllCoachController() {
    getAllCoach();
  }
  final CoachRemoteDataSource coachRemoteDataSource = CoachRemoteDataSource();
  List<CoachModel> allCoach = [];
  RxBool isLoading = true.obs;
  @override
  void onInit() {
    getAllCoach();
    super.onInit();
  }

  test() async {
    // gettoken();
    getAllCoach();
  }

  void getAllCoach() async {
    final data = await coachRemoteDataSource.allCoach();
    data.fold((l) => null, (r) => allCoach = r);
    print(allCoach.length);
    isLoading.value = false;
  }
}

Future<void> gettoken() async {
  final AuthRemoteDataSource _authRemoteDataSource = AuthRemoteDataSource();

  Map<String, dynamic> map = {
    'email': 'admin@admin.com',
    'password': '12345678'
  };
  final data = await _authRemoteDataSource.adminLogin(map);
  data.fold((l) => SnackbarUtil.showError(message: 'Wrong Data'), (r) => null);
  print(GetStorage().read(StorageKey.TOKEN));
}

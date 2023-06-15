// ignore_for_file: file_names

import 'package:get/get.dart';

import '../../../data/remote/accounting_remote.dart';
import '../../../model/accounting_model.dart';

class AllAccountingController extends GetxController {
  final AccountingRemoteDataSource accountingRemoteDataSource = AccountingRemoteDataSource();
  List<AccountingModel> allAccounting = [];
  RxBool isLoading = true.obs;
  @override
  void onInit() {
    getAllAccounting();
    super.onInit();
  }

  void getAllAccounting() async {
    final data = await accountingRemoteDataSource.allAccounting();
    data.fold((l) => null, (r) => allAccounting = r);
    isLoading.value = false;
  }
}

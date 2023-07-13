import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:systemgym/data/remote/product_remote.dart';
import 'package:systemgym/services/snackbar.dart';

import '../../../data/remote/seeders_remote.dart';
import '../../../model/seeders_level_model.dart';

class AddProductsController extends GetxController {
  final ProductRemoteDataSource _productRemoteDataSource = ProductRemoteDataSource();
  final SeedersRemote _seedersRemote = SeedersRemote();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController productName = TextEditingController();
  TextEditingController productNameAR = TextEditingController();
  TextEditingController productDescription = TextEditingController();
  TextEditingController productPrice = TextEditingController();
  late SeedersIdModel productTypeId;
  late String imagePath;

  RxBool isLoading = false.obs;

  addProduct() async {
    // if (validateForm()) {
    isLoading.value = true;
    Map<String, dynamic> productData = initProduct();
    final data = await _productRemoteDataSource.addProduct(productData);
    isLoading.value = false;
    data.fold((l) => null, (r) => null);
    // }
  }

  Future<List<SeedersIdModel>>? allProduct() async {
    List<SeedersIdModel> seeders = [];
    final data = await _seedersRemote.allProductType();
    data.fold((l) => null, (r) => seeders = r);

    return seeders;
  }

  selectProductType(SeedersIdModel proType) {
    productTypeId = proType;
  }

  initImagePath(String path) {
    imagePath = path;
  }

  bool validateForm() {
    FormState? form = formKey.currentState;
    form!.save();
    if (!form.validate()) {
      SnackbarUtil.showWarning(message: 'Please fix the errors in red before submitting');
      return false;
    } else {
      return true;
    }
  }

  Map<String, dynamic> initProduct() {
    return {
      'name_ar': productNameAR.text.trim(),
      'name_en': productName.text.trim(),
      'description': productDescription.text.trim(),
      'price': productPrice.text.trim(),
      'product_types_id': productTypeId.id,
    };
  }
}

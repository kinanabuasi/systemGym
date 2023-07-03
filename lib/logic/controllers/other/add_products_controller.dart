import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:systemgym/data/remote/product_remote.dart';

class AddProductsController extends GetxController {
  final ProductRemoteDataSource _productRemoteDataSource = ProductRemoteDataSource();

  String? productType;
  TextEditingController productName = TextEditingController();
  TextEditingController productDescription = TextEditingController();
  TextEditingController productPrice = TextEditingController();

  addProduct() async {
    Map<String, dynamic> productData = initProduct();
    final data = await _productRemoteDataSource.addProduct(productData);
    data.fold((l) => null, (r) => null);
  }

  Map<String, dynamic> initProduct() {
    return {
      'name_ar': productName.text.trim(),
      'name_en': productName.text.trim(),
      'description': productDescription.text.trim(),
      'price': productPrice.text.trim(),
      'product_types_id': productName.text.trim(),
    };
  }
}

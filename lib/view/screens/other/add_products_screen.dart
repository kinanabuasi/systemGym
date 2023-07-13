// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/logic/controllers/other/add_products_controller.dart';
import 'package:systemgym/model/seeders_level_model.dart';
import 'package:systemgym/view/widgets/drop_down_widget.dart';
import 'package:systemgym/view/widgets/full_progress_indicator.dart';

import '../../../component/app_bars/app_bar.dart';
import '../../../component/buttons/my_buttons.dart';
import '../../../component/my_text.dart';
import '../../../component/text_form/my_text_form_field.dart';
import '../../../component/upload_image_widget.dart';
import '../../../constants/colors.dart';

class AddProductScreen extends GetView<AddProductsController> {
  const AddProductScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(whiteText: "ADD", yellowText: " products/services"),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            width: double.infinity,
            color: mainColor,
            child: Form(
              // key: controller.formKey,
              child: Column(
                children: [
                  const SizedBox(
                    height: 18,
                  ),
                  UploadImageWidget(onSelect: (x) => controller.initImagePath(x)),
                  const SizedBox(
                    height: 14,
                  ),
                  const Text(
                    "upload image",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: yellowColor),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DropDownWidget<SeedersIdModel>(
                    hint: "Product Type",
                    onChange: (p0) => controller.selectProductType(p0),
                    asyncData: controller.allProduct(),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextFormField(
                    controller: controller.productName,
                    hintText: "product name English",
                    validator: () {},
                    prefixIcon: Image.asset("assets/images/yellow_check.png"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextFormField(
                    controller: controller.productNameAR,
                    hintText: "product name Arabic",
                    validator: () {},
                    prefixIcon: Image.asset("assets/images/yellow_check.png"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextFormField(
                    controller: controller.productDescription,
                    multiLines: true,
                    hintText: "Product Description",
                    validator: () {},
                    prefixIcon: Image.asset("assets/images/yellow_dot.png"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextFormField(
                    controller: controller.productPrice,
                    hintText: "Product price \$",
                    validator: () {},
                    prefixIcon: Image.asset("assets/images/yellow_check.png"),
                  ),
                  const Spacer(),
                  MyButton(
                    color: yellowColor,
                    widget: MyText(text: "Create now", color: black, fontSize: 18, fontWeight: FontWeight.w700),
                    function: () => controller.addProduct(),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
          Obx(() => Visibility(visible: controller.isLoading.value, child: const FullProgressIndicatorWidget()))
        ],
      ),
    );
  }
}

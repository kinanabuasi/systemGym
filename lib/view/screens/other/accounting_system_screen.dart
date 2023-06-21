// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../component/app_bars/app_bar.dart'; 
import 'package:systemgym/constants/colors.dart'; 
import '../../../component/buttons/my_buttons.dart';
import '../../../component/drop_down.dart';
import '../../../component/my_text.dart';
import '../../../component/text_form/my_text_form_field.dart';
import '../../../component/upload_image_widget.dart';
import '../../../logic/controllers/other/accounting_system_controller.dart';
import '../../widgets/accounting/accounting_widget.dart';

class AccountingSystemScreen extends StatelessWidget {
  AccountingSystemScreen({Key? key}) : super(key: key);
  AccountingSystemController controller = Get.put(AccountingSystemController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        yellowText: "accounting system",
        whiteText: "",
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        color: mainColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 18,
              ),
              UploadImageWidget(),
              const SizedBox(
                height: 14,
              ),
              const Text(
                "upload image",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: yellowColor),
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextFormField(
                hintText: "#ID",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              DropDownButton(
                  hint: "Pay the coach",
                  list: controller.items,
                  value: controller.productType),
              const SizedBox(
                height: 16,
              ),
              DropDownButton(
                  hint: "total salary",
                  list: controller.items2,
                  value: controller.productType2),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                hintText: "discounts",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                hintText: "Draws",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                hintText: "payment time",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 30,
              ),
              const AccountingWidget(),
              const SizedBox(
                height: 16,
              ),
              MyButton(
                color: yellowColor,
                widget: MyText(
                    text: "Create now",
                    color: black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
                function: () {},
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

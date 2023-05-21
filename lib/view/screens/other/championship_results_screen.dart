import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/component/app_bar.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:systemgym/logic/controllers/other/championship_results_controller.dart';

import '../../../component/buttons/my_buttons.dart';
import '../../../component/drop_down.dart';
import '../../../component/my_text.dart';
import '../../../component/text_form/my_text_form_field.dart';
import '../../../component/upload_image_widget.dart';

class ChampionshipResultsScreen extends StatelessWidget {
  ChampionshipResultsScreen({Key? key}) : super(key: key);
  ChampionshipResultsController controller =
      Get.put(ChampionshipResultsController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        whiteText: "Championship",
        yellowText: " results",
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        color: mainColor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 18,
              ),
              const UploadImageWidget(),
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
                  hint: "player name",
                  list: controller.items,
                  value: controller.productType),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                hintText: "phone number - autofill",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_dot.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                hintText: "E-mail - autofill",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_dot.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              DropDownButton(
                  hint: "player score",
                  list: controller.items2,
                  value: controller.productType2),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                hintText: "Performance evaluation",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_dot.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                multiLines: true,
                hintText: "Player notes",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(height: 16),
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:systemgym/model/player_model.dart';
import 'package:systemgym/view/widgets/drop_down_widget.dart';

import '../../../component/app_bars/app_bar.dart';
import '../../../component/buttons/my_buttons.dart';
import '../../../component/my_text.dart';
import '../../../component/text_form/my_text_form_field.dart';
import '../../../component/upload_image_widget.dart';
import '../../../logic/controllers/other/accounting_system_controller.dart';
import '../../../model/coach_model.dart';
import '../../widgets/accounting/accounting_widget.dart';

class AccountingSystemScreen extends StatefulWidget {
  const AccountingSystemScreen({Key? key}) : super(key: key);

  @override
  State<AccountingSystemScreen> createState() => _AccountingSystemScreenState();
}

class _AccountingSystemScreenState extends State<AccountingSystemScreen> {
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
              UploadImageWidget(onSelect: (p0) => controller.initImagePath(p0)),
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
              // MyTextFormField(
              //   hintText: "#ID",
              //   validator: () {},
              //   prefixIcon: Image.asset("assets/images/yellow_check.png"),
              // ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                controller: controller.numberController,
                hintText: "Number",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              DropDownWidget<CoachModel>(
                asyncData: controller.getAllCoches(),
                hint: "coachs ",
                onChange: (p0) => controller.selectCoashes(p0),
              ),
              const SizedBox(
                height: 16,
              ),
              DropDownWidget<PlayerModel>(
                asyncData: controller.getAllPlayers(),
                hint: "players ",
                onChange: (p0) => controller.selectPlayers(p0),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                controller: controller.taxController,
                hintText: "Tax",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                controller: controller.discountsController,
                hintText: "discounts",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                controller: controller.drawsController,
                hintText: "Draws",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                controller: controller.paymentForTrainerController,
                hintText: "Payment For Trainee",
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
                widget: MyText(text: "Create now", color: black, fontSize: 18, fontWeight: FontWeight.w700),
                function: () {
                  controller.addTournamentData();
                },
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

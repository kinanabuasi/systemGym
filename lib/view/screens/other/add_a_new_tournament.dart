import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:systemgym/logic/controllers/other/add_a_new_tournament_controller.dart';
import 'package:systemgym/model/seeders_level_model.dart';
import 'package:systemgym/services/time_picker.dart';
import 'package:systemgym/view/widgets/drop_down_widget.dart';

import '../../../component/app_bars/app_bar.dart';
import '../../../component/buttons/my_buttons.dart';
import '../../../component/my_text.dart';
import '../../../component/text_form/my_text_form_field.dart';
import '../../../component/upload_image_widget.dart';
import '../../../model/Prize_model.dart';
import '../../../model/coach_model.dart';
import '../../widgets/drop_down_multi_widget.dart';

class AddANewTournamentScreen extends StatefulWidget {
  const AddANewTournamentScreen({Key? key}) : super(key: key);

  @override
  State<AddANewTournamentScreen> createState() => _AddANewTournamentScreenState();
}

class _AddANewTournamentScreenState extends State<AddANewTournamentScreen> {
  AddANewTournamentController controller = Get.put(AddANewTournamentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        whiteText: "Add a new",
        yellowText: " tournament",
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
              //   controller: controller.idController,
              //   prefixIcon: Image.asset("assets/images/yellow_check.png"),
              // ),
              // const SizedBox(
              //   height: 16,
              // ),
              MyTextFormField(
                hintText: "Tournament name",
                validator: () {},
                controller: controller.TournamentNameController,
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                multiLines: true,
                hintText: "Tournament description",
                controller: controller.TournamentDescriptionController,
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_dot.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              DropDownWidget<SeedersIdModel>(
                hint: "Tournament type",
                onChange: (p0) => controller.initTournmantTypeId(p0),
                asyncData: controller.getAllTournmantType(),
              ),
              const SizedBox(
                height: 16,
              ),
              DropDownMultiWidget<CoachModel>(
                asyncData: controller.getAllCoches(),
                hint: "Add trainees",
                onChange: (p0) => controller.selectCoashes(p0),
              ),
              const SizedBox(
                height: 16,
              ),
              DropDownMultiWidget<CoachModel>(
                asyncData: controller.getAllCoches(),
                hint: "Add Trainer",
                onChange: (p0) => controller.selectCoashes(p0),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                ontap: () async {
                  String date = await TimePickDialog.selectTime(context);
                  controller.TheEndOfTheTournamentController.text = date;
                },
                hintText: "Tournament start date",
                controller: controller.TournamentStartDateController,
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                ontap: () async {
                  String date = await TimePickDialog.selectTime(context);
                  controller.TheEndOfTheTournamentController.text = date;
                },
                hintText: "The end of the tournament",
                controller: controller.TheEndOfTheTournamentController,
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              DropDownWidget<PrizeModel>(hint: "Award type", asyncData: controller.getAllPrize(), onChange: (p0) => controller.initPrize),
              const SizedBox(
                height: 16,
              ),
              DropDownWidget<SeedersIdModel>(hint: "Award type", asyncData: controller.getallChampionesChipLevel(), onChange: (p0) => controller.initChampionesChipLevel(p0)),
              const SizedBox(height: 16),
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

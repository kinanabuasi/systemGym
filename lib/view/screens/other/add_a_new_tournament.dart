import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:systemgym/logic/controllers/other/add_a_new_tournament_controller.dart';

import '../../../component/app_bars/app_bar.dart';
import '../../../component/buttons/my_buttons.dart';
import '../../../component/drop_down.dart';
import '../../../component/my_text.dart';
import '../../../component/text_form/my_text_form_field.dart';
import '../../../component/upload_image_widget.dart';

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
              UploadImageWidget(),
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
              MyTextFormField(
                hintText: "#ID",
                validator: () {},
                controller: controller.idController,
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
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
              DropDownButton(hint: "Tournament type", list: controller.items, value: controller.tournament_type),
              const SizedBox(
                height: 16,
              ),
              DropDownButton(hint: "Add trainees", list: controller.items, value: controller.trainees),
              const SizedBox(
                height: 16,
              ),
              DropDownButton(hint: "Add trainers", list: controller.items, value: controller.trainers),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                hintText: "Tournament start date",
                controller: controller.TournamentStartDateController,
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                hintText: "The end of the tournament",
                controller: controller.TheEndOfTheTournamentController,
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              DropDownButton(hint: "Award type", list: controller.items, value: controller.Award_type),
              const SizedBox(
                height: 16,
              ),
              DropDownButton(hint: "Championship level", list: controller.items, value: controller.Championship_level),
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

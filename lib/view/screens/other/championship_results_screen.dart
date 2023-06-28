import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/component/app_bars/app_bar.dart';
import 'package:systemgym/constants/colors.dart';
import 'package:systemgym/logic/controllers/other/championship_results_controller.dart';

import '../../../component/buttons/my_buttons.dart';
import '../../../component/my_text.dart';
import '../../../component/text_form/my_text_form_field.dart';
import '../../../component/upload_image_widget.dart';
import '../../widgets/drop_down_widget.dart';

class ChampionshipResultsScreen extends StatefulWidget {
  const ChampionshipResultsScreen({Key? key}) : super(key: key);

  @override
  State<ChampionshipResultsScreen> createState() => _ChampionshipResultsScreenState();
}

class _ChampionshipResultsScreenState extends State<ChampionshipResultsScreen> {
  ChampionshipResultsController controller = Get.put(ChampionshipResultsController());

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
              // MyTextFormField(
              //   hintText: "#ID",
              //   validator: () {},
              //   prefixIcon: Image.asset("assets/images/yellow_check.png"),
              // ),
              const SizedBox(
                height: 16,
              ),
              DropDownWidget(
                hint: "player name",
                asyncData: controller.getAllPlayer(),
                onChange: (p0) {
                  controller.initPlayerData;
                },
              ),
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
              MyTextFormField(
                controller: controller.playerScoreCotroller,
                hintText: "player score",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_dot.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                controller: controller.performanceEvolutionCotroller,
                hintText: "Performance evaluation",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_dot.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                controller: controller.playerNotesCotroller,
                multiLines: true,
                hintText: "Player notes",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(height: 16),
              MyButton(
                color: yellowColor,
                widget: MyText(text: "Create now", color: black, fontSize: 18, fontWeight: FontWeight.w700),
                function: () {
                  // controller.a
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

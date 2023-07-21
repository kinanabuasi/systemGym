// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/model/coach_model.dart';
import 'package:systemgym/model/player_model.dart';

import '../../../component/app_bars/app_bar.dart';
import '../../../component/buttons/my_buttons.dart';
import '../../../component/my_text.dart';
import '../../../component/text_form/my_text_form_field.dart';
import '../../../component/upload_image_widget.dart';
import '../../../constants/colors.dart';
import '../../../logic/controllers/public/add_team_controller.dart';
import '../../widgets/drop_down_multi_widget.dart';

class AddTeamScreen extends GetView<AddTeamController> {
  const AddTeamScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: const MyAppBar(whiteText: "ADD", yellowText: " Team"),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          width: double.infinity,
          color: mainColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 18,
              ),
              Center(
                child: UploadImageWidget(onSelect: (p0) => controller.initImagePath(p0)),
              ),
              const SizedBox(
                height: 14,
              ),
              const Center(
                child: Text(
                  "upload image",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: yellowColor),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextFormField(
                hintText: "Team Number",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                hintText: "Team Name EN",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                hintText: "Team Name AR",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                multiLines: true,
                hintText: "Team Description",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_dot.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              DropDownMultiWidget<CoachModel>(
                asyncData: controller.getAllCoches(),
                hint: "Section",
                onChange: (p0) => controller.selectCoashes(p0),
              ),
              const SizedBox(
                height: 16,
              ),
              DropDownMultiWidget<PlayerModel>(
                asyncData: controller.getAllPlayers(),
                hint: "Section",
                onChange: (p0) => controller.selectPlayers(p0),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 85,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 50,
                        width: 50,
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage("assets/images/person4.png"),
                                    radius: 25,
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: whiteGrey, width: 3),
                                      color: Colors.transparent,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: mainColor, width: 3),
                                      color: whiteGrey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            MyText(text: "name", color: whiteGrey, fontSize: 11, fontWeight: FontWeight.w400)
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 85,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 50,
                        width: 50,
                        child: Column(
                          children: [
                            const Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage("assets/images/person4.png"),
                                    radius: 25,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            MyText(text: "name", color: whiteGrey, fontSize: 11, fontWeight: FontWeight.w400)
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 85,
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(right: 10),
                        height: 50,
                        width: 50,
                        child: Column(
                          children: [
                            const Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage("assets/images/person4.png"),
                                    radius: 25,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            MyText(text: "name", color: whiteGrey, fontSize: 11, fontWeight: FontWeight.w400)
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 30,
              ),
              MyButton(
                color: yellowColor,
                widget: MyText(text: "Create now", color: black, fontSize: 18, fontWeight: FontWeight.w700),
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

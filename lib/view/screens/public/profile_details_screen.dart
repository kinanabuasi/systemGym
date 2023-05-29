// ignore_for_file: must_be_immutable, camel_case_types, unused_import, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/logic/controllers/other/add_products_controller.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import '../../../component/app_bar.dart';
import '../../../component/buttons/my_buttons.dart';
import '../../../component/drop_down.dart';
import '../../../component/my_text.dart';
import '../../../component/text_form/my_text_form_field.dart';
import '../../../component/upload_image_widget.dart';
import '../../../constants/colors.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../constants/fonts.dart';
import '../../../logic/controllers/public/adding_an_employee_controller.dart';
import '../../widgets/public/trainer_detail_widgets/top_snackbar.dart';

class profile_details_Screen extends StatelessWidget {
  profile_details_Screen({Key? key}) : super(key: key);
  Adding_an_employee_controller adding_an_employee_controller =
      Get.put(Adding_an_employee_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 350, top: 65.14),
                child: Container(
                  child: IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        color: white,
                        size: 20,
                      )),
                ),
              ),
              const SizedBox(
                height: 170.14,
              ),
              ListTile(
                contentPadding: EdgeInsetsDirectional.all(0),
                leading: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Jennifer James",
                        style: const TextStyle(
                          color: white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Montserrat",
                        ),
                      ),
                      TextSpan(
                        text: "\n",
                        style: const TextStyle(
                            color: mainColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins'),
                      ),
                      TextSpan(
                        text: "#id0245789",
                        style: const TextStyle(
                          color: yellowColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Montserrat",
                        ),
                      ),
                      TextSpan(
                        text: "     ",
                        style: const TextStyle(
                          color: mainColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Montserrat",
                        ),
                      ),
                      TextSpan(
                        text: "22/12/2022",
                        style: const TextStyle(
                          color: yellowColor,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Montserrat",
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: Image.asset("assets/images/call_button.png"),
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(44, 44, 46, 1),
                  borderRadius: BorderRadius.circular(
                    16,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22),
                  child: MyText(
                      text:
                          "Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator.Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum ",
                      color: white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(44, 44, 46, 1),
                  borderRadius: BorderRadius.circular(
                    16,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22),
                  child: MyText(
                      text:
                          "Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator.Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum ",
                      color: white,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(44, 44, 46, 1),
                  borderRadius: BorderRadius.circular(
                    16,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Image.asset("assets/images/person2.png"),
                        SizedBox(
                          width: 10,
                        ),
                        MyText(
                            text: "Sharon Jem",
                            color: white,
                            fontSize: 13,
                            fontWeight: FontWeight.w400),
                        SizedBox(
                          width: 23,
                        ),
                        Container(
                          width: 27,
                          height: 13,
                          decoration: BoxDecoration(
                            color: yellowColor,
                            borderRadius: BorderRadius.circular(
                              3,
                            ),
                          ),
                          child: Center(
                            child: MyText(
                                text: "4.8",
                                color: black,
                                fontSize: 9,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          width: 77,
                        ),
                        MyText(
                            text: "2d ago",
                            color: white,
                            fontSize: 11,
                            fontWeight: FontWeight.w400),
                      ]),
                      SizedBox(
                        height: 10,
                      ),
                      MyText(
                          text:
                              "Had such an amazing session with Maria. She instantly picked up on the level of my fitness and adjusted the workout to suit me whilst also pushing me to my limits.",
                          color: white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              MyButton(
                color: yellowColor,
                widget: MyText(
                    text: "Watch the exercises",
                    color: black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
                function: () {
                  adding_an_employee_controller.onItemSave();
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

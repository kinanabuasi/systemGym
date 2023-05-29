// ignore_for_file: must_be_immutable, camel_case_types, unused_import, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'dart:math';

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
import '../../../logic/controllers/public/person_daily_program_controller.dart';
import '../../widgets/public/MediaQuery.dart';
import '../../widgets/public/trainer_detail_widgets/photos_list.dart';
import '../../widgets/public/trainer_detail_widgets/top_snackbar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class person_daily_program_Screen extends StatelessWidget {
  person_daily_program_Screen({Key? key}) : super(key: key);
  PersonDailyProgramController personDailyProgramController =
      Get.put(PersonDailyProgramController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Container(
        //  margin: const EdgeInsets.symmetric(vertical: 20.0),

        padding: const EdgeInsets.symmetric(
          horizontal: 40.0,
        ),
        // width: double.infinity,
        child: ListView(
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(
                top: getMobileHeight(context, 30.0),
              ),
              leading: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Hello",
                      style: const TextStyle(
                        color: white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    TextSpan(
                      text: " ",
                      style: const TextStyle(
                        color: white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    TextSpan(
                      text: "Juliet\n",
                      style: const TextStyle(
                        color: yellowColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    // TextSpan(
                    //   text: "\n",
                    //   style: const TextStyle(
                    //       color: mainColor,
                    //       fontSize: 16,
                    //       fontWeight: FontWeight.w600,
                    //       fontFamily: 'Poppins'),
                    // ),
                    TextSpan(
                      text: "Let’s start your day",
                      style: const TextStyle(
                        color: white,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ],
                ),
              ),
              trailing: Container(
                  width: getMobileWidth(context, 48.0),
                  height: getMobileHeight(context, 48.0),
                  child: Image.asset("assets/images/person5.png")),
            ),
            SizedBox(
              height: getMobileHeight(context, 48.0),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              MyText(
                text: "Today Workout Plan",
                color: white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontfamily: 'Poppins',
              ),
              MyText(
                text: "6am-8am",
                color: yellowColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontfamily: 'Poppins',
              ),
            ]),
            SizedBox(
              height: getMobileHeight(context, 9.0),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: getMobileHeight(context, 169.0),
                viewportFraction: 0.4,
                enableInfiniteScroll: false,
                initialPage: 1,
                animateToClosest: false,
              ),
              items: personDailyProgramController.TodayWorkOutImgList.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: getMobileWidth(context, 148.0),
                        margin: EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          image: DecorationImage(
                            image: NetworkImage(i),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 123,
                                right: 15.0,
                                left: 25.0,
                              ),
                              child: MyText(
                                text: 'text',
                                color: white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                fontfamily: 'Poppins',
                              ),
                            ),
                          ],
                          // ),
                        ));
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: getMobileHeight(context, 20.0),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              MyText(
                text: "Cartegories",
                color: white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontfamily: Poppins,
              ),
              GestureDetector(
                onTap: () {},
                child: MyText(
                  text: "See all",
                  color: yellowColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontfamily: 'Poppins',
                ),
              ),
            ]),
            SizedBox(
              height: getMobileHeight(context, 9.0),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: getMobileHeight(context, 104.0),
                viewportFraction: 0.25,
                enableInfiniteScroll: false,
                initialPage: 2,
                animateToClosest: false,
              ),
              items: personDailyProgramController.TodayWorkOutImgList.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: getMobileWidth(context, 100.0),
                        margin: EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(i),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: getMobileHeight(context, 75.0),
                                right: getMobileWidth(context, 19.0),
                                left: getMobileWidth(context, 19.0),
                              ),
                              child: MyText(
                                text: 'text',
                                color: white,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                fontfamily: 'Poppins',
                              ),
                            ),
                          ],
                          // ),
                        ));
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: getMobileHeight(context, 19.0),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              MyText(
                text: "Trending",
                color: white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontfamily: Poppins,
              ),
              GestureDetector(
                onTap: () {},
                child: MyText(
                  text: "See all",
                  color: yellowColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontfamily: 'Poppins',
                ),
              ),
            ]),
            SizedBox(
              height: getMobileHeight(context, 9.0),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: getMobileHeight(context, 119.0),
                viewportFraction: 0.7,
                enableInfiniteScroll: false,
                initialPage: 0,
                animateToClosest: false,
              ),
              items: personDailyProgramController.TodayWorkOutImgList.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: getMobileWidth(context, 223.0),
                        margin: EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(i),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: getMobileHeight(context, 87.0),
                                // right: getMobileWidth(context, 19.0),
                                left: getMobileWidth(context, 19.0),
                              ),
                              child: MyText(
                                text: 'text',
                                color: white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                fontfamily: 'Poppins',
                              ),
                            ),
                          ],
                          // ),
                        ));
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: getMobileHeight(context, 19.0),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              MyText(
                text: "Discover",
                color: white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                fontfamily: Poppins,
              ),
              // GestureDetector(
              //   onTap: () {},
              //   child: MyText(
              //     text: "See all",
              //     color: yellowColor,
              //     fontSize: 16,
              //     fontWeight: FontWeight.w600,
              //     fontfamily: 'Poppins',
              //   ),
              // ),
            ]),
            SizedBox(
              height: getMobileHeight(context, 9.0),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: getMobileHeight(context, 119.0),
                viewportFraction: 0.7,
                enableInfiniteScroll: false,
                initialPage: 0,
                animateToClosest: false,
              ),
              items: personDailyProgramController.TodayWorkOutImgList.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: getMobileWidth(context, 223.0),
                        margin: EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(i),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: getMobileHeight(context, 87.0),
                                left: getMobileWidth(context, 19.0),
                              ),
                              child: MyText(
                                text: 'text',
                                color: white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                fontfamily: 'Poppins',
                              ),
                            ),
                          ],
                          // ),
                        ));
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

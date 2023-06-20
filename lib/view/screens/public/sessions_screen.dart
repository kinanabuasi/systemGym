// ignore_for_file: must_be_immutable, camel_case_types, unused_import, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'dart:math';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/logic/controllers/other/add_products_controller.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:video_player/video_player.dart';
import '../../../component/app_bars/app_bar.dart';
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
import 'package:carousel_slider/carousel_slider.dart';

import '../../../logic/controllers/public/sessions_controller.dart';
import '../../../view/widgets/public/MediaQuery.dart';

class SessionsScreen extends StatelessWidget {
  SessionsScreen({Key? key}) : super(key: key);
  Sessions_controller sessions_controller = Get.put(Sessions_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
          backgroundColor: mainColor,
          centerTitle: true,
          title: MyText(
            text: "Sessions",
            color: white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontfamily: 'Poppins',
          ),
          leading: Icon(Icons.arrow_back),
          actions: [
            Container(
              width: getMobileWidth(context, 48.0),
              height: getMobileHeight(context, 48.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/images/person5.png")),
              ),
            ),
          ]),
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 40.0,
        ),
        child: ListView(
          children: [
            SizedBox(
              height: getMobileHeight(context, 32.0),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              MyText(
                text: "Your training today",
                color: white,
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
                height: getMobileHeight(context, 150.0),
                viewportFraction: 0.4,
                enableInfiniteScroll: false,
                initialPage: 1,
                animateToClosest: false,
              ),
              items:
                  sessions_controller.videoPlayerControllers.map((controller) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: getMobileWidth(context, 250.0),
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Chewie(
                        controller: ChewieController(
                          videoPlayerController: controller,
                          autoPlay: false,
                          looping: true,
                          showControls: false,
                          materialProgressColors: ChewieProgressColors(
                            playedColor: Colors.red,
                            handleColor: yellowColor,
                            backgroundColor: mainColor,
                            bufferedColor: Colors.lightGreen,
                          ),
                          customControls: Container(
                              width: 310,
                              height: 35,
                              decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15)),
                              ),
                              child: Row(
                                children: [
                                  VideoProgressIndicator(
                                    sessions_controller.videoPlayerControllers
                                        as VideoPlayerController,
                                    allowScrubbing: true,
                                    colors: VideoProgressColors(
                                      playedColor: Colors.white,
                                      bufferedColor:
                                          Colors.white.withOpacity(0.5),
                                      backgroundColor:
                                          Colors.grey.withOpacity(0.5),
                                    ),
                                  ),
                                  SizedBox(width: 8.0),
                                  // Consumer<ChewieController>(
                                  //   builder: (context, controller, child) {
                                  //     final position = controller.videoPlayerController.value.position;
                                  //     final duration = controller.videoPlayerController.value.duration;

                                  //     return Text(
                                  //       '${position.toString().split('.').first}/${duration.toString().split('.').first}',
                                  //       style: TextStyle(color: Colors.white),
                                  //     );
                                  //   },
                                  // ),
                                ],
                              )),
                        ),
                      ),
                      // ),
                    );
                  },
                );
              }).toList(),
            ),

            SizedBox(
              height: getMobileHeight(context, 20.0),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              MyText(
                text: "Trainers",
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
              items: sessions_controller.YourTrainingToday.map((i) {
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

            // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            //   MyText(
            //     text: "Trending",
            //     color: white,
            //     fontSize: 16,
            //     fontWeight: FontWeight.w600,
            //     fontfamily: Poppins,
            //   ),
            //   GestureDetector(
            //     onTap: () {},
            //     child: MyText(
            //       text: "See all",
            //       color: yellowColor,
            //       fontSize: 16,
            //       fontWeight: FontWeight.w600,
            //       fontfamily: 'Poppins',
            //     ),
            //   ),
            // ]),
            // SizedBox(
            //   height: getMobileHeight(context, 9.0),
            // ),
            // CarouselSlider(
            //   options: CarouselOptions(
            //     height: getMobileHeight(context, 119.0),
            //     viewportFraction: 0.7,
            //     enableInfiniteScroll: false,
            //     initialPage: 0,
            //     animateToClosest: false,
            //   ),
            //   items: personDailyProgramController.TodayWorkOutImgList.map((i) {
            //     return Builder(
            //       builder: (BuildContext context) {
            //         return Container(
            //             width: getMobileWidth(context, 223.0),
            //             margin: EdgeInsets.symmetric(horizontal: 4.0),
            //             decoration: BoxDecoration(
            //               image: DecorationImage(
            //                 image: NetworkImage(i),
            //                 fit: BoxFit.cover,
            //               ),
            //               borderRadius: BorderRadius.all(Radius.circular(15)),
            //             ),
            //             child: Stack(
            //               children: [
            //                 Padding(
            //                   padding: EdgeInsets.only(
            //                     top: getMobileHeight(context, 87.0),
            //                     // right: getMobileWidth(context, 19.0),
            //                     left: getMobileWidth(context, 19.0),
            //                   ),
            //                   child: MyText(
            //                     text: 'text',
            //                     color: white,
            //                     fontSize: 16,
            //                     fontWeight: FontWeight.w700,
            //                     fontfamily: 'Poppins',
            //                   ),
            //                 ),
            //               ],
            //               // ),
            //             ));
            //       },
            //     );
            //   }).toList(),
            // ),
            // SizedBox(
            //   height: getMobileHeight(context, 19.0),
            // ),
            // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            //   MyText(
            //     text: "Discover",
            //     color: white,
            //     fontSize: 16,
            //     fontWeight: FontWeight.w600,
            //     fontfamily: Poppins,
            //   ),
            //   // GestureDetector(
            //   //   onTap: () {},
            //   //   child: MyText(
            //   //     text: "See all",
            //   //     color: yellowColor,
            //   //     fontSize: 16,
            //   //     fontWeight: FontWeight.w600,
            //   //     fontfamily: 'Poppins',
            //   //   ),
            //   // ),
            // ]),
            // SizedBox(
            //   height: getMobileHeight(context, 9.0),
            // ),
            // CarouselSlider(
            //   options: CarouselOptions(
            //     height: getMobileHeight(context, 119.0),
            //     viewportFraction: 0.7,
            //     enableInfiniteScroll: false,
            //     initialPage: 0,
            //     animateToClosest: false,
            //   ),
            //   items: personDailyProgramController.TodayWorkOutImgList.map((i) {
            //     return Builder(
            //       builder: (BuildContext context) {
            //         return Container(
            //             width: getMobileWidth(context, 223.0),
            //             margin: EdgeInsets.symmetric(horizontal: 4.0),
            //             decoration: BoxDecoration(
            //               image: DecorationImage(
            //                 image: NetworkImage(i),
            //                 fit: BoxFit.cover,
            //               ),
            //               borderRadius: BorderRadius.all(Radius.circular(15)),
            //             ),
            //             child: Stack(
            //               children: [
            //                 Padding(
            //                   padding: EdgeInsets.only(
            //                     top: getMobileHeight(context, 87.0),
            //                     left: getMobileWidth(context, 19.0),
            //                   ),
            //                   child: MyText(
            //                     text: 'text',
            //                     color: white,
            //                     fontSize: 16,
            //                     fontWeight: FontWeight.w700,
            //                     fontfamily: 'Poppins',
            //                   ),
            //                 ),
            //               ],
            //               // ),
            //             ));
            //       },
            //     );
            //   }).toList(),
            // ),
          ],
        ),
      ),
    );
  }
}

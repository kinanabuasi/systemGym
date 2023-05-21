import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/component/my_text.dart';

import '../../../component/buttons/my_buttons.dart';
import '../../../constants/colors.dart';
import '../../widgets/public/trainer_detail_widgets/read_all_reviews.dart';

class TrainerDetailScreen extends StatelessWidget {
  const TrainerDetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 40, right: 40, bottom: 20),
          child: MyButton(
              color: yellowColor,
              widget: MyText(
                  text: "Watch the exercise",
                  color: black,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
              function: () {}),
        ),
        backgroundColor: black,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(0),
                  child: Container(
                    decoration: const BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                    child: const Center(
                        child: Padding(
                      padding: EdgeInsets.all(8.0),
                    )),
                  )),
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/images/trainer.png",
                  fit: BoxFit.cover,
                ),
              ),
              backgroundColor: mainColor,
              expandedHeight: 170,
              leading: IconButton(
                icon:
                    const Icon(Icons.chevron_left, size: 33, color: whiteGrey),
                onPressed: () {
                  Get.back();
                },
              ),
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MyText(
                                      text: "Jennifer James",
                                      color: white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                  MyText(
                                      text: "Functional Strength",
                                      color: yellowColor,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal),
                                ]),
                            const Spacer(),
                            Image.asset(
                              "assets/images/call_button.png",
                              height: 50,
                              width: 50,
                            )
                          ],
                        ),
                        const SizedBox(height: 15),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: blackWithOpacity,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      MyText(
                                          text: "6",
                                          color: white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      MyText(
                                          text: "Experience",
                                          color: white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ],
                                  ),
                                  Container(
                                      height: 40, width: 1, color: whiteGrey),
                                  Column(
                                    children: [
                                      MyText(
                                          text: "46",
                                          color: white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      MyText(
                                          text: "Completed",
                                          color: white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ],
                                  ),
                                  Container(
                                      height: 40, width: 1, color: whiteGrey),
                                  Column(
                                    children: [
                                      MyText(
                                          text: "25",
                                          color: white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                      MyText(
                                          text: "Active trainer",
                                          color: white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.normal),
                                    ],
                                  ),
                                ]),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            MyText(
                                text: "Reviews",
                                color: white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            const Spacer(),
                            Container(
                              width: 60,
                              decoration: BoxDecoration(
                                  color: yellowColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: MyText(
                                      text: "4.6",
                                      color: black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                        const ReadAllReviews(),
                        const SizedBox(height: 15),
                        SizedBox(
                          height: 200,
                          child: ListView.builder(
                              itemCount: 3,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: Container(
                                    height: 140,
                                    width:
                                        MediaQuery.of(context).size.width - 60,
                                    decoration: BoxDecoration(
                                        color: blackWithOpacity,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    "assets/images/trainer.png"),
                                              ),
                                              Container(
                                                width: 40,
                                                decoration: BoxDecoration(
                                                    color: yellowColor,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Center(
                                                    child: MyText(
                                                        text: "4.6",
                                                        color: black,
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ),
                                              MyText(
                                                  text: "2d ago",
                                                  color: white,
                                                  fontSize: 13,
                                                  fontWeight:
                                                      FontWeight.normal),
                                            ],
                                          ),
                                          const SizedBox(height: 10),
                                          MyText(
                                              text:
                                                  "Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello Hello  how ar you? how ar you? how ar you? how ar you? how ar you? how ar you? how ar you?",
                                              color: white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal)
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        )
                      ]),
                ),
              ),
            )
          ],
        ));
  }
}

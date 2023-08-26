import 'package:flutter/material.dart';

import '../../../component/app_bars/app_bar.dart';
import '../../../component/my_text.dart';
import '../../../constants/colors.dart';
import '../../widgets/public/home_admin_screen_widgets/show_all_widget.dart';

class DetailesTeamScreen extends StatelessWidget {
  const DetailesTeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: mainColor,
        appBar: const MyAppBar(whiteText: "Details", yellowText: " Team"),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  color: whiteGrey.withOpacity(.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/black_avatar.png'),
                          radius: 25,
                        ),
                      ),
                      MyText(
                          text: "ID",
                          color: secondYellowColor,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  color: whiteGrey.withOpacity(.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/black_avatar.png'),
                          radius: 25,
                        ),
                      ),
                      MyText(
                          text: "Team Name",
                          color: secondYellowColor,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  color: whiteGrey.withOpacity(.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/black_avatar.png'),
                          radius: 25,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: MyText(
                            text: "Team descreption",
                            color: secondYellowColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  color: whiteGrey.withOpacity(.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/black_avatar.png'),
                          radius: 25,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: MyText(
                            text: "All Coaches",
                            color: secondYellowColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              // const Padding(
              //   padding: EdgeInsets.only(top: 16.0, left: 20),
              //   child: ShowAllWidget(
              //       image: "assets/images/person4.png",
              //       activeColor: whiteGrey,
              //       name: "Stella"),
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  color: whiteGrey.withOpacity(.5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/black_avatar.png'),
                          radius: 25,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: MyText(
                            text: "All Trainers",
                            color: secondYellowColor,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.0, left: 20),
                child: SizedBox(
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
                              Stack(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          "assets/images/person4.png"),
                                      radius: 25,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              MyText(
                                  text: "name",
                                  color: whiteGrey,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400)
                            ],
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

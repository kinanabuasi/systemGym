import 'package:flutter/material.dart';
import 'package:systemgym/component/my_text.dart';

import '../../../component/app_bars/settings_app_bar.dart';
import '../../../constants/colors.dart';

class ProProfileScreen extends StatelessWidget {
  ProProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: black,
        appBar: SettingAppBar(title: ""),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: 110,
                        width: 110,
                        child: const CircularProgressIndicator(
                          value: 0.75,
                          backgroundColor: darkGrey,
                          color: darkGrey,
                          valueColor: AlwaysStoppedAnimation<Color>(red),
                        ),
                      ),
                      const Positioned(
                        left: 0,
                        top: 0,
                        right: 0,
                        bottom: 0,
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/images/person1.png",
                            ),
                            radius: 40,
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 35,
                            decoration: BoxDecoration(
                                color: red,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: MyText(
                                    text: "Pro",
                                    color: white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(width: 0.5, height: 100, color: darkGrey),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                          text: "Joined",
                          color: whiteGrey,
                          fontSize: 11,
                          fontWeight: FontWeight.normal),
                      MyText(
                          text: "2 mon ago",
                          color: whiteGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                      const SizedBox(height: 15),
                      MyText(
                          text: "Pro Member",
                          color: red,
                          fontSize: 11,
                          fontWeight: FontWeight.normal),
                      MyText(
                          text: "Until 18 Jul 2022",
                          color: whiteGrey,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                      MyText(
                          text: "12 months Subsecription",
                          color: whiteGrey,
                          fontSize: 11,
                          fontWeight: FontWeight.normal),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 10),
              MyText(
                  text: "SARAH\nWEGAN",
                  color: white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              const SizedBox(height: 25),
              const Divider(
                color: darkGrey,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          onTap: () {},
                          trailing:
                              const Icon(Icons.chevron_right, color: white),
                          title: MyText(
                              text: listTileString[index],
                              color: white,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                        const Divider(color: darkGrey)
                      ],
                    );
                  }),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Divider(color: darkGrey),
                    const SizedBox(
                      height: 15,
                    ),
                    MyText(
                        text: "Sign Out",
                        color: red,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                    const SizedBox(
                      height: 15,
                    ),
                    const Divider(color: darkGrey),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  List<String> listTileString = ["Edit Profile", "Privacy Policy", "Settings"];
}

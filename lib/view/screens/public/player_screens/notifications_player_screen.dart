import 'package:flutter/material.dart';

import '../../../../component/my_text.dart';
import '../../../../constants/colors.dart';

class NotificationsPlayerScreen extends StatelessWidget {
  const NotificationsPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainColor,
        appBar: AppBar(
            leading: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_back, color: white)),
            backgroundColor: mainColor,
            elevation: 0,
            centerTitle: true,
            title: MyText(
              text: "Notifications",
              color: white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              fontfamily: 'Poppins',
            )),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                MyText(
                    text: "Today",
                    color: white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Container(
                          height: 80,
                          width: 60,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    "assets/images/intro1.png",
                                  )),
                              borderRadius: BorderRadius.circular(20),
                              color: secondYellowColor),
                        ),
                        title: MyText(
                            text: "Meal Time",
                            color: white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                        subtitle: MyText(
                            text: "Time to eat your breakfast",
                            color: whiteGrey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                        trailing: MyText(
                            text: "Now",
                            color: yellowColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      );
                    })
              ]),
              SizedBox(height: 20),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                MyText(
                    text: "This Week",
                    color: white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: Container(
                          height: 80,
                          width: 60,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    "assets/images/intro2.png",
                                  )),
                              borderRadius: BorderRadius.circular(20),
                              color: secondYellowColor),
                        ),
                        title: MyText(
                            text: "Full body workout",
                            color: white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                        subtitle: MyText(
                            text: "Time to eat your breakfast",
                            color: whiteGrey,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                        trailing: MyText(
                            text: "Now",
                            color: yellowColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      );
                    })
              ])
            ]),
          ),
        ));
  }
}

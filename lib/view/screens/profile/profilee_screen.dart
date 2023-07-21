import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/component/my_text.dart';

import '../../../component/app_bars/settings_app_bar.dart';
import '../../../constants/colors.dart';
import '../../widgets/full_progress_indicator.dart';
import '../../widgets/public/my_circular_progress.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: black,
        appBar: const SettingAppBar(title: ""),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const MyCircularProgress(
                          valueColor: red,
                          height: 110,
                          width: 110,
                          value: 0.75,
                          widget: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/images/person3.png",
                              ),
                              radius: 40,
                            ),
                          )),
                      Container(width: 0.5, height: 100, color: darkGrey),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(text: "Joined", color: whiteGrey, fontSize: 11, fontWeight: FontWeight.normal),
                          MyText(text: "2 mon ago", color: whiteGrey, fontSize: 15, fontWeight: FontWeight.w600),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  MyText(text: "SARAH\nWEGAN", color: white, fontSize: 30, fontWeight: FontWeight.bold),
                  const SizedBox(height: 15),
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
                              trailing: const Icon(Icons.chevron_right, color: white),
                              title: MyText(text: listTileString[index], color: white, fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            const Divider(color: darkGrey)
                          ],
                        );
                      }),
                  const SizedBox(height: 15),
                  Container(
                    width: double.infinity,
                    height: 90,
                    decoration: BoxDecoration(color: darkGrey, borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 50,
                              decoration: BoxDecoration(color: red, borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: MyText(text: "Pro", color: whiteGrey, fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                            ),
                            MyText(text: "Upgrade to Premium", color: whiteGrey, fontSize: 17, fontWeight: FontWeight.w600),
                            MyText(text: "This subscription is auto-renewable", color: whiteGrey, fontSize: 13, fontWeight: FontWeight.w400),
                          ],
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.chevron_right,
                          color: whiteGrey,
                          size: 30,
                        )
                      ]),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Divider(color: darkGrey),
                        const SizedBox(
                          height: 10,
                        ),
                        MyText(text: "Sign Out", color: red, fontSize: 17, fontWeight: FontWeight.w600),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(color: darkGrey),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Obx(() => const Visibility(visible: false, child: FullProgressIndicatorWidget()))
          ],
        ));
  }

  List<String> listTileString = ["Edit Profile", "Privacy Policy", "Settings"];
}

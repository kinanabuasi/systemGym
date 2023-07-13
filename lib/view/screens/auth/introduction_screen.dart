import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:systemgym/constants/colors.dart';

import '../../widgets/auth/introduction_screen_widget.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({
    super.key,
  });

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView.builder(
              controller: pageController,
              itemBuilder: (context, index) {
                return buildIntroScreens(imageUrl: imageUrl[index], title: title[index], supTitle: supTitle[index], isShow: index == 3);
              },
              itemCount: 4,
            ),
            Container(
              alignment: const Alignment(0, 0.80),
              child: SmoothPageIndicator(
                controller: pageController,
                count: 4,
                effect: const WormEffect(
                    activeDotColor: secondYellowColor,
                    paintStyle: PaintingStyle.fill,
                    dotColor: whiteGrey,
                    radius: 3,
                    spacing: 10,
                    dotHeight: 5,
                    type: WormType.thin,
                    dotWidth: 20),
              ),
            )
          ],
        ));
  }
}

List<String> imageUrl = [
  "assets/images/intro1.png",
  "assets/images/intro2.png",
  "assets/images/intro3.png",
  "assets/images/intro1.png",
];
List<String> title = ["Sprots club management", "Manage players in", "All exercises are illustrated", "Welcome to\nS Y S T E M  G Y M"];

List<String> supTitle = ["It's easier now", "one place", "Professionally", "Achieve your body goals with us"];

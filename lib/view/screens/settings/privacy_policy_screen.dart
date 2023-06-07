import 'package:flutter/material.dart';
import 'package:systemgym/component/buttons/my_buttons.dart';

import '../../../component/app_bars/settings_app_bar.dart';
import '../../../component/my_text.dart';
import '../../../constants/colors.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: SettingAppBar(title: "Privacy Policy"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                  text: "Lorem ipsum dolor sit amet",
                  color: white,
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
              MyText(
                  text:
                      "Consectetur adipiscing elit. Natoque phasellus lobortis mattis cursus faucibus hac proin risus. Turpis phasellus massa ullamcorper volutpat. Ornare commodo non integer fermentum nisi, morbi id. Vel tortor mauris feugiat amet, maecenas facilisis risus, in faucibus. Vestibulum ullamcorper fames eget enim diam fames faucibus duis ac. Aliquam non tellus semper in dignissim nascetur venenatis lacus.\n\nLectus vel non varius interdum vel tellus sed mattis. Sit laoreet auctor arcu mauris tincidunt sociis tristique pharetra neque. Aliquam pharetra elementum nisl sapien. Erat nisl morbi eu dolor in. Sapien ut lacus dui libero morbi tristique.\n\nSit praesent mi, dolor, magna in pellentesque sollicitudin odio sed. Sit nibh aliquam enim ipsum lectus sem fermentum congue velit. Purus habitant odio in morbi aliquet velit pulvinar. Facilisis ut amet interdum pretium. Fames pretium eget orci facilisis mattis est libero facilisis ullamcorper. Est auctor amet egestas risus libero et. Auctor faucibus sit id fringilla vitae. Ac volutpat sodales tristique ut netus turpis.\n\nLorem ipsum dolor sit amet, consectetur ",
                  color: grey,
                  fontSize: 15,
                  fontWeight: FontWeight.normal),
              const SizedBox(height: 20),
              MyButton(
                  color: secondYellowColor,
                  widget: MyText(
                      text: "Agree & Continue",
                      color: black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                  function: () {})
            ],
          ),
        ),
      ),
    );
  }
}

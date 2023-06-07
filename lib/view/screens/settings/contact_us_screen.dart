import 'package:flutter/material.dart';

import '../../../component/app_bars/settings_app_bar.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: SettingAppBar(title: "Contact Us"),
      ),
    );
  }
}

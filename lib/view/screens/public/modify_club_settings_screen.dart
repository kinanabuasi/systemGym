// ignore_for_file: must_be_immutable, unused_import, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/logic/controllers/other/add_products_controller.dart';

import '../../../component/app_bars/app_bar.dart';
import '../../../component/buttons/my_buttons.dart';
import '../../../component/drop_down.dart';
import '../../../component/my_text.dart';
import '../../../component/text_form/my_text_form_field.dart';
import '../../../component/upload_image_widget.dart';
import '../../../constants/colors.dart';
import '../../../logic/controllers/public/modify_club_settings_controller.dart';
import '../../../services/fields_validators.dart';

class ModifyClubSettingsScreen extends StatelessWidget {
  final modifyClubSettingsController = Get.find<ModifyClubSettingsController>();

  ModifyClubSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(whiteText: "Modify Club", yellowText: " settings"),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          width: double.infinity,
          color: mainColor,
          child: Form(
            key: modifyClubSettingsController.formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 18,
                ),
                UploadImageWidget(),
                const SizedBox(
                  height: 14,
                ),
                const Text(
                  "Club logo",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      color: yellowColor),
                ),
                const SizedBox(
                  height: 30,
                ),
                MyTextFormField(
                    controller: modifyClubSettingsController.clubNameController,
                    validator: FieldsValidators.emptyValidator,
                    hintText: "Club name",
                    prefixIcon: Image.asset("assets/images/yellow_check.png")),
                const SizedBox(
                  height: 16,
                ),
                MyTextFormField(
                  controller: modifyClubSettingsController
                      .commercialRegistrationNumberController,
                  hintText: "Commercial registration number",
                  validator: FieldsValidators.emptyValidator,
                  prefixIcon: Image.asset("assets/images/yellow_check.png"),
                ),
                const SizedBox(
                  height: 16,
                ),
                MyTextFormField(
                  controller:
                      modifyClubSettingsController.phoneNumberController,
                  hintText: "Phone number",
                  validator: FieldsValidators.emptyValidator,
                  prefixIcon: Image.asset("assets/images/yellow_check.png"),
                ),
                const SizedBox(
                  height: 16,
                ),
                MyTextFormField(
                  controller: modifyClubSettingsController.emailController,
                  hintText: "E-mail",
                  validator: FieldsValidators.emailValidator,
                  prefixIcon: Image.asset("assets/images/yellow_check.png"),
                ),
                const SizedBox(
                  height: 16,
                ),
                MyTextFormField(
                    controller:
                        modifyClubSettingsController.descriptionController,
                    multiLines: true,
                    validator: FieldsValidators.emptyValidator,
                    hintText: "Club Descreption",
                    prefixIcon: Image.asset("assets/images/yellow_dot.png")),
                const SizedBox(height: 16),
                MyTextFormField(
                    controller:
                        modifyClubSettingsController.clubAddressController,
                    validator: FieldsValidators.emptyValidator,
                    hintText: "Club Address",
                    prefixIcon: Image.asset("assets/images/yellow_check.png")),
                const SizedBox(height: 16),
                MyTextFormField(
                    controller: modifyClubSettingsController.countryController,
                    validator: FieldsValidators.emptyValidator,
                    hintText: "Country",
                    prefixIcon: Image.asset("assets/images/yellow_check.png")),
                const SizedBox(height: 16),
                MyTextFormField(
                    controller: modifyClubSettingsController.stateController,
                    validator: FieldsValidators.emptyValidator,
                    hintText: "State",
                    prefixIcon: Image.asset("assets/images/yellow_check.png")),
                const SizedBox(height: 16),
                MyTextFormField(
                    controller:
                        modifyClubSettingsController.postalCodeController,
                    validator: FieldsValidators.emptyValidator,
                    hintText: "Postal Code",
                    prefixIcon: Image.asset("assets/images/yellow_check.png")),
                const SizedBox(height: 16),
                MyTextFormField(
                    controller:
                        modifyClubSettingsController.clubWebsiteController,
                    validator: FieldsValidators.emptyValidator,
                    hintText: "Club Website",
                    prefixIcon: Image.asset("assets/images/yellow_check.png")),
                const SizedBox(height: 16),
                MyTextFormField(
                    controller: modifyClubSettingsController.facebookController,
                    validator: FieldsValidators.emptyValidator,
                    hintText: "Facebook",
                    prefixIcon: Image.asset("assets/images/yellow_check.png")),
                const SizedBox(height: 16),
                MyTextFormField(
                    controller:
                        modifyClubSettingsController.instagramController,
                    validator: FieldsValidators.emptyValidator,
                    hintText: "Instagram",
                    prefixIcon: Image.asset("assets/images/yellow_check.png")),
                const SizedBox(height: 16),
                MyTextFormField(
                    controller: modifyClubSettingsController.twitterController,
                    validator: FieldsValidators.emptyValidator,
                    hintText: "Twitter",
                    prefixIcon: Image.asset("assets/images/yellow_check.png")),
                const SizedBox(height: 16),
                MyTextFormField(
                    controller: modifyClubSettingsController.youtupeController,
                    validator: FieldsValidators.emptyValidator,
                    hintText: "Youtupe",
                    prefixIcon: Image.asset("assets/images/yellow_check.png")),
                const SizedBox(height: 16),
                MyButton(
                  color: yellowColor,
                  widget: MyText(
                      text: "Create now",
                      color: black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                  function: () {
                    modifyClubSettingsController.validate();
                  },
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

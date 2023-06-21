// ignore_for_file: must_be_immutable, camel_case_types, unused_import, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/logic/controllers/other/add_products_controller.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import '../../../component/app_bars/app_bar.dart';
import '../../../component/buttons/my_buttons.dart';
import '../../../component/drop_down.dart';
import '../../../component/my_text.dart';
import '../../../component/text_form/my_text_form_field.dart';
import '../../../component/upload_image_widget.dart';
import '../../../constants/colors.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart'; 
import '../../../constants/fonts.dart';
import '../../../logic/controllers/public/adding_a_trainer_controller.dart';
import '../../../logic/controllers/public/adding_an_employee_controller.dart';
import '../../widgets/public/trainer_detail_widgets/top_snackbar.dart';

class Adding_a_trainer_Screen extends StatelessWidget {
  Adding_a_trainer_Screen({Key? key}) : super(key: key);
  Adding_a_trainer_controller adding_a_trainer_controller =
      Get.put(Adding_a_trainer_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(whiteText: "Adding a", yellowText: " trainer"),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          width: double.infinity,
          color: mainColor,
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
                "Upload image",
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: yellowColor,
                    fontFamily: "Poppins"),
              ),
              const SizedBox(
                height: 30,
              ),
              MyTextFormField(
                controller: adding_a_trainer_controller.FullNameController,
                validator: () {},
                hintText: "full name",
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                controller: adding_a_trainer_controller.UserNameController,
                hintText: "@username",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                controller: adding_a_trainer_controller.PhoneNumberController,
                KeyboardType: TextInputType.datetime,
                hintText: "phone number",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                controller: adding_a_trainer_controller.SubscriptionNumberController,
                KeyboardType: TextInputType.datetime,
                hintText: "#Subscription number",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                controller: adding_a_trainer_controller.EmailController,
                  multiLines: true,
                  validator: () {},
                  hintText: "email",
                  prefixIcon: Image.asset("assets/images/yellow_dot.png")),
              const SizedBox(
                height: 21,
              ),
              MyTextFormField(
                controller: adding_a_trainer_controller.AboutTheTrainerController,
                  multiLines: true,
                  validator: () {},
                  hintText: "About the trainer",
                  prefixIcon: Image.asset("assets/images/yellow_dot.png")),
              const SizedBox(height: 19),
              MyTextFormField(
                controller: adding_a_trainer_controller.DateOfBirthController,
                  KeyboardType: TextInputType.datetime,
                  validator: () {},
                  hintText: "date of birth",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              DropDownButton(
                  hint: "Subtype",
                  list: adding_a_trainer_controller.Subtype,
                  value: adding_a_trainer_controller.selectedSubtype),
              const SizedBox(height: 21),
              MyTextFormField(
                controller: adding_a_trainer_controller.TheMonthlySubscriptionValue$Controller,
                  validator: () {},
                  hintText: "The monthly subscription value \$",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                controller: adding_a_trainer_controller.TotalSubscriptionValueController,
                  validator: () {},
                  hintText: "Total subscription value",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                controller: adding_a_trainer_controller.HeightController,
                  validator: () {},
                  hintText: "height",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 17),
              MyTextFormField(
                controller: adding_a_trainer_controller.WeightController,
                  validator: () {},
                  hintText: "weight",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              DropDownButton(
                  hint: "Professional degree",
                  list: adding_a_trainer_controller.ProfessionalDegree,
                  value: adding_a_trainer_controller.selectedProfessionalDegree),
              const SizedBox(height: 16),
              MyTextFormField(

                  validator: () {},
                  hintText: "Nationality",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              DropDownButton(
                  hint: "gender",
                  list: adding_a_trainer_controller.Gender,
                  value: adding_a_trainer_controller.selectedGender,),
              const SizedBox(height: 16),
              MyTextFormField(
                controller: adding_a_trainer_controller.AddressController,
                  validator: () {},
                  hintText: "address",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                controller: adding_a_trainer_controller.GovernorateController,
                  validator: () {},
                  hintText: "Governorate",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                controller: adding_a_trainer_controller.PostalCodeController,
                  validator: () {},
                  KeyboardType: TextInputType.datetime,
                  hintText: "Postal code",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                controller: adding_a_trainer_controller.PostalCodeController,
                  validator: () {},
                  hintText: "website",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                controller: adding_a_trainer_controller.FacebookController,
                  validator: () {},
                  hintText: "Facebook",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                controller: adding_a_trainer_controller.TwitterController,
                  validator: () {},
                  hintText: "Twitter",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                controller: adding_a_trainer_controller.InstagramController,
                  validator: () {},
                  hintText: "Instagram",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                controller: adding_a_trainer_controller.YouTubeController,
                  validator: () {},
                  hintText: "YouTube",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 23),
              MyButton(
                color: yellowColor,
                widget: MyText(
                    text: "Create now",
                    color: black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
                function: () {
                  adding_a_trainer_controller.onItemSave();
                  return showTopSnackBar(
                    Overlay.of(context),
                    CustomSnackBar.success(
                      message: "Good job, a new trainer is added successfully",
                      textStyle:
                          TextStyle(color: mainColor, fontFamily: "Poppins"),
                      backgroundColor: yellowColor,
                      icon: const Icon(Icons.sentiment_very_satisfied,
                          color: mainColor, size: 120),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 28,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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
import '../../../logic/controllers/public/adding_a_coach_controller.dart';
import '../../../logic/controllers/public/adding_an_employee_controller.dart';
import '../../widgets/public/trainer_detail_widgets/top_snackbar.dart';

class adding_a_coach_Screen extends StatelessWidget {
  adding_a_coach_Screen({Key? key}) : super(key: key);
  Adding_a_coach_controller adding_a_coach_controller =
      Get.put(Adding_a_coach_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(whiteText: "Adding a", yellowText: " coach"),
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
                controller: adding_a_coach_controller.FullNameController,
                validator: () {},
                hintText: "full name",
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                controller: adding_a_coach_controller.UserNameController,
                hintText: "@username",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                controller: adding_a_coach_controller.PhoneNumberController,
                KeyboardType: TextInputType.datetime,
                hintText: "phone number",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 16,
              ),
              MyTextFormField(
                controller: adding_a_coach_controller.SubscriptionNumberController,
                hintText: "#Subscription number",
                validator: () {},
                prefixIcon: Image.asset("assets/images/yellow_check.png"),
              ),
              const SizedBox(
                height: 17,
              ),
              MyTextFormField(
                controller: adding_a_coach_controller.EmailController,
                  multiLines: true,
                  validator: () {},
                  hintText: "email",
                  prefixIcon: Image.asset("assets/images/yellow_dot.png")),
              const SizedBox(
                height: 21,
              ),
              MyTextFormField(
                controller: adding_a_coach_controller.AboutTheCoachController,
                  multiLines: true,
                  validator: () {},
                  hintText: "About the coach",
                  prefixIcon: Image.asset("assets/images/yellow_dot.png")),
              const SizedBox(height: 19),
              MyTextFormField(
                controller: adding_a_coach_controller.DateOfBirthController,
                  validator: () {},
                  hintText: "date of birth",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 23),
              DropDownButton(
                  hint: "coach status",
                  list: adding_a_coach_controller.CoachStatus,
                  value: adding_a_coach_controller.selectedCoachStatus),
              const SizedBox(height: 21),
              MyTextFormField(
                controller: adding_a_coach_controller.TheBeginningOfTheShiftController,
                  validator: () {},
                  hintText: "The beginning of the shift",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                controller: adding_a_coach_controller.SalaryController,
                  validator: () {},
                  hintText: "Salary",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                controller: adding_a_coach_controller.HeightController,
                  validator: () {},
                  hintText: "height",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 17),
              MyTextFormField(
                controller: adding_a_coach_controller.WeightController,
                  validator: () {},
                  hintText: "weight",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              DropDownButton(
                  hint: "Professional degree",
                  list: adding_a_coach_controller.ProfessionalDegree,
                  value: adding_a_coach_controller.selectedProfessionalDegree),
              const SizedBox(height: 16),
              MyTextFormField(
                controller: adding_a_coach_controller.NationalityController,
                  validator: () {},
                  hintText: "Nationality",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              DropDownButton(
                  hint: "gender",
                  list: adding_a_coach_controller.Gender,
                  value: adding_a_coach_controller.selectedGender),
              const SizedBox(height: 16),
              MyTextFormField(
                controller: adding_a_coach_controller.AddressController,
                  validator: () {},
                  hintText: "address",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                controller: adding_a_coach_controller.GovernorateController,
                  validator: () {},
                  hintText: "Governorate",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                controller: adding_a_coach_controller.PostalCodeController,
                  validator: () {},
                  hintText: "Postal code",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                controller: adding_a_coach_controller.WebsiteController,
                  validator: () {},
                  hintText: "website",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                controller: adding_a_coach_controller.FacebookController,
                  validator: () {},
                  hintText: "Facebook",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                controller: adding_a_coach_controller.TwitterController,
                  validator: () {},
                  hintText: "Twitter",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                controller: adding_a_coach_controller.InstagramController,
                  validator: () {},
                  hintText: "Instagram",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                controller: adding_a_coach_controller.YouTubeController,
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
                 adding_a_coach_controller.onItemSave();
                  return showTopSnackBar(
                    Overlay.of(context),
                    CustomSnackBar.success(
                      message: "Good job, New Coach is added successfully",
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

// ignore_for_file: must_be_immutable, camel_case_types, unused_import, prefer_const_constructors_in_immutables, non_constant_identifier_names, prefer_const_constructors

import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/logic/controllers/other/add_products_controller.dart';
import 'package:systemgym/model/gender_model.dart';
import 'package:systemgym/view/widgets/drop_down_widget.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../component/app_bars/app_bar.dart';
import '../../../component/buttons/my_buttons.dart';
import '../../../component/drop_down.dart';
import '../../../component/my_text.dart';
import '../../../component/text_form/my_text_form_field.dart';
import '../../../component/upload_image_widget.dart';
import '../../../constants/colors.dart';
import '../../../constants/fonts.dart';
import '../../../logic/controllers/public/adding_a_trainer_controller.dart';
import '../../../logic/controllers/public/adding_an_employee_controller.dart';
import '../../../services/time_picker.dart';
import '../../widgets/date_picker.dart';
import '../../widgets/public/trainer_detail_widgets/top_snackbar.dart';

class Adding_a_trainer_Screen extends StatelessWidget {
  Adding_a_trainer_Screen({Key? key}) : super(key: key);
  Adding_a_trainer_controller adding_a_trainer_controller = Get.put(Adding_a_trainer_controller());
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
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: yellowColor, fontFamily: "Poppins"),
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
              MyTextFormField(
                  controller: adding_a_trainer_controller.PasswordController,
                  multiLines: true,
                  validator: () {},
                  hintText: "password",
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
                  ontap: () async {
                    String data = await Get.to(() => DatePickerWidget());
                    adding_a_trainer_controller.DateOfBirthController.text = data;
                  },
                  controller: adding_a_trainer_controller.DateOfBirthController,
                  KeyboardType: TextInputType.datetime,
                  validator: () {},
                  hintText: "date of birth",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              DropDownButton(hint: "Subtype", list: adding_a_trainer_controller.Subtype, value: ''),
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
                  controller: adding_a_trainer_controller.HeightController, validator: () {}, hintText: "height", prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 17),
              MyTextFormField(
                  controller: adding_a_trainer_controller.WeightController, validator: () {}, hintText: "weight", prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              // DropDownButton(hint: "Professional degree", list: adding_an_employee_controller.f, value: adding_an_employee_controller.selectedEmployeeStatus),
              const SizedBox(height: 16),
              DropDownWidget(
                hint: "Nationality",
                asyncData: adding_a_trainer_controller.getNationality(),
                onChange: (p0) => adding_a_trainer_controller.initNationalty,
              ),
              // MyTextFormField(
              //     controller: adding_an_employee_controller.NationalityController,
              //     validator: () {},
              //     hintText: "Nationality",
              //     prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              DropDownWidget(
                hint: "gender",
                data: gendreData,
                onChange: (p0) {
                  p0 as GenderModel;
                  adding_a_trainer_controller.selectedGender = p0.name!.en!;
                },
              ),
              MyTextFormField(
                  ontap: () async {
                    String time = await TimePickDialog.selectTime(context);
                    adding_a_trainer_controller.TheBeginningOfTheShiftController.text = time;
                  },
                  validator: () {},
                  hintText: "The beginning of the shift",
                  prefixIcon: Image.asset("assets/images/yellow_check.png"),
                  controller: adding_a_trainer_controller.TheBeginningOfTheShiftController),
              const SizedBox(height: 16),
              MyTextFormField(
                  controller: adding_a_trainer_controller.AddressController, validator: () {}, hintText: "address", prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                  controller: adding_a_trainer_controller.FullNameController, validator: () {}, hintText: "Governorate", prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                  controller: adding_a_trainer_controller.PostalCodeController,
                  validator: () {},
                  KeyboardType: TextInputType.number,
                  hintText: "Postal code",
                  prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                  controller: adding_a_trainer_controller.WebsiteController, validator: () {}, hintText: "website", prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                  controller: adding_a_trainer_controller.FacebookController, validator: () {}, hintText: "Facebook", prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                  controller: adding_a_trainer_controller.TwitterController, validator: () {}, hintText: "Twitter", prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                  controller: adding_a_trainer_controller.InstagramController, validator: () {}, hintText: "Instagram", prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 16),
              MyTextFormField(
                  controller: adding_a_trainer_controller.YouTubeController, validator: () {}, hintText: "YouTube", prefixIcon: Image.asset("assets/images/yellow_check.png")),
              const SizedBox(height: 23),
              MyButton(
                color: yellowColor,
                widget: MyText(text: "Create now", color: black, fontSize: 16, fontWeight: FontWeight.w700),
                function: () {
                  adding_a_trainer_controller.onItemSave();
                  return showTopSnackBar(
                    Overlay.of(context),
                    CustomSnackBar.success(
                      message: "Good job, New Employee is added successfully",
                      textStyle: TextStyle(color: mainColor, fontFamily: "Poppins"),
                      backgroundColor: yellowColor,
                      icon: const Icon(Icons.sentiment_very_satisfied, color: mainColor, size: 120),
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

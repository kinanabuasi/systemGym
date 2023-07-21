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
import '../../../model/Location_model.dart';
import '../../../model/Sublocation_model.dart';
import '../../../model/nationality_model.dart';
import '../../../model/seeders_level_model.dart';
import '../../../model/status_model.dart';
import '../../../services/time_picker.dart';
import '../../widgets/date_picker.dart';
import '../../widgets/full_progress_indicator.dart';
import '../../widgets/public/trainer_detail_widgets/top_snackbar.dart';

class Adding_a_trainer_Screen extends StatelessWidget {
  Adding_a_trainer_Screen({Key? key}) : super(key: key);
  final Adding_a_trainer_controller _controller = Get.put(Adding_a_trainer_controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(whiteText: "Adding a", yellowText: " coach"),
      body: SingleChildScrollView(
        controller: _controller.scrollController,
        child: Stack(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              width: double.infinity,
              color: mainColor,
              child: Column(
                children: [
                  const SizedBox(
                    height: 18,
                  ),
                  UploadImageWidget(onSelect: (p0) => _controller.initImagePath(p0)),
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
                    controller: _controller.FullNameController,
                    validator: () {},
                    hintText: "full name EN",
                    prefixIcon: Image.asset("assets/images/yellow_check.png"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextFormField(
                    controller: _controller.FullNameController,
                    validator: () {},
                    hintText: "full name AR",
                    prefixIcon: Image.asset("assets/images/yellow_check.png"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextFormField(
                    controller: _controller.UserNameController,
                    hintText: "@username",
                    validator: () {},
                    prefixIcon: Image.asset("assets/images/yellow_check.png"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextFormField(validator: () {}, hintText: "email", prefixIcon: Image.asset("assets/images/yellow_dot.png"), controller: _controller.EmailController),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextFormField(
                    controller: _controller.PasswordController,
                    hintText: "password",
                    validator: () {},
                    prefixIcon: Image.asset("assets/images/yellow_check.png"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextFormField(
                    controller: _controller.PhoneNumberController,
                    KeyboardType: TextInputType.phone,
                    hintText: "phone number",
                    validator: () {},
                    prefixIcon: Image.asset("assets/images/yellow_check.png"),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  MyTextFormField(
                      hintText: "#Subscription number",
                      validator: () {},
                      prefixIcon: Image.asset("assets/images/yellow_check.png"),
                      controller: _controller.SubscriptionNumberController),
                  const SizedBox(
                    height: 21,
                  ),
                  MyTextFormField(
                      multiLines: true,
                      validator: () {},
                      hintText: "About the coach",
                      enable: false,
                      prefixIcon: Image.asset("assets/images/yellow_dot.png"),
                      controller: _controller.AboutTheTrainerController),
                  const SizedBox(height: 19),
                  MyTextFormField(
                      ontap: () async {
                        String time = await Get.to(() => DatePickerWidget());
                        _controller.DateOfBirthController.text = time;
                      },
                      enable: true,
                      validator: () {},
                      hintText: "date of birth",
                      prefixIcon: Image.asset("assets/images/yellow_check.png"),
                      controller: _controller.DateOfBirthController),
                  const SizedBox(height: 19),
                  DropDownWidget<StatusModel>(
                    hint: "Coach Status",
                    onChange: (p0) => _controller.selectStatusModel(p0),
                    data: statusList,
                  ),
                  const SizedBox(height: 21),
                  MyTextFormField(
                      ontap: () async {
                        // String time = await TimePickDialog.selectTime(context);
                        String time = await Get.to(() => DatePickerWidget());
                        _controller.TheBeginningOfTheShiftController.text = time;
                      },
                      validator: () {},
                      enable: true,
                      hintText: "The beginning of the shift",
                      prefixIcon: Image.asset("assets/images/yellow_check.png"),
                      controller: _controller.TheBeginningOfTheShiftController),
                  const SizedBox(height: 21),
                  MyTextFormField(
                      ontap: () async {
                        String time = await Get.to(() => DatePickerWidget());
                        _controller.TheEndOfTheShiftController.text = time;
                      },
                      enable: true,
                      validator: () {},
                      hintText: "The End of the shift",
                      prefixIcon: Image.asset("assets/images/yellow_check.png"),
                      controller: _controller.TheEndOfTheShiftController),
                  const SizedBox(height: 16),
                  MyTextFormField(validator: () {}, hintText: "Salary", prefixIcon: Image.asset("assets/images/yellow_check.png"), controller: _controller.SalaryController),
                  const SizedBox(height: 16),
                  MyTextFormField(validator: () {}, hintText: "height", prefixIcon: Image.asset("assets/images/yellow_check.png"), controller: _controller.HeightController),
                  const SizedBox(height: 17),
                  MyTextFormField(validator: () {}, hintText: "weight", prefixIcon: Image.asset("assets/images/yellow_check.png"), controller: _controller.WeightController),
                  const SizedBox(height: 16),
                  DropDownWidget<SeedersIdModel>(
                    hint: "Professional Degree",
                    onChange: (p0) => _controller.selectprofessionalDegree(p0),
                    asyncData: _controller.AllprofessionalDegree(),
                  ),
                  const SizedBox(height: 16),
                  DropDownWidget<SeedersIdModel>(
                    hint: "Employment Type",
                    onChange: (p0) => _controller.selectEmploymentType(p0),
                    asyncData: _controller.allEmploymentType(),
                  ),
                  const SizedBox(height: 16),
                  DropDownWidget<NationalityModel>(
                    hint: "Nationality",
                    onChange: (p0) => _controller.selectNationalty(p0),
                    asyncData: _controller.allNationality(),
                  ),
                  const SizedBox(height: 16),
                  DropDownWidget<GenderModel>(
                    hint: "Gendre",
                    onChange: (p0) => _controller.selectGendre(p0),
                    data: gendreData,
                  ),
                  const SizedBox(height: 16),
                  DropDownWidget<LocationModel>(
                    hint: "Country ",
                    onChange: (p0) => _controller.selectCountry(p0),
                    asyncData: _controller.allCountry(),
                  ),
                  const SizedBox(height: 16),
                  DropDownWidget<SubLocationModel>(
                    hint: "City ",
                    onChange: (p0) => _controller.selectCity(p0),
                    asyncData: _controller.allCity(),
                  ),
                  const SizedBox(height: 16),
                  MyTextFormField(
                      validator: () {}, hintText: "Postal code", prefixIcon: Image.asset("assets/images/yellow_check.png"), controller: _controller.PostalCodeController),
                  const SizedBox(height: 16),
                  MyTextFormField(validator: () {}, hintText: "website", prefixIcon: Image.asset("assets/images/yellow_check.png"), controller: _controller.WebsiteController),
                  const SizedBox(height: 16),
                  MyTextFormField(validator: () {}, hintText: "Facebook", prefixIcon: Image.asset("assets/images/yellow_check.png"), controller: _controller.FacebookController),
                  const SizedBox(height: 16),
                  MyTextFormField(validator: () {}, hintText: "Twitter", prefixIcon: Image.asset("assets/images/yellow_check.png"), controller: _controller.TwitterController),
                  const SizedBox(height: 16),
                  MyTextFormField(validator: () {}, hintText: "Instagram", prefixIcon: Image.asset("assets/images/yellow_check.png"), controller: _controller.InstagramController),
                  const SizedBox(height: 16),
                  MyTextFormField(validator: () {}, hintText: "YouTube", prefixIcon: Image.asset("assets/images/yellow_check.png"), controller: _controller.YouTubeController),
                  const SizedBox(height: 23),
                  MyButton(
                    color: yellowColor,
                    widget: MyText(text: "Create now", color: black, fontSize: 16, fontWeight: FontWeight.w700),
                    function: () {
                      _controller.addCoach();
                    },
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                ],
              ),
            ),
            Obx(() => Visibility(visible: _controller.isLoading.value, child: FullProgressIndicatorWidget()))
          ],
        ),
      ),
    );
  }
}

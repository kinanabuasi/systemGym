import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constants/colors.dart';
import '../../../component/linear_gradient.dart';
import '../../../component/buttons/my_buttons.dart';
import '../../../component/my_text.dart';
import '../../../component/text_form/my_text_form_field.dart';
import '../../../logic/controllers/auth/sign_up_controller.dart';
import '../../../services/fields_validators.dart';

class SignUpScreen extends StatelessWidget {
  final signUpController = Get.find<SignUpController>();

  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                    child: Image.asset(
                  "assets/images/signup.png",
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                )),
                Expanded(
                    child: Container(
                  width: double.infinity,
                  color: mainColor,
                ))
              ],
            ),
            const LinearGradientContainer(
              beginAlignment: Alignment.center,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    MyText(
                        text: "S Y S T E M  G Y M",
                        color: white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                    const SizedBox(
                      height: 20,
                    ),
                    Form(
                      key: signUpController.formKey,
                      child: Column(
                        children: [
                          MyTextFormField(
                              controller: signUpController.userNameController,
                              validator: FieldsValidators.emptyValidator,
                              hintText: "Username",
                              prefixIcon: const Icon(
                                Icons.person,
                                color: whiteGrey,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          MyTextFormField(
                              controller: signUpController.clubNameController,
                              validator: FieldsValidators.emptyValidator,
                              hintText: "Club name",
                              prefixIcon: const Icon(
                                Icons.sports_mma,
                                color: whiteGrey,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          MyTextFormField(
                              controller: signUpController.emailController,
                              validator: FieldsValidators.emailValidator,
                              hintText: "Email",
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: whiteGrey,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          MyTextFormField(
                              controller: signUpController.passwordController,
                              obsecure: true,
                              validator: FieldsValidators.passwordValidator,
                              hintText: "Password",
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: whiteGrey,
                              )),
                          const SizedBox(
                            height: 10,
                          ),
                          MyTextFormField(
                              controller: signUpController
                                  .subsecriptionPeriodController,
                              validator: FieldsValidators.emptyValidator,
                              hintText: "Subscription period",
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: whiteGrey,
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MyButton(
                        color: yellowColor,
                        widget: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: MyText(
                              text: "Sign Up",
                              color: black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        function: () {
                          signUpController.validateLogin();
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MyText(
                            text: "If you have an account? ",
                            color: white,
                            fontSize: 15,
                            fontWeight: FontWeight.normal),
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: MyText(
                              text: "Sign in here",
                              color: yellowColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20)
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

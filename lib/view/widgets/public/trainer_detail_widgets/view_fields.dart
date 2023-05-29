// ignore_for_file: unused_import, non_constant_identifier_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:systemgym/logic/controllers/other/add_products_controller.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../../component/my_text.dart';
import '../../../../constants/colors.dart';

Widget OneLine_field(FirstText, LastText) {
  return Container(
    height: 50,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Color.fromRGBO(111, 124, 129, 1),
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Color.fromRGBO(186, 186, 186, 1)),
    ),
    child: Row(
      children: [
        SizedBox(
          width: 15,
        ),
        Container(
          height: 20,
          width: 20,
          alignment: Alignment.topCenter,
          child: Image.asset("assets/images/yellow_check.png"),
        ),
        SizedBox(
          width: 14,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: FirstText,
                style: const TextStyle(
                    color: mainColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'),
              ),
              TextSpan(
                text: ":",
                style: const TextStyle(
                    color: mainColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'),
              ),
              TextSpan(
                text: "   ",
                style: const TextStyle(
                    color: yellowColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'),
              ),
              TextSpan(
                text: LastText,
                style: const TextStyle(
                    color: yellowColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget MultiLine_field(contentText) {
  return Container(
    // height: 50,
    width: double.infinity,
    decoration: BoxDecoration(
      color: Color.fromRGBO(111, 124, 129, 1),
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Color.fromRGBO(186, 186, 186, 1)),
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 9,left: 15,right:17,bottom: 60),
      child: Column(
        children: [
          SizedBox(
            height:9,
          ),
          Container(
            height: 20,
            width: 20,
            alignment: Alignment.topCenter,
            child: Image.asset("assets/images/yellow_dot.png"),
          ),
          SizedBox(
            width: 13,
          ),
           MyText(
                      text: contentText,
                      color: yellowColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
          ],
      ),
    ),
  );
}

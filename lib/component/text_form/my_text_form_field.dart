// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class MyTextFormField extends StatelessWidget {
  final Function validator;
  final String hintText;
  TextEditingController? controller;
  bool obsecure;
  final Widget prefixIcon;
  bool multiLines;

  MyTextFormField({
    super.key,
    required this.validator,
    required this.hintText,
    required this.prefixIcon,
    this.obsecure = false,
    this.multiLines = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: multiLines ? 4 : 1,
      obscureText: obsecure,
      controller: controller,
      cursorColor: mainColor,
      keyboardType: TextInputType.text,
      validator: (value) => validator(value),
      decoration: InputDecoration(
          prefixIcon: multiLines
              ? Container(
                  height: 80,
                  width: 10,
                  alignment: Alignment.topCenter,
                  child: prefixIcon)
              : prefixIcon,
          fillColor: white,
          hintText: hintText,
          hintStyle: const TextStyle(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.w500,
              fontFamily: 'Montserrat'),
          filled: true,
          border: UnderlineInputBorder(
              borderSide: const BorderSide(color: mainColor),
              borderRadius: BorderRadius.circular(10)),
          enabledBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: mainColor),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: mainColor),
              borderRadius: BorderRadius.circular(10)),
          errorBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(10)),
          focusedErrorBorder: UnderlineInputBorder(
              borderSide: const BorderSide(color: Colors.red),
              borderRadius: BorderRadius.circular(10))),
    );
  }
}

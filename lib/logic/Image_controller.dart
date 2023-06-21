// ignore_for_file: prefer_typing_uninitialized_variables, unused_import, camel_case_types, prefer_final_fields

import 'dart:io'; 
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:get/get.dart';


class PickImageController extends GetxController {
  var _imageFile = Rx<File>(Null as File);
  final imagePicker = ImagePicker();
  

  Future pickImageFromGallery() async {
    // final file = await ImagePicker.pickImage(source: ImageSource.gallery);
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      _imageFile.value = pickedFile as File ;
    }
  }

  Future takePhotoWithCamera() async {
    // final file = await ImagePicker.pickImage(source: ImageSource.camera);
    final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      _imageFile.value =  pickedFile as File;
    }
  }

  File get imageFile => _imageFile.value;
}



import 'package:flutter/material.dart';
import 'package:images_picker/images_picker.dart';

Future<List<Media>?> pickImageformCamera(BuildContext context) async {
  Navigator.of(context).pop();
  List<Media>? data = await ImagesPicker.openCamera(
    pickType: PickType.image,
    language: Language.System,
  );
  return data ?? [];
}

Future<List<Media>?> pickImagefromGallery(BuildContext context, [int count = 10]) async {
  Navigator.of(context).pop();
  List<Media>? data = await ImagesPicker.pick(
    count: count,
    pickType: PickType.image,
    language: Language.System,
  );
  return data ?? [];
}

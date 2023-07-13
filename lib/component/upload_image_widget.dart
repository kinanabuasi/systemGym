// ignore_for_file: must_be_immutable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:images_picker/images_picker.dart';
import 'package:systemgym/services/pick_image.dart';

import '../constants/colors.dart';

class UploadImageWidget extends StatefulWidget {
  final double radius;
  final double circleWidth, circleHeight;
  final double smallCircleWidth, smallCircleHeight;
  final String bacImage;
  final int count;
  final Function(String)? onSelect;
  const UploadImageWidget(
      {super.key,
      this.radius = 47,
      this.circleWidth = 94,
      this.circleHeight = 94,
      this.smallCircleHeight = 46,
      this.smallCircleWidth = 46,
      this.bacImage = 'assets/images/black_avatar.png',
      this.count = 1,
      this.onSelect});

  @override
  State<UploadImageWidget> createState() => _UploadImageWidgetState();
}

class _UploadImageWidgetState extends State<UploadImageWidget> {
  String? imagePath;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        List<Media>? media = await pickImagefromGallery(context, widget.count);
        imagePath = media!.first.path;
        widget.onSelect!(imagePath!);
        setState(() {});
      },
      child: SizedBox(
        width: widget.circleWidth,
        height: widget.circleHeight,
        child: Stack(
          children: [
            CircleAvatar(
              backgroundImage: FileImage(File(imagePath ?? widget.bacImage)),
              radius: widget.radius,
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: widget.smallCircleHeight,
                width: widget.smallCircleWidth,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: darkGrey,
                ),
                child: Image.asset(
                  'assets/images/camera.png',
                  width: 24,
                  height: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

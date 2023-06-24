// ignore_for_file: must_be_immutable

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:octo_image/octo_image.dart';

class CommonImageView extends StatelessWidget {
  String? url;
  String? imagePath;
  String? svgPath;
  File? file;
  double? height;
  double? width;
  Color? color;
  final BoxFit fit;
  final String placeHolder;

  CommonImageView({
    super.key,
    this.url,
    this.imagePath,
    this.svgPath,
    this.file,
    this.height,
    this.width,
    this.color,
    this.fit = BoxFit.fill,
    this.placeHolder = 'assets/images/image_not_found.png',
  });

  @override
  Widget build(BuildContext context) {
    return _buildImageView();
  }

  Widget _buildImageView() {
    if (svgPath != null) {
      return SizedBox(
        height: height,
        width: width,
        child: SvgPicture.asset(
          svgPath!,
          height: height,
          width: width,
        ),
      );
    } else if (file != null) {
      return OctoImage(
        height: height,
        width: width,
        image: FileImage(file!),
        placeholderBuilder: OctoPlaceholder.blurHash(
          'LEHV6nWB2yk8pyo0adR*.7kCMdnj',
        ),
        errorBuilder: OctoError.blurHash(
          'LEHV6nWB2yk8pyo0adR*.7kCMdnj',
        ),
        fit: BoxFit.cover,
      );
    } else if (url != null) {
      return OctoImage(
        height: height,
        width: width,
        fit: fit,
        image: NetworkImage(url!),
        placeholderBuilder: OctoPlaceholder.blurHash(
          'LEHV6nWB2yk8pyo0adR*.7kCMdnj',
        ),
        errorBuilder: OctoError.blurHash(
          'LEHV6nWB2yk8pyo0adR*.7kCMdnj',
        ),
      );
    } else if (imagePath != null) {
      return OctoImage(
        height: height,
        width: width,
        image: AssetImage(imagePath!),
        errorBuilder: OctoError.blurHash(
          'LEHV6nWB2yk8pyo0adR*.7kCMdnj',
        ),
      );
    }
    return const SizedBox();
  }
}

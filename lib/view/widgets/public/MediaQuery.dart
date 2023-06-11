// ignore_for_file: file_names

import 'package:flutter/material.dart';

double getMobileHeight(BuildContext context, double size) {
  double screenHeight = MediaQuery.of(context).size.height;
  if (screenHeight < 600) { // Considered as a small screen device
    return size * 0.8; // Scale down by 20%
  } else {
    return size;
  }
  //  return MediaQuery.of(context).size.height * 0.8; // Scale down by 20%
  // } else {
  //   return MediaQuery.of(context).size.height;
  // }
}

double getMobileWidth(BuildContext context, double size) {
  double screenWidth = MediaQuery.of(context).size.width;
  if (screenWidth < 600) { // Considered as a small screen device
    return size * 0.8; // Scale down by 20%
  } else {
    return size;
  }
  //  return MediaQuery.of(context).size.width * 0.8; // Scale down by 20%
  // } else {
  //   return MediaQuery.of(context).size.width;
  // }
}

import '../view/widgets/custom_bottom_bar.dart';

class NabBarModel {
  NabBarModel({required this.icon, this.title, required this.type});

  String icon;

  String? title;

  BottomBarEnum type;
}

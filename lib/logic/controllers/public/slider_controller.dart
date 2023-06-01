import 'package:get/get.dart';

class SliderController extends GetxController {
  final todos = [
    Todo(
      title: 'Congratulations',
      subTitle: "35% your daily challenge completed",
      time: "9:45 AM",
    ),
    Todo(
      title: 'Attention',
      subTitle:
          "Your subscription is going to expire\nvery soon. Subscribe now.",
      time: "9:38 AM",
    ),
    Todo(
      title: 'More Activity',
      subTitle: "for yout workout session",
      time: "8:25 AM",
    ),
  ].obs;

  void delete(int index) {
    todos.removeAt(index);
  }
}

class Todo {
  final String title;
  final String subTitle;
  final String time;

  Todo({
    required this.title,
    required this.subTitle,
    required this.time,
  });
}

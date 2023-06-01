import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:systemgym/component/my_text.dart';
import '../../../../constants/colors.dart';
import '../../../../logic/controllers/public/slider_controller.dart';

class NotificatiosScreen extends StatelessWidget {
  final sliderController = Get.put(SliderController());
  NotificatiosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          title: MyText(
              text: "NOTIFICATIONS",
              color: white,
              fontSize: 25,
              fontWeight: FontWeight.bold),
        ),
        body: Column(children: [
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: darkGrey, borderRadius: BorderRadius.circular(20)),
                child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                        color: yellowColor,
                        borderRadius: BorderRadius.circular(20)),
                    labelColor: black,
                    indicatorColor: secondYellowColor,
                    labelStyle: const TextStyle(color: mainColor),
                    unselectedLabelColor: white,
                    tabs: const [
                      Tab(
                        text: "New",
                      ),
                      Tab(text: "Events"),
                      Tab(text: "All")
                    ]),
              )),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Divider(
              color: whiteGrey,
            ),
          ),
          SizedBox(
            height: 350,
            child: TabBarView(children: [
              Obx(() => ListView.builder(
                    shrinkWrap: true,
                    itemCount: sliderController.todos.length,
                    itemBuilder: (context, index) {
                      final todo = sliderController.todos[index];
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Slidable(
                              endActionPane: ActionPane(
                                  motion: const StretchMotion(),
                                  children: [
                                    SlidableAction(
                                      onPressed: (context) {
                                        sliderController.delete(index);
                                      },
                                      backgroundColor: red,
                                      icon: Icons.delete,
                                      label: "Delete",
                                    )
                                  ]),
                              direction: Axis.horizontal,
                              child: ListTile(
                                title: MyText(
                                    text: todo.title,
                                    color: white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                                subtitle: MyText(
                                    text: todo.subTitle,
                                    color: white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal),
                                trailing: MyText(
                                    text: todo.time,
                                    color: white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            const Divider(color: whiteGrey)
                          ],
                        ),
                      );
                    },
                  )),
              Obx(() => ListView.builder(
                    shrinkWrap: true,
                    itemCount: sliderController.todos.length,
                    itemBuilder: (context, index) {
                      final todo = sliderController.todos[index];
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Slidable(
                              endActionPane: ActionPane(
                                  motion: const StretchMotion(),
                                  children: [
                                    SlidableAction(
                                      onPressed: (context) {
                                        sliderController.delete(index);
                                      },
                                      backgroundColor: red,
                                      icon: Icons.delete,
                                      label: "Delete",
                                    )
                                  ]),
                              direction: Axis.horizontal,
                              child: ListTile(
                                title: MyText(
                                    text: todo.title,
                                    color: white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                                subtitle: MyText(
                                    text: todo.subTitle,
                                    color: white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal),
                                trailing: MyText(
                                    text: todo.time,
                                    color: white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            const Divider(color: whiteGrey)
                          ],
                        ),
                      );
                    },
                  )),
              Obx(() => ListView.builder(
                    shrinkWrap: true,
                    itemCount: sliderController.todos.length,
                    itemBuilder: (context, index) {
                      final todo = sliderController.todos[index];
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Slidable(
                              endActionPane: ActionPane(
                                  motion: const StretchMotion(),
                                  children: [
                                    SlidableAction(
                                      onPressed: (context) {
                                        sliderController.delete(index);
                                      },
                                      backgroundColor: red,
                                      icon: Icons.delete,
                                      label: "Delete",
                                    )
                                  ]),
                              direction: Axis.horizontal,
                              child: ListTile(
                                title: MyText(
                                    text: todo.title,
                                    color: white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                                subtitle: MyText(
                                    text: todo.subTitle,
                                    color: white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal),
                                trailing: MyText(
                                    text: todo.time,
                                    color: white,
                                    fontSize: 11,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                            const Divider(color: whiteGrey)
                          ],
                        ),
                      );
                    },
                  ))
            ]),
          )
        ]),
      ),
    );
  }
}

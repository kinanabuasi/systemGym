import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../component/my_text.dart';
import '../../../constants/colors.dart';
import '../../../logic/controllers/public/insight_controller.dart';
import '../../widgets/public/my_circular_progress.dart';

class InsightScreen extends StatelessWidget {
  final insightController = Get.put(InsightController());

  InsightScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: black,
        appBar: AppBar(
            backgroundColor: darkGrey,
            elevation: 0,
            centerTitle: true,
            title: Text(insightController.selectedDate.toString())),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: darkGrey,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: SizedBox(
                    height: 100,
                    child: DatePicker(
                      selectionColor: black,
                      onDateChange: (date) {
                        insightController.selectedDate = date;
                        insightController.update();

                        print(insightController.selectedDate.toString());
                      },
                      selectedTextColor: white,
                      deactivatedColor: black,
                      dateTextStyle: const TextStyle(
                          color: secondYellowColor,
                          fontWeight: FontWeight.bold),
                      dayTextStyle: const TextStyle(
                          color: secondYellowColor,
                          fontWeight: FontWeight.bold),
                      monthTextStyle: const TextStyle(
                          color: secondYellowColor,
                          fontWeight: FontWeight.bold),
                      height: 70,
                      DateTime.now(),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: MyCircularProgress(
                    value: 0.80,
                    height: 170,
                    width: 170,
                    widget: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyText(
                              text: "652 Cal",
                              color: white,
                              fontSize: 25,
                              fontWeight: FontWeight.w600),
                          MyText(
                              text: "active Calories",
                              color: white,
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ],
                      ),
                    ),
                    valueColor: red),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyCircularProgress(
                      value: 0.6,
                      height: 100,
                      width: 100,
                      widget: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyText(
                                text: "Steps",
                                color: white,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                            MyText(
                                text: "6540",
                                color: white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ]),
                      valueColor: red),
                  MyCircularProgress(
                      value: 0.4,
                      height: 100,
                      width: 100,
                      widget: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyText(
                                text: "Time",
                                color: white,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                            MyText(
                                text: "45 min",
                                color: white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ]),
                      valueColor: secondYellowColor),
                  MyCircularProgress(
                      value: 0.8,
                      height: 100,
                      width: 100,
                      widget: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            MyText(
                                text: "Heart",
                                color: white,
                                fontSize: 13,
                                fontWeight: FontWeight.w400),
                            MyText(
                                text: "72 bpm",
                                color: white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ]),
                      valueColor: orange),
                ],
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: MyText(
                    text: "Finished Workout",
                    color: white,
                    fontSize: 17,
                    fontWeight: FontWeight.w600),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: darkGrey,
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  MyText(
                                      text: "Stability Training",
                                      color: white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600),
                                  MyText(
                                      text: "Stability Training",
                                      color: secondYellowColor,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400),
                                ],
                              ),
                              const Spacer(),
                              Container(
                                child: const Icon(
                                  Icons.check,
                                  color: black,
                                  size: 18,
                                ),
                                decoration: BoxDecoration(
                                    color: green,
                                    borderRadius: BorderRadius.circular(5)),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}

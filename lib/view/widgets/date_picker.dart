import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:systemgym/constants/colors.dart';

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({Key? key}) : super(key: key);

  @override
  DatePickerWidgetState createState() => DatePickerWidgetState();
}

class DatePickerWidgetState extends State<DatePickerWidget> {
  String selectedDate = '';

  DateRangePickerController? dataPickerRangeController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: SfDateRangePicker(
              viewSpacing: 1,
              selectionColor: mainColor,
              rangeSelectionColor: mainColor,
              endRangeSelectionColor: mainColor,
              startRangeSelectionColor: mainColor,
              todayHighlightColor: mainColor,
              initialDisplayDate: DateTime.now(),
              // controller: dataPickerController.dataPickerRangeController,
              headerStyle: const DateRangePickerHeaderStyle(textAlign: TextAlign.center),
              onSelectionChanged: onSelectionChanged,
              selectionMode: DateRangePickerSelectionMode.range,
            ),
          ),
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: () {
                Get.back(result: selectedDate);
              },
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(color: mainColor, shape: BoxShape.circle, boxShadow: [
                  BoxShadow(
                    color: mainColor.withOpacity(0.3),
                    blurRadius: 8,
                    spreadRadius: 8,
                  )
                ]),
                child: const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 33,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    ));
  }

  void onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    selectedDate = args.value.toString();
  }
}

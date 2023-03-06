import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/date_controller.dart';

class DatePickerView extends GetView<DateController> {
  const DatePickerView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
            body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() => Text(controller.selectedDate.value.toString())),
              ElevatedButton(
                  onPressed: () {
                    controller.chooseDate();
                  },
                  child: const Text('Select Date')),
              const SizedBox(
                height: 40,
              ),
              Obx(() => Text(
                  "Start : ${DateFormat("dd-MM-yyyy").format(controller.dateRange.value.start)}")),
              Obx(() => Text(
                  "End : ${DateFormat("dd-MM-yyyy").format(controller.dateRange.value.end)}")),
              ElevatedButton(
                  onPressed: () {
                    controller.chooseDateRange();
                  },
                  child: const Text('Select Range')),
            ],
          ),
        )));
  }
}

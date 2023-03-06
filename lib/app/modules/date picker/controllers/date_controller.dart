import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateController extends GetxController {
  var selectedDate = DateTime.now().obs;
  var dateRange = DateTimeRange(
      start: DateTime.now(),
      end: DateTime(
        DateTime.now().year,
        DateTime.now().month,
        DateTime.now().day + 6,
      )).obs;

  @override
  void onInit() {
    super.onInit();
  }

  chooseDate() async {
    DateTime? pickedDate = await showDatePicker(
        context: Get.context!,
        initialDate: selectedDate.value,
        firstDate: DateTime(2000),
        lastDate: DateTime(2024));

    if (pickedDate != null && pickedDate != selectedDate.value) {
      selectedDate.value = pickedDate;
    }
  }

  chooseDateRange() async {
    DateTimeRange? picked = await showDateRangePicker(
        context: Get.context!,
        firstDate: DateTime(DateTime.now().year - 20),
        lastDate: DateTime(DateTime.now().year + 20),
        initialDateRange: dateRange.value);

    if (picked != null && picked != dateRange.value) {
      dateRange.value = picked;
    }
  }
}

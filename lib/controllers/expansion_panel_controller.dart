import 'package:get/get.dart';

import '../data/employee.dart';

class ExpansionPanelController extends GetxController {
  late List<Employee> employee;

  @override
  void onInit() {
    super.onInit();
    employee = generateItems(20);
  }

  List<Employee> generateItems(int numberOfItems) {
    return List.generate(numberOfItems, (int index) {
      return Employee(
          name: 'Employee - $index',
          id: 'Employee - $index Details',
          isExpanded: false.obs);
    });
  }
}

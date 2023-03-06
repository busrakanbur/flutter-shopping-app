import 'package:flutter_expandable_bottom_sheet/app/modules/date%20picker/controllers/date_controller.dart';
import 'package:get/get.dart';
import '../modules/auth pages/controllers/auth_controller.dart';

class AuthBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(
      () => AuthController(),
    );
  }
}

class DateBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DateController>(
      () => DateController(),
    );
  }
}

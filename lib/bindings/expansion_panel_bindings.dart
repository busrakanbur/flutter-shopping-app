import 'package:get/get.dart';

import '../controllers/expansion_panel_controller.dart';

class ExpansionPanelBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ExpansionPanelController>(
      () => ExpansionPanelController(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/expansion_panel_controller.dart';
import '../data/employee.dart';
import '../theme/app_colors.dart';

class ExpansionPanelView extends GetView<ExpansionPanelController> {
  const ExpansionPanelView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expansion Panel List"),
        backgroundColor: AppColors.mainColor,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.sunny,
            ),
            onPressed: () {
              context.isDarkMode
                  ? Get.changeTheme(ThemeData.light())
                  : Get.changeTheme(ThemeData.dark());
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 20, bottom: 20),
          child: Obx(() => ExpansionPanelList(
              expansionCallback: (panelIndex, isExpanded) {
                controller.employee[panelIndex].isExpanded.value = !isExpanded;
              },
              children:
                  controller.employee.map<ExpansionPanel>((Employee item) {
                return ExpansionPanel(
                    canTapOnHeader: true,
                    headerBuilder: ((context, isExpanded) {
                      return ListTile(title: Text(item.name));
                    }),
                    body: ListTile(
                      title: Text(item.id),
                    ),
                    isExpanded: item.isExpanded.value);
              }).toList())),
        ),
      ),
    );
  }
}

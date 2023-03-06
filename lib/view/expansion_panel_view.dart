import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/app_colors.dart';

class ExpansionPanelView extends StatelessWidget {
  ExpansionPanelView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Expansion Panel"),
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
        body: Center());
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 40, 40, 40),
        ),
        body: Container(
          height: Get.height,
          width: Get.width,
          padding: EdgeInsets.symmetric(horizontal: 60),
          color: Color.fromARGB(255, 190, 198, 202),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  border: UnderlineInputBorder(),
                  hintText: 'Email/Username'),
            ),
            SizedBox(
              height: 20,
            ),
            Obx(
              () => TextField(
                onChanged: (value) {
                  controller.checkPasswordStregth(value);
                },
                obscureText: controller.isPasswordHidden.value,
                decoration: InputDecoration(
                    icon: Icon(Icons.lock),
                    border: UnderlineInputBorder(),
                    hintText: 'Password',
                    suffix: InkWell(
                      child: Icon(
                        controller.isPasswordHidden.value
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: Colors.grey,
                        size: 20,
                      ),
                      onTap: () {
                        controller.isPasswordHidden.value =
                            !controller.isPasswordHidden.value;
                      },
                    )),
              ),
            ),
            // Obx(
            //   () => LinearProgressIndicator(
            //     value: controller.passwordStrength.value,
            //     backgroundColor: Colors.grey[300],
            //     color: controller.passwordStrength.value <= 1 / 4
            //         ? Colors.red
            //         : controller.passwordStrength.value == 2 / 4
            //             ? Colors.amber
            //             : controller.passwordStrength.value == 3 / 4
            //                 ? Colors.deepPurpleAccent
            //                 : Colors.green,
            //   ),
            // ),
            SizedBox(
              height: 10,
            ),
            Obx(() => Align(
                  alignment: Alignment(
                    -0.5,
                    0,
                  ),
                  child: Text(
                    controller.displayText.value,
                    style: TextStyle(
                      fontSize: 12,
                      color: controller.passwordStrength.value <= 1 / 4
                          ? Colors.red
                          : controller.passwordStrength.value == 2 / 4
                              ? Colors.amber
                              : controller.passwordStrength.value == 3 / 4
                                  ? Colors.deepPurpleAccent
                                  : Colors.green,
                    ),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {}, child: Text("LOGIN NOW"))
          ]),
        ),
      ),
    );
  }
}

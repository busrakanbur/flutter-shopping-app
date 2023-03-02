import 'package:flutter/material.dart';
import 'package:flutter_expandable_bottom_sheet/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class LoginView extends GetView<HomeController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Container(
            height: Get.height,
            width: Get.width,
            padding: EdgeInsets.symmetric(horizontal: 60),
            color: Colors.white,
            child: SingleChildScrollView(
                child: Form(
                    child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(top: 90, bottom: 20),
                child: Image.asset('assets/images/logo.png'),
              ),
              Text('NEWS APP',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700)),
              Container(
                margin: EdgeInsets.only(top: 30),
                padding: EdgeInsets.all(20),
                height: 60,
                width: 450,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.transparent,
                    border:
                        Border.all(color: Color.fromARGB(255, 106, 106, 106))),
                child: TextField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      border: UnderlineInputBorder(),
                      hintText: 'E-mail',
                      hintStyle: TextStyle(fontSize: 13)),
                ),
              ),
              Obx(
                () => Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.all(20),
                  height: 60,
                  width: 450,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.transparent,
                      border: Border.all(
                          color: Color.fromARGB(255, 106, 106, 106))),
                  child: TextField(
                    onChanged: (value) {
                      controller.checkLogin(value, value);
                    },
                    obscureText: controller.isPasswordHidden.value,
                    decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        border: UnderlineInputBorder(),
                        hintText: 'Password',
                        hintStyle: TextStyle(fontSize: 13),
                        suffix: InkWell(
                          child: Icon(
                            controller.isPasswordHidden.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                            size: 15,
                          ),
                          onTap: () {
                            controller.isPasswordHidden.value =
                                !controller.isPasswordHidden.value;
                          },
                        )),
                  ),
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
                      controller.falseLogin.value,
                      style: TextStyle(
                          fontSize: 12, color: Color.fromARGB(255, 75, 75, 75)),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),

              GestureDetector(
                onTap: () {
                  Get.toNamed('/signup');
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(255, 54, 54, 54)),
                  child: Text(
                    "LOGIN NOW",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    Get.toNamed('/signup');
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      'or Create an account',
                      style: TextStyle(
                          fontSize: 13, color: Color.fromARGB(255, 81, 81, 81)),
                    ),
                  ))
            ])))),
      ),
    );
  }
}


// Text(
//                     controller.displayText.value,
//                     style: TextStyle(
//                       fontSize: 12,
//                       color: controller.passwordStrength.value <= 1 / 4
//                           ? Colors.red
//                           : controller.passwordStrength.value == 2 / 4
//                               ? Colors.amber
//                               : controller.passwordStrength.value == 3 / 4
//                                   ? Colors.deepPurpleAccent
//                                   : Colors.green,
//                     ),
//                   ),





      
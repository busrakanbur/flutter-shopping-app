import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controllers/home_controller.dart';

class SignupView extends GetView<HomeController> {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Container(
            alignment: Alignment.center,
            height: Get.height,
            width: Get.width,
            padding: EdgeInsets.symmetric(horizontal: 60),
            color: Colors.white,
            child: SingleChildScrollView(
              child: Form(
                  child: Column(
                children: [
                  Text('SIGN UP',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w300)),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(20),
                    height: 10.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.transparent,
                        border: Border.all(
                            color: Color.fromARGB(255, 106, 106, 106))),
                    child: TextFormField(
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          border: UnderlineInputBorder(),
                          hintText: 'First Name',
                          hintStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(20),
                    height: 60,
                    width: 450,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.transparent,
                        border: Border.all(
                            color: Color.fromARGB(255, 106, 106, 106))),
                    child: TextFormField(
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          border: UnderlineInputBorder(),
                          hintText: 'Last Name',
                          hintStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(20),
                    height: 60,
                    width: 450,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.transparent,
                        border: Border.all(
                            color: Color.fromARGB(255, 106, 106, 106))),
                    child: TextFormField(
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          border: UnderlineInputBorder(),
                          hintText: 'Phone Number',
                          hintStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(20),
                    height: 60,
                    width: 450,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.transparent,
                        border: Border.all(
                            color: Color.fromARGB(255, 106, 106, 106))),
                    child: TextFormField(
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          border: UnderlineInputBorder(),
                          hintText: 'E-mail',
                          hintStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    padding: EdgeInsets.all(20),
                    height: 60,
                    width: 450,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.transparent,
                        border: Border.all(
                            color: Color.fromARGB(255, 106, 106, 106))),
                    child: TextFormField(
                      onChanged: (value) {},
                      decoration: const InputDecoration(
                          icon: Icon(Icons.person),
                          border: UnderlineInputBorder(),
                          hintText: 'Password',
                          hintStyle: TextStyle(fontSize: 13)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.defaultDialog(
                          title: "Done!",
                          titleStyle: TextStyle(color: Colors.white),
                          confirm: GestureDetector(
                            onTap: () {
                              Get.toNamed('/signup');
                            },
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                alignment: Alignment.center,
                                height: 40,
                                width: 160,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Color.fromARGB(255, 89, 89, 89)),
                                child: Text(
                                  "> LOGIN",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          backgroundColor: Color.fromARGB(255, 41, 41, 41),
                          content: Text('Succesfully created an account.',
                              style: TextStyle(color: Colors.white)));
                      //Get.toNamed('/login');
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color.fromARGB(255, 54, 54, 54)),
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                  GestureDetector(
                      onTap: () {
                        Get.toNamed('/login');
                      },
                      child: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          'Already have an account? Login',
                          style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 81, 81, 81)),
                        ),
                      ))
                ],
              )),
            )),
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
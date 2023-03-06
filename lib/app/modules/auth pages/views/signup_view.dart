import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../controllers/auth_controller.dart';

class SignupView extends GetView<AuthController> {
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
            padding: const EdgeInsets.symmetric(horizontal: 60),
            color: Colors.white,
            child: SingleChildScrollView(
              child: Form(
                  child: Column(
                children: [
                  signupPageTitle(),
                  signupTextFormField('First Name'),
                  signupTextFormField('Last Name'),
                  signupTextFormField('Phone Number'),
                  signupTextFormField('E-mail'),
                  signupTextFormField('Password'),
                  signupButton(),
                  alreadyHaveAnAccountText()
                ],
              )),
            )),
      ),
    );
  }

  GestureDetector alreadyHaveAnAccountText() {
    return GestureDetector(
        onTap: () {
          Get.toNamed('/login');
        },
        child: const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            'Already have an account? Login',
            style:
                TextStyle(fontSize: 13, color: Color.fromARGB(255, 81, 81, 81)),
          ),
        ));
  }

  GestureDetector signupButton() {
    return GestureDetector(
      onTap: () {
        Get.defaultDialog(
            title: "Done!",
            titleStyle: const TextStyle(color: Colors.white),
            backgroundColor: const Color.fromARGB(255, 41, 41, 41),
            content: const Text('Succesfully created an account.',
                style: TextStyle(color: Colors.white)));
        //Get.toNamed('/login');
      },
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromARGB(255, 54, 54, 54)),
        child: const Text(
          "SIGN UP",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }

  Container signupTextFormField(String hintText) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.all(20),
      height: 10.h,
      width: 90.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.transparent,
          border: Border.all(color: const Color.fromARGB(255, 106, 106, 106))),
      child: TextFormField(
        onChanged: (value) {},
        decoration: InputDecoration(
            icon: const Icon(Icons.person),
            border: const UnderlineInputBorder(),
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 13)),
      ),
    );
  }

  Text signupPageTitle() {
    return const Text('SIGN UP',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300));
  }
}

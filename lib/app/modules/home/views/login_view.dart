import 'package:flutter/material.dart';
import 'package:flutter_expandable_bottom_sheet/app/routes/app_pages.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

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
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    key: controller.loginFormKey,
                    child: Column(children: [
                      logoImageWidget(),
                      appTitle(),
                      emailTextFormField(),
                      Obx(
                        () => passwordTextFormField(),
                      ),
                      LoginButton(),
                      orCreateAccountText()
                    ])))),
      ),
    );
  }

  GestureDetector orCreateAccountText() {
    return GestureDetector(
        onTap: () {
          Get.toNamed('/signup');
        },
        child: Padding(
          padding: EdgeInsets.only(top: 2.h),
          child: Text(
            'or Create an account',
            style:
                TextStyle(fontSize: 13, color: Color.fromARGB(255, 81, 81, 81)),
          ),
        ));
  }

  GestureDetector LoginButton() {
    return GestureDetector(
      onTap: () {
        if (controller.checkLogin()) {
          Get.toNamed('/signup');
        } else {
          Get.defaultDialog(
              title: "Try again",
              titleStyle: TextStyle(color: Colors.white),
              backgroundColor: Color.fromARGB(255, 41, 41, 41),
              content: Text('Invalid email or password.',
                  style: TextStyle(color: Colors.white)));
        }
      },
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 4.h),
        height: 7.h,
        width: 70.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color.fromARGB(255, 54, 54, 54)),
        child: Text(
          "LOGIN NOW",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }

  Container passwordTextFormField() {
    return Container(
      margin: EdgeInsets.only(top: 3.h),
      padding: EdgeInsets.all(3.h),
      height: 10.h,
      width: 90.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.transparent,
          border: Border.all(color: Color.fromARGB(255, 106, 106, 106))),
      child: TextFormField(
        controller: controller.passwordController,
        onSaved: (value) {
          controller.password = value!;
        },
        validator: (value) {
          return controller.validatePassword(value!);
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
                size: 2.h,
              ),
              onTap: () {
                controller.isPasswordHidden.value =
                    !controller.isPasswordHidden.value;
              },
            )),
      ),
    );
  }

  Container emailTextFormField() {
    return Container(
      margin: EdgeInsets.only(top: 3.h),
      padding: EdgeInsets.all(3.h),
      height: 10.h,
      width: 90.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.transparent,
          border: Border.all(color: Color.fromARGB(255, 106, 106, 106))),
      child: TextFormField(
        controller: controller.emailController,
        onSaved: (value) {
          controller.email = value!;
        },
        validator: (value) {
          return controller.validateEmail(value!);
        },
        onChanged: (value) {},
        decoration: const InputDecoration(
            icon: Icon(Icons.person),
            border: UnderlineInputBorder(),
            hintText: 'E-mail',
            hintStyle: TextStyle(fontSize: 13)),
      ),
    );
  }

  Text appTitle() {
    return Text('SHOPP',
        style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700));
  }

  Padding logoImageWidget() {
    return Padding(
      padding: EdgeInsets.only(top: 12.h, bottom: 3.h),
      child: Image.asset('assets/images/logo.png'),
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





      
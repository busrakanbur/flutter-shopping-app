import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  String password = '';
  String email = '';
  RxString displayText = 'Enter a password'.obs;
  RxDouble passwordStrength = 0.0.obs;
  RegExp numRegExpress = RegExp(r".*[0-9].*");
  RegExp letterRegExpress = RegExp(r".*[A-Za-z].*");
  RxBool isPasswordHidden = true.obs;
  RxString falseLogin = ''.obs;

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  late TextEditingController emailController, passwordController;

  @override
  void onInit() {
    super.onInit();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid email";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length < 6) {
      return "Password must be longer than 6 characters";
    }
    return null;
  }

  // void checkPasswordStregth(String value) {
  //   password.value = value.trim();
  //   if (password.value.isEmpty) {
  //     passwordStrength.value = 0.0;
  //     displayText.value = "Enter a password";
  //   } else if (password.value.length < 6) {
  //     passwordStrength.value = 1 / 4;
  //     displayText.value = "Password too short";
  //   } else if (password.value.length < 8) {
  //     passwordStrength.value = 2 / 4;
  //     displayText.value = "Password not strong";
  //   } else {
  //     if (!letterRegExpress.hasMatch(password.value) ||
  //         !numRegExpress.hasMatch(password.value)) {
  //       passwordStrength.value = 3 / 4;
  //       displayText.value = "Password  strong";
  //     } else {
  //       passwordStrength.value = 1;
  //       displayText.value = "Password  strongest";
  //     }
  //   }
  // }

  bool checkLogin() {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return false;
    } else {
      loginFormKey.currentState!.save();
      return true;
    }
  }
}

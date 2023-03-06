import 'package:flutter_expandable_bottom_sheet/app/modules/date%20picker/views/date_view.dart';
import 'package:flutter_expandable_bottom_sheet/app/modules/rate%20pages/views/rate_view.dart';
import 'package:get/get.dart';
import '../bindings/all_bindings.dart';
import '../modules/auth pages/views/login_view.dart';
import '../modules/auth pages/views/signup_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.login;
  static const signup = Routes.signup;
  static const datepicker = Routes.datepicker;
  static const like = Routes.like;

  static final routes = [
    GetPage(
      name: _Paths.login,
      page: () => const LoginView(),
      binding: AuthBindings(),
    ),
    GetPage(
      name: _Paths.signup,
      page: () => const SignupView(),
      binding: AuthBindings(),
    ),
    GetPage(
        name: _Paths.datepicker,
        page: () => const DatePickerView(),
        binding: DateBindings()),
    GetPage(
        name: _Paths.like,
        page: () => const RatingView(),
        binding: RateBindings()),
  ];
}

import 'package:get/get.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/bindings/signup_bindings.dart';
import '../modules/home/views/login_view.dart';
import '../modules/home/views/signup_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.login;
  static const signup = Routes.signup;

  static final routes = [
    GetPage(
      name: _Paths.login,
      page: () => LoginView(),
      binding: HomeBindings(),
    ),
    GetPage(
      name: _Paths.signup,
      page: () => SignupView(),
      binding: SignupBindings(),
    ),
  ];
}

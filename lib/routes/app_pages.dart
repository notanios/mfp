import 'package:get/get.dart';
import 'package:mdf_volunteers/presentation/code_verification/phone_code_screen.dart';
import 'package:mdf_volunteers/presentation/login/login_binding.dart';
import 'package:mdf_volunteers/presentation/profile/profile_screen.dart';
import 'package:mdf_volunteers/presentation/profile_form/profile_form_binding.dart';
import 'package:mdf_volunteers/presentation/register/register_screen.dart';
import 'package:mdf_volunteers/presentation/welcome/WelcomeScreen.dart';

import '../presentation/login/login_screen.dart';

part 'app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      bindings: [LoginBinding()],
    ),
    GetPage(name: Routes.WELCOME, page: () => WelcomeScreen()),
    GetPage(name: Routes.PHONE_CODE, page: () => PhoneCodeScreen()),
    GetPage(name: Routes.PROFILE, page: () => ProfileScreen()),
    GetPage(
        name: Routes.REGISTER,
        page: () => RegisterScreen(),
        bindings: [ProfileFormBinding()])
  ];
}

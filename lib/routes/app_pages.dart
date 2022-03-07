import 'package:get/get.dart';
import 'package:mdf/presentation/code_verification/phone_code_screen.dart';
import 'package:mdf/presentation/login/login_binding.dart';
import 'package:mdf/presentation/notifications/notifications_binding.dart';
import 'package:mdf/presentation/notifications/notifications_screen.dart';
import 'package:mdf/presentation/profile/profile_screen.dart';
import 'package:mdf/presentation/profile_form/profile_form_binding.dart';
import 'package:mdf/presentation/register/register_screen.dart';
import 'package:mdf/presentation/welcome/welcome_screen.dart';

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
    GetPage(
        name: Routes.PROFILE,
        page: () => ProfileScreen(),
        bindings: [ProfileFormBinding()]),
    GetPage(
        name: Routes.REGISTER,
        page: () => RegisterScreen(),
        bindings: [ProfileFormBinding()]),
    GetPage(
        name: Routes.NOTIFICATIONS,
        page: () => NotificationsScreen(),
        bindings: [NotificationsBinding()]),
  ];
}

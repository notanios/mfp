import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdf/presentation/code_verification/phone_code_binding.dart';
import 'package:mdf/presentation/code_verification/phone_code_screen.dart';
import 'package:mdf/presentation/login/login_binding.dart';
import 'package:mdf/presentation/notifications/notifications_binding.dart';
import 'package:mdf/presentation/notifications/notifications_screen.dart';
import 'package:mdf/presentation/profile/profile_screen.dart';
import 'package:mdf/presentation/profile_form/profile_form_binding.dart';
import 'package:mdf/presentation/register/register_screen.dart';
import 'package:mdf/presentation/welcome/welcome_screen.dart';

import '../data/repos/user_repo_bindings.dart';
import '../presentation/base/snack_bar_widget.dart';
import '../presentation/login/login_screen.dart';
import '../presentation/notifications/notifications_binding.dart';
import '../presentation/profile/profile_binding.dart';
import '../presentation/register/register_binding.dart';

part 'app_routes.dart';

// ignore: avoid_classes_with_only_static_members
class AppPages {
  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginScreen(),
      bindings: [UserRepoBindings(), LoginBinding()],
    ),
    GetPage(name: Routes.WELCOME, page: () => WelcomeScreen()),
    GetPage(
        name: Routes.PHONE_CODE,
        page: () => PhoneCodeScreen(),
        bindings: [UserRepoBindings(), PhoneCodeBinding()]),
    GetPage(
        name: Routes.PROFILE,
        page: () => ProfileScreen(),
        bindings: [UserRepoBindings(), ProfileFormBinding(), ProfileBinding()]),
    GetPage(
        name: Routes.REGISTER,
        page: () => CompleteProfileScreen(),
        bindings: [UserRepoBindings(), CompleteProfileBinding()]),
    GetPage(
        name: Routes.NOTIFICATIONS,
        page: () => const NotificationsScreen(),
        bindings: [UserRepoBindings(), NotificationsBinding()]),
  ];

  static void showSnackBar(BuildContext context, String? title,
      {VoidCallback? onClosed, Duration? durationToClose}) {
    if (title != null) {
      Navigator.of(context, rootNavigator: true).overlay!.insert(
        OverlayEntry(builder: (BuildContext context) {
          return SnackBarWidget(
            title,
            onClosed: onClosed,
            durationToClose: durationToClose,
          );
        }),
      );
    }
  }
}

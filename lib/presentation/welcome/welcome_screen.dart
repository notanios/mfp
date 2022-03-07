import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mdf/presentation/notifications/components/logo.dart';
import 'package:mdf/presentation/styles/app_colors.dart';

import '../../routes/app_pages.dart';
import '../base/base.dart';
import '../components/primary_button.dart';
import '../styles/strings.dart';
import '../styles/text_styles.dart';

class WelcomeScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return BasePage(builder: (context) {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
        color: AppColors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.santasGray,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8)),
                padding: EdgeInsets.all(10),
                child: Text(
                  Strings.fii_voluntar,
                  style: TextStyles.welcomeScreenHeader,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            PrimaryButton(
              () => {Get.toNamed(Routes.PROFILE)},
              title: Strings.register,
            ),
            Logo(),
          ],
        ),
      );
    });
  }
}

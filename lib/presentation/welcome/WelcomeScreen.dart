import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:mdf_volunteers/base.dart';
import 'package:mdf_volunteers/presentation/styles/app_colors.dart';

import '../../routes/app_pages.dart';
import '../components/primary_button.dart';
import '../styles/strings.dart';
import '../styles/text_styles.dart';

class WelcomeScreen extends GetView {
  @override
  Widget build(BuildContext context) {
    return BasePage(builder: (context) {
      return Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        color: AppColors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            // SvgPicture.asset('assets/back.svg', color: AppColors.black,),
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Text(
                Strings.fii_voluntar,
                style: TextStyles.welcomeScreenHeader,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(Strings.cazare, style: TextStyles.welcomeScreenOptions),
                        Text(Strings.transport, style: TextStyles.welcomeScreenOptions),
                        Text(Strings.servicii, style: TextStyles.welcomeScreenOptions)
                      ]),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(Strings.coordonare,
                        style: TextStyles.welcomeScreenOptions),
                  ),
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 120),child: PrimaryButton(() => {
              Get.toNamed(Routes.LOGIN)
            }, title: Strings.intra_in_cont,))
          ],
        ),
      );
    });
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdf/presentation/code_verification/phone_code_controller.dart';
import 'package:mdf/presentation/components/simple_app_bar.dart';
import 'package:mdf/presentation/notifications/components/logo.dart';
import 'package:mdf/presentation/styles/app_colors.dart';
import 'package:mdf/routes/app_pages.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../base/base.dart';
import '../base/snack_bar_widget.dart';
import '../styles/strings.dart';
import '../styles/text_styles.dart';

class PhoneCodeScreen extends GetView<PhoneCodeController> {
  TextEditingController textController = TextEditingController();

  PhoneCodeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
        appBar: SimpleAppBar(context, titleKey: Strings.register_header),
        builder: (context) {
          return Container(
            color: AppColors.white,
            padding: const EdgeInsets.only(bottom: 30, left: 20, right: 20),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 35.0),
                          child: Text(
                            Strings.introdu_codul,
                            style: TextStyles.medium.copyWith(
                                color: AppColors.darkBlue, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: PinCodeTextField(
                            length: 6,
                            pinTheme: const PinTheme.defaults(
                                shape: PinCodeFieldShape.box,
                                activeColor: AppColors.primaryColor,
                                inactiveColor: AppColors.santasGray,
                                selectedColor: AppColors.primaryColor),
                            obscureText: false,
                            keyboardType: TextInputType.number,
                            animationType: AnimationType.fade,
                            animationDuration: Duration(milliseconds: 300),
                            onChanged: (value) {
                              print("PhoneCodeScreen onChanged $value");
                            },
                            appContext: context,
                            onCompleted: (value) {
                              controller.confirmCode(value);
                              Get.toNamed(Routes.REGISTER);
                            },
                          ),
                        ),
                        SizedBox(height: 65)
                      ],
                    ),
                    Logo()
                  ],
                ),
                Obx(() => controller.isLoading.value
                    ? const Center(child: CircularProgressIndicator())
                    : Container()),
                Obx(() => controller.error.value.isNotEmpty
                    ? SnackBarWidget(controller.error.value)
                    : Container())
              ],
            ),
          );
        });
  }
}

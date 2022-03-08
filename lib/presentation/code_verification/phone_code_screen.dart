import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mdf/data/storage/storage_extentions.dart';
import 'package:mdf/presentation/code_verification/phone_code_controller.dart';
import 'package:mdf/presentation/components/primary_button.dart';
import 'package:mdf/presentation/components/simple_app_bar.dart';
import 'package:mdf/presentation/notifications/components/logo.dart';
import 'package:mdf/presentation/styles/app_colors.dart';
import 'package:mdf/routes/app_pages.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../base/base.dart';
import '../styles/strings.dart';
import '../styles/text_styles.dart';

class PhoneCodeScreen extends GetView<PhoneCodeController> {
  TextEditingController textController = TextEditingController();

  PhoneCodeScreen({Key? key}) : super(key: key);
  GetStorage box = GetStorage();
  int codeLength = 4;

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
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Text(
                            "+${box.getPhoneNumber()}",
                            style: TextStyles.medium.copyWith(
                                color: AppColors.primaryBlue, fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 35.0),
                          child: Text(
                            Strings.introdu_codul,
                            style: TextStyles.medium
                                .copyWith(color: AppColors.black, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                          child: PinCodeTextField(
                            length: codeLength,
                            controller: controller.codeController,
                            pinTheme: const PinTheme.defaults(
                                shape: PinCodeFieldShape.box,
                                activeColor: AppColors.primaryColor,
                                inactiveColor: AppColors.santasGray,
                                selectedColor: AppColors.primaryColor),
                            obscureText: false,
                            keyboardType: TextInputType.number,
                            animationType: AnimationType.fade,
                            animationDuration:
                            const Duration(milliseconds: 300),
                            onChanged: (value) {
                              if (value.length != codeLength) {
                                controller.codeStatus.value =
                                    CodeInputStatus.INVALID;
                              }
                            },
                            appContext: context,
                            onCompleted: (value) {
                              confirmCode(context, value);
                            },
                          ),
                        ),
                        Obx(() {
                          var value = controller.codeStatus.value;
                          String title;
                          bool enabled = false;
                          if (value == CodeInputStatus.IN_PROGRESS) {
                            title = Strings.verifing;
                            enabled = false;
                          } else if (value == CodeInputStatus.VALID) {
                            title = Strings.verify;
                            enabled = true;
                          } else {
                            title = Strings.verify;
                            enabled = false;
                          }
                          return PrimaryButton(
                                () {
                              confirmCode(
                                  context, controller.codeController.text);
                            },
                            title: title,
                            enabled: enabled,
                          );
                        }),
                        const SizedBox(height: 65)
                      ],
                    ),
                    Logo()
                  ],
                ),
              ],
            ),
          );
        });
  }

  void confirmCode(BuildContext context, String code) {
    controller.confirmCode(code, box.getPhoneNumber(), () {
      Get.offAndToNamed(Routes.REGISTER);
    }, (error) {
      AppPages.showSnackBar(context, error);
    });
  }
}

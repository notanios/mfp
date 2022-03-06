import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:mdf_volunteers/base.dart';
import 'package:mdf_volunteers/presentation/code_verification/phone_code_controller.dart';
import 'package:mdf_volunteers/presentation/components/simple_app_bar.dart';
import 'package:mdf_volunteers/presentation/styles/app_colors.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../styles/strings.dart';
import '../styles/text_styles.dart';

class PhoneCodeScreen extends GetView<PhoneCodeController> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BasePage(
       // appBar: SimpleAppBar(context),
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Stack(
              children: [
                Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 30.0),
                        child: Text(
                          Strings.fii_voluntar,
                          style: TextStyles.welcomeScreenHeader,
                          textAlign: TextAlign.center,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 100.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            Strings.introdu_codul,
                            style: TextStyles.regular,
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: PinCodeTextField(
                              length: 6,
                              pinTheme: const PinTheme.defaults(
                                shape: PinCodeFieldShape.box,
                                activeColor: AppColors.primaryColor,
                                inactiveColor: AppColors.santasGray,
                                selectedColor: AppColors.primaryColor
                              ),
                              obscureText: false,
                              keyboardType: TextInputType.number,
                              animationType: AnimationType.fade,
                              animationDuration: Duration(milliseconds: 300),
                              onChanged: (value) {
                                print("PhoneCodeScreen onChanged $value");
                              },
                              appContext: context,
                              onCompleted: (value) {
                                print("PhoneCodeScreen onCompleted $value");
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        });
  }
}

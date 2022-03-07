import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:mdf_volunteers/base.dart';
import 'package:mdf_volunteers/presentation/components/simple_app_bar.dart';
import 'package:mdf_volunteers/presentation/login/login_controller.dart';
import 'package:mdf_volunteers/presentation/styles/app_colors.dart';
import 'package:mdf_volunteers/presentation/styles/strings.dart';
import 'package:mdf_volunteers/routes/app_pages.dart';

import '../components/input_field.dart';
import '../components/primary_button.dart';
import '../styles/text_styles.dart';

class LoginScreen extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return BasePage(
        appBar: SimpleAppBar(context),
        builder: (context) {
      return Stack(
        children: [
          Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20),
              child: Text(
                Strings.fii_voluntar,
                style: TextStyles.welcomeScreenHeader,
                textAlign: TextAlign.center,
              )),
          LayoutBuilder(builder:
              (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: IntrinsicHeight(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Column(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                  color: AppColors.primaryColor,
                                  width: 1,
                                )),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CountryCodePicker(
                                      onChanged: (code) {
                                        controller.selectedCountryCode(code);
                                      },
                                      textStyle: TextStyles.inputTextStyle,
                                      dialogSize: Size(screenSize.width - 20,
                                          screenSize.height - 300),
                                      // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                                      initialSelection: 'MD',
                                      favorite: const ['+373', 'MD'],
                                      // optional. Shows only country name and flag
                                      showCountryOnly: false,
                                      // optional. Shows only country name and flag when popup is closed.
                                      showOnlyCountryWhenClosed: false,
                                      // optional. aligns the flag and the Text left
                                      alignLeft: false,
                                    ),
                                    Expanded(
                                      child: PrsntTextInput(
                                        controller: controller.inputController,
                                        hint: Strings.nr_telefon,
                                        hideBorders: true,
                                        keyboardType: TextInputType.phone,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 15),
                                child: Obx(
                                  () => PrimaryButton(
                                    () => {
                                      Get.toNamed(Routes.PHONE_CODE)
                                      /*
                                      controller.getUsers(
                                          controller.inputController.text)*/
                                    },
                                    enabled: controller.isNumberValid.value,
                                    title: Strings.intra_in_cont,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ))
                    ],
                  ),
                )),
              ),
            );
          }),
          Obx(() => controller.isLoading.value
              ? const Center(child: CircularProgressIndicator())
              : Container()),
        ],
      );
    });
  }
}

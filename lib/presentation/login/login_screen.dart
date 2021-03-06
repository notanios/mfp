import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdf/presentation/components/simple_app_bar.dart';
import 'package:mdf/presentation/login/login_controller.dart';
import 'package:mdf/presentation/notifications/components/logo.dart';
import 'package:mdf/presentation/styles/app_colors.dart';
import 'package:mdf/presentation/styles/strings.dart';

import '../../routes/app_pages.dart';
import '../base/base.dart';
import '../base/snack_bar_widget.dart';
import '../components/input_field.dart';
import '../components/primary_button.dart';
import '../styles/text_styles.dart';

class LoginScreen extends GetView<LoginController> {
  final FocusNode _firstnameFocusNode = FocusNode();
  final FocusNode _lastnameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return BasePage(
        appBar: SimpleAppBar(
          context,
          titleKey: Strings.register_header,
        ),
        builder: (context) {
          return Container(
            padding: const EdgeInsets.only(bottom: 30.0),
            color: AppColors.white,
            child: Stack(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 35.0),
                          child: Text(
                            Strings.insert_number,
                            style: TextStyles.medium
                                .copyWith(color: AppColors.black, fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        PrsntTextInput(
                          focusNode: _firstnameFocusNode,
                          controller: controller.firstNameController,
                          hint: Strings.nume,
                          textInputAction: TextInputAction.next,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        PrsntTextInput(
                          focusNode: _lastnameFocusNode,
                          controller: controller.lastNameController,
                          hint: Strings.prenume,
                          textInputAction: TextInputAction.next,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        PrsntTextInput(
                          focusNode: _emailFocusNode,
                          controller: controller.emailController,
                          hint: Strings.email,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.done,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
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
                                  controller: controller.phoneController,
                                  hint: Strings.nr_telefon,
                                  hideBorders: true,
                                  keyboardType: TextInputType.phone,
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Obx(
                            () => PrimaryButton(
                              () {
                                hideKeyboard(context);
                                controller.login(() {
                                  Get.toNamed(Routes.PHONE_CODE);
                                }, (s) {
                                  AppPages.showSnackBar(context, s);
                                });
                              },
                              enabled: controller.isFormValid.value,
                              title: Strings.intra_in_cont,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Logo()
                ],
              ),
              Obx(() => controller.isLoading.value
                  ? const Center(child: CircularProgressIndicator())
                  : Container()),
            ]),
          );
        });
  }
}

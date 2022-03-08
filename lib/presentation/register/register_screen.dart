import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdf/presentation/components/input_field.dart';
import 'package:mdf/presentation/register/register_controller.dart';
import 'package:mdf/presentation/styles/app_colors.dart';
import 'package:mdf/presentation/styles/text_styles.dart';

import '../../routes/app_pages.dart';
import '../base/base.dart';
import '../components/primary_button.dart';
import '../components/simple_app_bar.dart';
import '../profile_form/components/help_checkboxes.dart';
import '../styles/strings.dart';

class CompleteProfileScreen extends GetView<CompleteProfileController> {
  CompleteProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
        resizeToAvoidBottomInset: true,
        appBar: SimpleAppBar(context, titleKey: Strings.complete_profile),
        builder: (context) {
          return Stack(
            children: [
              Container(
                color: AppColors.white,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Text(
                          Strings.cu_ce_poti_ajuta,
                          style: TextStyles.welcomeScreenHeader,
                          textAlign: TextAlign.center,
                        )),
                    Expanded(
                      child: LayoutBuilder(builder: (BuildContext context,
                          BoxConstraints viewportConstraints) {
                        return SingleChildScrollView(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: viewportConstraints.maxHeight,
                            ),
                            child: IntrinsicHeight(
                                child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  PrsntTextInput(
                                    controller: controller.locationController,
                                    hint: Strings.localitate,
                                    readOnly: true,
                                    onTap: () {
                                      showCountriesDialog(context);
                                    },
                                    textInputAction: TextInputAction.next,
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  HelpCheckboxes(
                                    () {
                                      controller.onCheckboxChanged();
                                    },
                                    key: controller.helpsChecksKey,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    height: 1,
                                    color: AppColors.dividerColor,
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    Strings.details,
                                    style: TextStyles.regular.copyWith(
                                        fontSize: 18, color: AppColors.black),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  PrsntTextInput(
                                    controller: controller.detailsController,
                                    maxLines: 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15),
                                    child: Obx(() => PrimaryButton(
                                          () => {
                                            controller.completeProfile(() {
                                              Get.toNamed(Routes.NOTIFICATIONS);
                                            }, (error) {
                                              AppPages.showSnackBar(
                                                  context, error);
                                            }),
                                          },
                                          title: Strings.continue_label,
                                          enabled: controller.isFormValid.value,
                                        )),
                                  )
                                ],
                              ),
                            )),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),
              Obx(() => controller.isLoading.value
                  ? const Center(child: CircularProgressIndicator())
                  : Container()),
            ],
          );
        });
  }

  void showCountriesDialog(BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        context: context,
        builder: (BuildContext context) {
          return Container(
            child: controller.district.isNotEmpty
                ? Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: ListView.builder(
                        itemCount: controller.district.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Center(
                              child:
                                  Text(controller.district[index].name ?? ""),
                            ),
                            onTap: () {
                              controller.setSelectedDistrict(
                                  controller.district[index]);
                              Get.back();
                            },
                          );
                        },
                      ),
                    ),
                  )
                : Container(),
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mdf/presentation/components/secondary_button.dart';
import 'package:mdf/presentation/profile/profile_controller.dart';
import 'package:mdf/presentation/profile_form/profile_form.dart';
import 'package:mdf/presentation/styles/app_colors.dart';

import '../base/base.dart';
import '../base/snack_bar_widget.dart';
import '../components/simple_app_bar.dart';
import '../styles/strings.dart';
import '../styles/text_styles.dart';

class ProfileScreen extends GetView<ProfileController> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BasePage(
        appBar: SimpleAppBar(
          context,
          leftWidget: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Salut Pavel",
              style: TextStyles.bold
                  .copyWith(fontSize: 25, color: AppColors.black),
            ),
          ),
          showBack: false,
          rightWidget: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          child: Container(
                            width: 48,
                            height: 48,
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset(
                              'assets/question.svg',
                              color: AppColors.black,
                            ),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: Container(
                            width: 48,
                            height: 48,
                            child: SvgPicture.asset(
                              'assets/close_icon.svg',
                              color: AppColors.black,
                            ),
                          ),
                          onTap: () {
                            Get.back();
                          },
                        )
                      ],
                    )
                  ]),
            ),
          ),
        ),
        builder: (context) {
          return Stack(children: [
            Container(
              color: AppColors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.datele_tale,
                      style: TextStyles.regular.copyWith(fontSize: 20),
                    ),
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
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Column(
                                children: [
                                  ProfileForm(false),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  SecondaryButton(() {},
                                      title: Strings.iesi_din_cont)
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
            ),
            Obx(() => controller.isLoading.value
                ? const Center(child: CircularProgressIndicator())
                : Container()),
            Obx(() => controller.error.value.isNotEmpty
                ? SnackBarWidget(controller.error.value)
                : Container())
          ]);
        });
  }
}

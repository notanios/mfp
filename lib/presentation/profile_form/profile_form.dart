import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdf_volunteers/presentation/components/checkbox_comp.dart';
import 'package:mdf_volunteers/presentation/components/checkbox_group.dart';
import 'package:mdf_volunteers/presentation/components/input_field.dart';
import 'package:mdf_volunteers/presentation/components/primary_button.dart';
import 'package:mdf_volunteers/presentation/profile_form/profile_form_controller.dart';
import 'package:mdf_volunteers/presentation/styles/app_colors.dart';
import 'package:mdf_volunteers/presentation/styles/strings.dart';
import 'package:mdf_volunteers/presentation/styles/text_styles.dart';
import 'package:mdf_volunteers/routes/app_pages.dart';

class ProfileForm extends GetView<ProfileFormController> {
  final FocusNode _firstnameFocusNode = FocusNode();
  final FocusNode _lastnameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _locationFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return scrollBody(context);
  }

  Widget scrollBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
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
          focusNode: _locationFocusNode,
          controller: controller.locationController,
          hint: Strings.localitate,
          readOnly: true,
          onTap: () {
            Size screenSize = MediaQuery.of(context).size;

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
                              padding: const EdgeInsets.only(top: 20.0),
                              child: ListView.builder(
                                itemCount: controller.district.length,
                                itemBuilder: (context, index) {
                                  return Card(
                                    child: ListTile(
                                      title: Text(
                                          controller.district[index].name ??
                                              ""),
                                      onTap: () {
                                        controller.setSelectedDistrict(
                                            controller.district[index]);
                                        Get.back();
                                      },
                                    ),
                                  );
                                },
                              ),
                            ),
                          )
                        : Container(),
                  );
                });
          },
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
          height: 20,
        ),
        Text(
          Strings.cu_ce_poti_ajuta,
          style:
              TextStyles.regular.copyWith(color: AppColors.black, fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        CheckboxComponent(
          key: controller.transportKey,
          label: Strings.transport,
          onChanged: (value) {
            controller.onCheckboxChanged();
          },
        ),
        const SizedBox(
          height: 10,
        ),
        CheckboxComponent(
          key: controller.cazareKey,
          label: Strings.cazare,
          onChanged: (value) {
            controller.onCheckboxChanged();
          },
        ),
        const SizedBox(
          height: 10,
        ),
        CheckboxComponent(
          key: controller.coordonationOnlineKey,
          label: Strings.coordonare_online,
          onChanged: (value) {
            controller.onCheckboxChanged();
          },
        ),
        const SizedBox(
          height: 10,
        ),
        CheckboxComponent(
          key: controller.coordonationOfflineKey,
          label: Strings.coordonare_offline,
          onChanged: (value) {
            controller.onCheckboxChanged();
          },
        ),
        const SizedBox(
          height: 10,
        ),
        CheckboxGroup(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Obx(() => PrimaryButton(
                () => {Get.toNamed(Routes.NOTIFICATIONS)},
                title: Strings.intra_in_cont,
                enabled: controller.isFormValid.value,
              )),
        )
      ],
    );
  }
}

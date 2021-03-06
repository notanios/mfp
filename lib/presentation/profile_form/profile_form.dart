import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mdf/presentation/components/checkbox_comp.dart';
import 'package:mdf/presentation/components/checkbox_group.dart';
import 'package:mdf/presentation/components/input_field.dart';
import 'package:mdf/presentation/components/primary_button.dart';
import 'package:mdf/presentation/profile_form/components/help_checkboxes.dart';
import 'package:mdf/presentation/profile_form/profile_form_controller.dart';
import 'package:mdf/presentation/styles/app_colors.dart';
import 'package:mdf/presentation/styles/strings.dart';
import 'package:mdf/presentation/styles/text_styles.dart';
import 'package:mdf/routes/app_pages.dart';

class ProfileForm extends GetView<ProfileFormController> {
  final FocusNode _firstnameFocusNode = FocusNode();
  final FocusNode _lastnameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _locationFocusNode = FocusNode();

  bool isFromRegister;

  ProfileForm(this.isFromRegister, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.isFromRegister = isFromRegister;
    return scrollBody(context);
  }

  Widget scrollBody(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        isFromRegister
            ? Container()
            : PrsntTextInput(
                focusNode: _firstnameFocusNode,
                controller: controller.firstNameController,
                hint: Strings.nume,
                textInputAction: TextInputAction.next,
              ),
        isFromRegister
            ? Container()
            : const SizedBox(
                height: 10,
              ),
        isFromRegister
            ? Container()
            : PrsntTextInput(
                focusNode: _lastnameFocusNode,
                controller: controller.lastNameController,
                hint: Strings.prenume,
                textInputAction: TextInputAction.next,
              ),
        isFromRegister
            ? Container()
            : const SizedBox(
                height: 10,
              ),
        PrsntTextInput(
          focusNode: _locationFocusNode,
          controller: controller.locationController,
          hint: Strings.localitate,
          readOnly: true,
          onTap: () {
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
                                      child: Text(
                                          controller.district[index].name ??
                                              ""),
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
          },
          textInputAction: TextInputAction.next,
        ),
        isFromRegister
            ? Container()
            : const SizedBox(
                height: 10,
              ),
        isFromRegister
            ? Container()
            : PrsntTextInput(
                focusNode: _emailFocusNode,
                controller: controller.emailController,
                hint: Strings.email,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
              ),
        const SizedBox(
          height: 20,
        ),
        isFromRegister
            ? Container()
            : Text(
                Strings.cu_ce_poti_ajuta,
                style: TextStyles.regular
                    .copyWith(color: AppColors.black, fontSize: 18),
              ),
        const SizedBox(
          height: 10,
        ),
        HelpCheckboxes((){
          controller.onCheckboxChanged();
        }),
        const SizedBox(
          height: 10,
        ),
        const CheckboxGroup(),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: AppColors.dividerColor,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          Strings.details,
          style:
              TextStyles.regular.copyWith(fontSize: 18, color: AppColors.black),
        ),
        const SizedBox(
          height: 5,
        ),
        PrsntTextInput(
          controller: controller.detailsController,
          maxLines: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Obx(() => PrimaryButton(
                () => {Get.toNamed(Routes.NOTIFICATIONS)},
                title: isFromRegister ? Strings.continue_label : Strings.save,
                enabled: controller.isFormValid.value,
              )),
        )
      ],
    );
  }
}

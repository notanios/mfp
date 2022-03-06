import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:mdf_volunteers/presentation/components/checkbox_comp.dart';
import 'package:mdf_volunteers/presentation/components/checkbox_group.dart';
import 'package:mdf_volunteers/presentation/components/input_field.dart';
import 'package:mdf_volunteers/presentation/components/primary_button.dart';
import 'package:mdf_volunteers/presentation/styles/app_colors.dart';
import 'package:mdf_volunteers/presentation/styles/strings.dart';
import 'package:mdf_volunteers/presentation/styles/text_styles.dart';

class ProfileForm extends GetView {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  final FocusNode _firstnameFocusNode = FocusNode();
  final FocusNode _lastnameFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _locationFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return scrollBody();
  }

  Widget scrollBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        PrsntTextInput(
          focusNode: _firstnameFocusNode,
          controller: firstNameController,
          hint: Strings.nume,
          textInputAction: TextInputAction.next,
        ),
        const SizedBox(
          height: 10,
        ),
        PrsntTextInput(
          focusNode: _lastnameFocusNode,
          controller: lastNameController,
          hint: Strings.prenume,
          textInputAction: TextInputAction.next,
        ),

        const SizedBox(
          height: 10,
        ),

        PrsntTextInput(
          focusNode: _locationFocusNode,
          controller: locationController,
          hint: Strings.localitate,
          textInputAction: TextInputAction.next,
        ),
        const SizedBox(
          height: 10,
        ),
        PrsntTextInput(
          focusNode: _emailFocusNode,
          controller: emailController,
          hint: Strings.email,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.done,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          Strings.cu_ce_poti_ajuta,
          style: TextStyles.regular
              .copyWith(color: AppColors.black, fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        CheckboxComponent(
          label: Strings.transport,
        ),
        const SizedBox(
          height: 10,
        ),
        CheckboxComponent(
          label: Strings.cazare,
        ),
        const SizedBox(
          height: 10,
        ),
        CheckboxComponent(
          label: Strings.coordonare_online,
        ),
        const SizedBox(
          height: 10,
        ),
        CheckboxComponent(
          label: Strings.coordonare_offline,
        ),
        const SizedBox(
          height: 10,
        ),
        CheckboxGroup(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: PrimaryButton(() => {}, title: Strings.intra_in_cont),
        )
      ],
    );
  }
}

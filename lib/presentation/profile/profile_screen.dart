import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mdf_volunteers/base.dart';
import 'package:mdf_volunteers/presentation/components/secondary_button.dart';
import 'package:mdf_volunteers/presentation/profile/profile_controller.dart';
import 'package:mdf_volunteers/presentation/profile_form/profile_form.dart';
import 'package:mdf_volunteers/presentation/styles/app_colors.dart';

import '../styles/strings.dart';
import '../styles/text_styles.dart';

class ProfileScreen extends GetView<ProfileController> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BasePage(builder: (context) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Salut Pavel ",
                      style: TextStyles.regular
                          .copyWith(fontSize: 28, color: AppColors.black),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 32,
                          width: 32,
                          child: SvgPicture.asset(
                            'assets/question.svg',
                            color: AppColors.black,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 22,
                          width: 22,
                          child: SvgPicture.asset(
                            'assets/close_icon.svg',
                            color: AppColors.black,
                          ),
                        ),
                      ],
                    )
                  ]),
              const SizedBox(height: 30),
              Text(
                Strings.datele_tale,
                style: TextStyles.regular.copyWith(fontSize: 20),
              ),
              Expanded(
                child: LayoutBuilder(builder:
                    (BuildContext context, BoxConstraints viewportConstraints) {
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
                            const SizedBox(height: 20,),
                            SecondaryButton( (){
                            }, title: Strings.iesi_din_cont)
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
      );
    });
  }
}

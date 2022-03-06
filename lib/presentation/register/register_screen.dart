import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:mdf_volunteers/base.dart';
import 'package:mdf_volunteers/presentation/profile_form/profile_form.dart';
import 'package:mdf_volunteers/presentation/styles/text_styles.dart';

import '../components/simple_app_bar.dart';
import '../styles/strings.dart';

class RegisterScreen extends GetView {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
        builder: (context) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      Strings.fii_voluntar,
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
                          padding: const EdgeInsets.only(top: 30.0),
                          child: ProfileForm(),
                        )),
                      ),
                    );
                  }),
                ),
              ],
            ),
          );
        });
  }
}

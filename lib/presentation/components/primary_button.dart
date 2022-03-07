import 'package:flutter/material.dart';
import 'package:mdf/presentation/styles/app_colors.dart';
import 'package:mdf/presentation/styles/text_styles.dart';


class PrimaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool enabled;
  final String title;

  const PrimaryButton(this.onPressed, {Key? key, this.enabled = true, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: double.infinity, minHeight: 45),
      child: OutlinedButton(
        style: ButtonStyle(
           elevation: MaterialStateProperty.all<double>(enabled ? 2 : 0),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(enabled ? AppColors.primaryBlue : AppColors.primaryBlue.withAlpha(80)),
            textStyle: MaterialStateProperty.all<TextStyle>(
                TextStyles.primaryButtonTextStyle)),
        onPressed: () {
          if(enabled){
            onPressed();
          }
        },
        child: Text(title),
      ),
    );
  }
}

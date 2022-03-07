import 'package:flutter/material.dart';

import '../styles/app_colors.dart';
import '../styles/text_styles.dart';

class SecondaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool enabled;
  final String title;

  const SecondaryButton(this.onPressed, {Key? key, this.enabled = true, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: double.infinity, minHeight: 45),
      child: OutlinedButton(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(enabled ? AppColors.tuna : AppColors.tuna.withAlpha(80)),
            overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
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
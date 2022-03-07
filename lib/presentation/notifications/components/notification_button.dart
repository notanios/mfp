import 'package:flutter/material.dart';
import 'package:mdf_volunteers/presentation/styles/app_colors.dart';
import 'package:mdf_volunteers/presentation/styles/text_styles.dart';

class NotificationButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool enabled;
  final String title;
  final Color background;

  const NotificationButton(this.onPressed,
      {Key? key,
      this.enabled = true,
      required this.title,
      required this.background})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:
          const BoxConstraints(minWidth: 150, minHeight: 30),
      child: OutlinedButton(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor: MaterialStateProperty.all<Color>(background),
            textStyle: MaterialStateProperty.all<TextStyle>(TextStyles.bold
                .copyWith(color: AppColors.white, fontSize: 13))),
        onPressed: () {
          if (enabled) {
            onPressed();
          }
        },
        child: Text(title),
      ),
    );
  }
}

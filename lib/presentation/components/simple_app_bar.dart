import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mdf_volunteers/presentation/styles/app_colors.dart';
import 'package:mdf_volunteers/presentation/styles/text_styles.dart';

class SimpleAppBar extends AppBar {
  final String? titleKey;
  final bool showBack;
  final BuildContext context;
  final Widget? rightWidget;
  final Color? colorBackGround;
  final Color? colorBackIcon;
  final PreferredSize? bottomWidget;
  final VoidCallback? onBackTap;

  SimpleAppBar(
    this.context, {Key? key,
    this.titleKey,
    this.showBack = false,
    this.rightWidget,
    this.colorBackGround,
    this.colorBackIcon,
    this.bottomWidget,
    this.onBackTap,
  }) : super(key: key);

  @override
  bool get automaticallyImplyLeading => false;

  @override
  Widget? get title => Container(
        width: double.infinity,
        height: kToolbarHeight,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                 backWidget(context, colorIcon: colorBackIcon, onBackTap: onBackTap),
              ],
            ),
            rightWidget != null
                ? rightWidget!
                : Container(
                    width: 0,
                  ),
          ],
        ),
      );

  @override
  Color? get backgroundColor => colorBackGround ?? AppColors.white;

  @override
  double? get elevation => 0;

  @override
  double? get titleSpacing => 0;

  @override
  PreferredSizeWidget? get bottom => bottomWidget;
}

Widget backWidget(BuildContext context, {VoidCallback? onBackTap, Color? colorIcon}) {
  return Material(
    color: Colors.transparent,
    child: InkResponse(
      radius: 20,
      onTap: () {
        if (onBackTap != null) {
          onBackTap();
        } else {
          Navigator.of(context).pop();
        }
      },
      child: Container(
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SizedBox(width: 32, height: 32, child: SvgPicture.asset('assets/back.svg', color: AppColors.black,),),
      ),
    ),
  );
}

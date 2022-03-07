import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mdf_volunteers/presentation/styles/app_colors.dart';
import 'package:mdf_volunteers/presentation/styles/text_styles.dart';

class SimpleAppBar extends AppBar {
  final String? titleKey;
  final bool showBack;
  final BuildContext context;
  final Widget? rightWidget;
  final Widget? leftWidget;
  final Color? colorBackGround;
  final Color? colorBackIcon;
  final PreferredSize? bottomWidget;
  final VoidCallback? onBackTap;

  SimpleAppBar(
    this.context, {
    Key? key,
    this.titleKey,
    this.showBack = true,
    this.rightWidget,
    this.leftWidget,
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
                leftWidget != null
                    ? leftWidget!
                    : showBack
                        ? backWidget(context,
                            colorIcon: colorBackIcon, onBackTap: onBackTap)
                        : Container()
              ],
            ),
            Container(
                child: Text(
                  titleKey != null ? titleKey! : "",
                  style: TextStyles.medium
                      .copyWith(color: AppColors.black, fontSize: 19),
                )),
            rightWidget != null
                ? rightWidget!
                : Container(width: showBack ? 48 : 0),
          ],
        ),
      );

  @override
  Color? get backgroundColor => colorBackGround ?? AppColors.white;

  @override
  double? get elevation => 0.2;

  @override
  double? get titleSpacing => 0;

  @override
  PreferredSizeWidget? get bottom => bottomWidget;
}

Widget backWidget(BuildContext context,
    {VoidCallback? onBackTap, Color? colorIcon}) {
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
        height: 48,
        width: 48,
        child: SizedBox(
          width: 32,
          height: 32,
          child: SvgPicture.asset(
            'assets/back.svg',
            color: AppColors.black,
          ),
        ),
      ),
    ),
  );
}

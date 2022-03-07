import 'package:flutter/material.dart';
import 'package:mdf/presentation/styles/app_colors.dart';

import '../styles/text_styles.dart';

class SnackBarWidget extends StatefulWidget {
  final String title;
  final VoidCallback? onClosed;
  final Duration? durationToClose;

  const SnackBarWidget(this.title, {Key? key, this.onClosed, this.durationToClose}) : super(key: key);

  @override
  State<StatefulWidget> createState() => SnackBarWidgetState();
}

class SnackBarWidgetState extends State<SnackBarWidget> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> position;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 700));
    position = Tween<Offset>(begin: const Offset(0.0, 4.0), end: Offset.zero)
        .animate(CurvedAnimation(parent: controller, curve: Curves.bounceIn));

    controller.forward();

  }

  //SafeArea if we want to show status bar
  @override
  Widget build(BuildContext context) {
    return Container(child: notificationView());
  }

  Widget notificationView() {
    return AbsorbPointer(
      absorbing: false,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.zero,
          child: SlideTransition(
            position: position,
            child: GestureDetector(
              onVerticalDragUpdate: (utils) {
               // _close();
              },
              child: Material(
                color: AppColors.santasGray,
                child: SafeArea(
                  top: false,
                  child: Container(
                    width: double.infinity,
                    decoration: ShapeDecoration(
                      color: AppColors.tuna,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      ),
                    ),
                    child: Container(
                      constraints: const BoxConstraints(minHeight: 50),
                      color: AppColors.tuna,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              widget.title,
                              style: TextStyles.medium.copyWith(color: Colors.white, fontSize: 14),
                              maxLines: 2,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _close() {
    controller.reverse();
  }

  @override
  void dispose() {
    super.dispose();
    if (widget.onClosed != null) {
      widget.onClosed!();
    }
  }
}

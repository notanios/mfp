import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mdf/base.dart';
import 'package:mdf/presentation/components/simple_app_bar.dart';
import 'package:mdf/presentation/notifications/components/NotificationCard.dart';
import 'package:mdf/presentation/notifications/notifications_controller.dart';
import 'package:mdf/presentation/styles/app_colors.dart';
import 'package:mdf/presentation/styles/strings.dart';
import 'package:mdf/presentation/styles/text_styles.dart';

import '../../routes/app_pages.dart';
import 'components/availability_switch.dart';

class NotificationsScreen extends GetView<NotificationsController> {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(
        appBar: SimpleAppBar(
          context,
          leftWidget: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Salut Pavel",
              style: TextStyles.bold
                  .copyWith(fontSize: 25, color: AppColors.black),
            ),
          ),
          showBack: false,
          rightWidget: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          child: Container(
                            width: 48,
                            height: 48,
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset(
                              'assets/question.svg',
                              color: AppColors.black,
                            ),
                          ),
                          onTap: () {},
                        ),
                        InkWell(
                          child: Container(
                            width: 48,
                            height: 48,
                            padding: const EdgeInsets.all(12),
                            child: SvgPicture.asset(
                              'assets/profile.svg',
                              color: AppColors.black,
                            ),
                          ),
                          onTap: () {
                            Get.toNamed(Routes.PROFILE);
                          },
                        )
                      ],
                    )
                  ]),
            ),
          ),
        ),
        builder: (context) {
          return Container(
            color: AppColors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  color: AppColors.black.withAlpha(7),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 15),
                  child: AvailabilitySwitch(),
                ),
                Container(
                  height: 0.3,
                  width: double.infinity,
                  color: AppColors.dividerColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: Text(
                          Strings.solicitari,
                          style: TextStyles.regular.copyWith(fontSize: 20),
                        ),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                          final item = controller.notifications[index];

                          return NotificationCard(notifications: item);
                        }, childCount: controller.notifications.length),
                      )
                    ],
                  ),
                ))
              ],
            ),
          );
        });
  }
}

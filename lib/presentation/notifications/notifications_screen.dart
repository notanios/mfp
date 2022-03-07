import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mdf/presentation/components/no_overscroll_behavior.dart';
import 'package:mdf/presentation/components/simple_app_bar.dart';
import 'package:mdf/presentation/notifications/components/notification_card.dart';
import 'package:mdf/presentation/notifications/notifications_controller.dart';
import 'package:mdf/presentation/styles/app_colors.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../routes/app_pages.dart';
import '../base/base.dart';
import '../base/snack_bar_widget.dart';
import '../styles/text_styles.dart';
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
          return Stack(
            children: [
              Container(
                color: AppColors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: AppColors.cardBg,
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.black.withOpacity(0.1),
                              spreadRadius: 1,
                              blurRadius: 5,
                              offset: Offset(3, 1),
                            )
                          ]),
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
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Obx(() => SmartRefresher(
                            enablePullDown: true,
                            enablePullUp: false,
                            controller: controller.refreshController,
                            onRefresh: () {
                              controller.getNotifications(false);
                            },
                            child: CustomScrollView(
                              scrollBehavior: NoOverscrollBehaviour(),
                              slivers: [
                                SliverList(
                                  delegate: SliverChildBuilderDelegate(
                                      (BuildContext context, int index) {
                                    final item =
                                        controller.notifications.value[index];

                                    return NotificationCard(notification: item);
                                  },
                                      childCount: controller
                                          .notifications.value.length),
                                )
                              ],
                            ),
                          )),
                    ))
                  ],
                ),
              ),
              Obx(() => controller.isLoading.value
                  ? const Center(child: CircularProgressIndicator())
                  : Container()),
              Obx(() => controller.error.value.isNotEmpty
                  ? SnackBarWidget(controller.error.value)
                  : Container())
            ],
          );
        });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:mdf_volunteers/base.dart';
import 'package:mdf_volunteers/presentation/notifications/components/NotificationCard.dart';
import 'package:mdf_volunteers/presentation/notifications/notifications_controller.dart';
import 'package:mdf_volunteers/presentation/styles/app_colors.dart';
import 'package:mdf_volunteers/presentation/styles/strings.dart';
import 'package:mdf_volunteers/presentation/styles/text_styles.dart';

import 'components/availability_switch.dart';

class NotificationsScreen extends GetView<NotificationsController> {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BasePage(builder: (context) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
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
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Text(
                    Strings.availability,
                    style: TextStyles.regular.copyWith(fontSize: 20),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  AvailabilitySwitch()
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 1,
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
/*


            NestedScrollView(headerSliverBuilder: SliverAppBar(
                pinned: false,
                title: Text(Strings.solicitari,
                  style: TextStyles.regular.copyWith(fontSize: 20),)),
                body: CustomScrollView(slivers: [
                  SliverList(delegate: delegate)
                ],))
*/
          ],
        ),
      );
    });
  }
}

/*
Expanded(child: ListView.builder(
// Let the ListView know how many items it needs to build.
itemCount: controller.notifications.length,
// Provide a builder function. This is where the magic happens.
// Convert each item into a widget based on the type of item it is.
itemBuilder: (context, index) {
final item = controller.notifications[index];

return NotificationCard(notifications: item);
},
)),*/

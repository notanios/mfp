import 'package:flutter/material.dart';
import 'package:mdf/data/models/index.dart';
import 'package:mdf/presentation/styles/app_colors.dart';
import 'package:mdf/presentation/styles/text_styles.dart';

import '../../styles/strings.dart';
import 'notification_button.dart';

class NotificationCard extends StatelessWidget {
  HelpNotification notification;

  NotificationCard({Key? key, required this.notification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Card(
          elevation: 4.0,
          color: AppColors.cardBg,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      notification.type ?? "",
                      style: TextStyles.bold
                          .copyWith(color: AppColors.black, fontSize: 18),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.santasGray,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(8)),
                      child:
                      RichText(
                        text: TextSpan(
                            text: Strings.status,
                            style: TextStyles.medium
                                .copyWith(fontSize: 14, color: AppColors.black),
                            children: <TextSpan>[
                              TextSpan(
                                  text: notification.status ?? "",
                                  style: TextStyles.bold
                                      .copyWith(fontSize: 14, color: AppColors.primaryBlue)),
                            ]),
                      )
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  notification.descriptions ?? "",
                  style: TextStyles.regular
                      .copyWith(color: AppColors.black, fontSize: 14),
                ),
                const SizedBox(
                  height: 14,
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: AppColors.dividerColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NotificationButton(
                      () {},
                      background: AppColors.green,
                      title: Strings.accept,
                    ),
                    NotificationButton(
                          () {},
                      background: AppColors.red,
                      title: Strings.ignore,
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}

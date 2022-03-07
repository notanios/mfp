import 'package:flutter/material.dart';
import 'package:mdf/data/models/index.dart';
import 'package:mdf/presentation/styles/app_colors.dart';
import 'package:mdf/presentation/styles/text_styles.dart';

import 'notification_button.dart';

class NotificationCard extends StatelessWidget {
  HelpNotification notification;

  NotificationCard({Key? key, required this.notification}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 2.0,
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
                    child: Text(
                      "Status: ${notification.status?.toUpperCase() ?? ""}",
                      style: TextStyles.regular
                          .copyWith(color: AppColors.tuna, fontSize: 14),
                    ),
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
                height: 8,
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
                    title: "Acceapta",
                  ),
                  NotificationButton(
                        () {},
                    background: AppColors.red,
                    title: "Refuza",
                  )
                ],
              )
            ],
          ),
        ));
  }
}

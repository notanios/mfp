import 'package:flutter/material.dart';
import 'package:mdf/data/models/index.dart';
import 'package:mdf/presentation/styles/app_colors.dart';
import 'package:mdf/presentation/styles/text_styles.dart';

import '../../styles/strings.dart';
import 'notification_button.dart';

class NotificationCard extends StatelessWidget {
  Ticket notification;

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
                      notification.giverPublicCodeID ?? "",
                      style: TextStyles.bold
                          .copyWith(color: AppColors.black, fontSize: 18),
                    ),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 3, horizontal: 5),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.santasGray,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8)),
                        child: RichText(
                          text: TextSpan(
                              text: Strings.status,
                              style: TextStyles.medium.copyWith(
                                  fontSize: 14, color: AppColors.black),
                              children: <TextSpan>[
                                TextSpan(
                                    text:
                                        notification.haveTransport.toString() ??
                                            "",
                                    style: TextStyles.bold.copyWith(
                                        fontSize: 14,
                                        color: AppColors.primaryBlue)),
                              ]),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),

                Container(width: double.infinity,height: 1, color: AppColors.dividerColor),

                const SizedBox(
                  height: 8,
                ),

                persons(notification),

                const SizedBox(height: 8,),

                Container(width: double.infinity,height: 1, color: AppColors.dividerColor),

                const SizedBox(height: 14,),

                Text(
                  notification.askingText ?? "",
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

  Widget persons(Ticket ticket) {
    TextStyle style = TextStyles.medium
        .copyWith(color: AppColors.black, fontSize: 15);

    Widget? malesWidget = notification.males != null && notification.males! > 0
        ? Text(
      Strings.males + notification.males.toString(),
      style: style,
    ) : null;

    Widget? femalesWidget =  notification.females != null && notification.females! > 0
        ? Text(
      Strings.females + notification.females.toString(),
      style: style,
    ) : null;

    Widget? childrenWidget = notification.children != null && notification.children! > 0
        ? Text(
      Strings.children + notification.children.toString(),
      style: style,
    ) : null;

    Widget? animalsWidget = notification.animals != null && notification.animals! > 0
        ? Text(
      Strings.animale + notification.animals.toString(),
      style: style,
    ) : null;




    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: femalesWidget ?? malesWidget ?? Container()),
            Expanded(child: femalesWidget != null ? malesWidget ?? Container() : Container())
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Expanded(
                child: childrenWidget ?? animalsWidget ?? Container()),
            Expanded(child: childrenWidget != null ? animalsWidget ?? Container() : Container(),),
          ],
        ),
        SizedBox(height: 10,),
        Text(
            notification.haveTransport == true
                ? Strings.have_transport + Strings.yes
                : Strings.have_transport + Strings.no,
            style: TextStyles.bold
                .copyWith(color: notification.haveTransport == true  ? AppColors.primaryBlue : AppColors.black, fontSize: 14))
      ],
    );
  }
}

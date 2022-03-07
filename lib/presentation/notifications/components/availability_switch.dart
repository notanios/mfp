import 'package:flutter/cupertino.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:mdf/presentation/styles/app_colors.dart';
import 'package:mdf/presentation/styles/strings.dart';
import 'package:mdf/presentation/styles/text_styles.dart';

class AvailabilitySwitch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AvailabilitySwitchState();
  }
}

class AvailabilitySwitchState extends State<AvailabilitySwitch> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    String availability;
    Color statusColor;
    if (isChecked) {
      availability = Strings.available;
      statusColor = AppColors.green;
    } else {
      availability = Strings.unavailable;
      statusColor = AppColors.red;
    }

    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
              text: Strings.status,
              style: TextStyles.bold
                  .copyWith(fontSize: 19, color: AppColors.santasGray),
              children: <TextSpan>[
                TextSpan(
                    text: availability,
                    style: TextStyles.bold
                        .copyWith(fontSize: 19, color: statusColor)),
              ]),
        ),
        FlutterSwitch(
          width: 50.0,
          height: 25.0,
          toggleSize: 25.0,
          value: isChecked,
          borderRadius: 30.0,
          padding: 2.0,
          showOnOff: false,
          onToggle: (val) {
            setState(() {
              isChecked = val;
            });
          },
        )
      ],
    );
  }
}

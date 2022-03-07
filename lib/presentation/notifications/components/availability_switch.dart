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
      statusColor = AppColors.primaryBlue;
    } else {
      availability = Strings.unavailable;
      statusColor = AppColors.black;
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
                  .copyWith(fontSize: 17, color: AppColors.santasGray),
              children: <TextSpan>[
                TextSpan(
                    text: availability,
                    style: TextStyles.bold
                        .copyWith(fontSize: 17, color: statusColor)),
              ]),
        ),
        FlutterSwitch(
          width: 40.0,
          height: 20.0,
          toggleSize: 20.0,
          value: isChecked,
          borderRadius: 30.0,
          activeColor: AppColors.primaryBlue,
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

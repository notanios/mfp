import 'package:flutter/cupertino.dart';
import 'package:flutter_switch/flutter_switch.dart';

class AvailabilitySwitch extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AvailabilitySwitchState();
  }
}

class AvailabilitySwitchState extends State<AvailabilitySwitch>{
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
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
    );
  }

}
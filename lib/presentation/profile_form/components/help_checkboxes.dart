import 'package:flutter/cupertino.dart';
import 'package:mdf/presentation/components/checkbox_comp.dart';
import 'package:mdf/presentation/styles/strings.dart';

import '../../components/checkbox_group.dart';

class HelpCheckboxes extends StatefulWidget {
  Function onCheckboxChanged;
  HelpCheckboxes(this.onCheckboxChanged, {Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return HelpCheckboxesState();
  }
}

class HelpCheckboxesState extends State<HelpCheckboxes>{
  final transportKey = GlobalKey<CheckBoxComponentState>();
  final cazareKey = GlobalKey<CheckBoxComponentState>();
  final coordonationOnlineKey = GlobalKey<CheckBoxComponentState>();
  final coordonationOfflineKey = GlobalKey<CheckBoxComponentState>();
  final servicesKey = GlobalKey<CheckboxGroupState>();

  List<String> getCheckedServicesLabels() {
    List<String> labels = [];
    if (transportKey.currentState?.isChecked == true) {
      labels.add(Strings.transport);
    }

    if (cazareKey.currentState?.isChecked == true) {
      labels.add(Strings.cazare);
    }

    if (coordonationOnlineKey.currentState?.isChecked == true) {
      labels.add(Strings.coordonare_online);
    }

    if (coordonationOfflineKey.currentState?.isChecked == true) {
      labels.add(Strings.coordonare_offline);
    }

    if (servicesKey.currentState?.isChecked == true) {
      var services = servicesKey.currentState?.getCheckedServicesLabels() ?? [];
      labels.addAll(services);
    }

    print("getCheckedServicesLabels ${labels.length}");
    return labels;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CheckboxComponent(
        key: transportKey,
        label: Strings.transport,
        onChanged: (value) {
          widget.onCheckboxChanged();
        },
      ),
      const SizedBox(
        height: 10,
      ),
      CheckboxComponent(
        key: cazareKey,
        label: Strings.cazare,
        onChanged: (value) {
          widget.onCheckboxChanged();
        },
      ),
      const SizedBox(
        height: 10,
      ),
      CheckboxComponent(
        key: coordonationOnlineKey,
        label: Strings.coordonare_online,
        onChanged: (value) {
          widget.onCheckboxChanged();
        },
      ),
      const SizedBox(
        height: 10,
      ),
      CheckboxComponent(
        key: coordonationOfflineKey,
        label: Strings.coordonare_offline,
        onChanged: (value) {
          widget.onCheckboxChanged();
        },
      ),
      const SizedBox(
        height: 10,
      ),
      const CheckboxGroup(),
    ],);
  }

}
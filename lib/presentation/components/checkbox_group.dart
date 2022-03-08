import 'package:flutter/material.dart';
import 'package:mdf/presentation/components/checkbox_comp.dart';
import 'package:mdf/presentation/styles/strings.dart';

import '../styles/app_colors.dart';

class CheckboxGroup extends StatefulWidget {
  const CheckboxGroup({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CheckboxGroupState();
  }
}

class CheckboxGroupState extends State<CheckboxGroup> {
  bool isChecked = false;

  final consiliereKey = GlobalKey<CheckBoxComponentState>();
  final juridicKey = GlobalKey<CheckBoxComponentState>();
  final traduceriKey = GlobalKey<CheckBoxComponentState>();
  final medicKey = GlobalKey<CheckBoxComponentState>();
  final consulareKey = GlobalKey<CheckBoxComponentState>();
  final alteleKey = GlobalKey<CheckBoxComponentState>();

  List<String> getCheckedServicesLabels() {
    List<String> labels = [];
    if (consiliereKey.currentState?.isChecked == true) {
      labels.add(Strings.consiliere);
    }

    if (juridicKey.currentState?.isChecked == true) {
      labels.add(Strings.juridic);
    }

    if (traduceriKey.currentState?.isChecked == true) {
      labels.add(Strings.traduceri);
    }

    if (medicKey.currentState?.isChecked == true) {
      labels.add(Strings.medic);
    }

    if (consulareKey.currentState?.isChecked == true) {
      labels.add(Strings.consulare);
    }

    if (alteleKey.currentState?.isChecked == true) {
      labels.add(Strings.altele);
    }
    return labels;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxComponent(
          label: Strings.servicii,
          onChanged: (value) {
            setState(() {
              isChecked = value;
            });
          },
        ),
        const SizedBox(
          height: 10,
        ),
        isChecked ? group() : Container()
      ],
    );
  }

  Widget group() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.santasGray,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: CheckboxComponent(
                label: Strings.consiliere,
                key: consiliereKey,
              )),
              Expanded(
                  child: CheckboxComponent(
                label: Strings.juridic,
                key: juridicKey,
              ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                  child: CheckboxComponent(
                label: Strings.traduceri,
                key: traduceriKey,
              )),
              Expanded(
                  child: CheckboxComponent(
                label: Strings.medic,
                key: medicKey,
              ))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                  child: CheckboxComponent(
                label: Strings.consulare,
                key: consulareKey,
              )),
              Expanded(
                  child: CheckboxComponent(
                label: Strings.altele,
                key: alteleKey,
              ))
            ],
          )
        ],
      ),
    );
  }
}

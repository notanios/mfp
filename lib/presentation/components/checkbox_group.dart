import 'package:flutter/material.dart';
import 'package:mdf/presentation/components/checkbox_comp.dart';
import 'package:mdf/presentation/styles/strings.dart';

import '../styles/app_colors.dart';

class CheckboxGroup extends StatefulWidget {
  const CheckboxGroup({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _CheckboxGroupState();
  }
}

class _CheckboxGroupState extends State<CheckboxGroup> {
  bool isChecked = false;

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
      ), borderRadius: BorderRadius.circular(8)),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(child: CheckboxComponent(label: Strings.consiliere)),
              Expanded(child: CheckboxComponent(label: Strings.juridic))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(child: CheckboxComponent(label: Strings.traduceri)),
              Expanded(child: CheckboxComponent(label: Strings.medic))
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(child: CheckboxComponent(label: Strings.consulare)),
              Expanded(child: CheckboxComponent(label: Strings.altele))
            ],
          )
        ],
      ),
    );
  }
}

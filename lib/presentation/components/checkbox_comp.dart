import 'package:flutter/material.dart';
import 'package:mdf/presentation/styles/app_colors.dart';
import 'package:mdf/presentation/styles/text_styles.dart';

class CheckboxComponent extends StatefulWidget {
  String label;
  final Function? onChanged;

  CheckboxComponent({Key? key, required this.label, this.onChanged})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CheckBoxComponentState();
  }
}

class CheckBoxComponentState extends State<CheckboxComponent> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.selected,
      };
      if (states.any(interactiveStates.contains)) {
        return AppColors.primaryBlue;
      } else {
        return AppColors.black;
      }
    }

    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            checkColor: Colors.white,
            fillColor: MaterialStateProperty.resolveWith(getColor),
            value: isChecked,
            onChanged: (bool? value) {
              isChecked = value!;
              if (widget.onChanged != null) {
                widget.onChanged!(isChecked);
              }
              setState(() {
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            widget.label,
            style: TextStyles.regular.copyWith(fontSize: 15, color: AppColors.black),
          ),
        )
      ],
    );
  }
}

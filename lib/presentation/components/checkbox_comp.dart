import 'package:flutter/material.dart';
import 'package:mdf_volunteers/presentation/styles/app_colors.dart';
import 'package:mdf_volunteers/presentation/styles/text_styles.dart';

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
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return AppColors.primaryColor;
      }
      return AppColors.primaryColor;
    }

    print("Checkbox isChecked $isChecked");
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
              setState(() {
                print("Checkbox onChanged $value");
                isChecked = value!;
                if (widget.onChanged != null) {
                  widget.onChanged!(isChecked);
                }
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(
            widget.label,
            style: TextStyles.regular.copyWith(fontSize: 13),
          ),
        )
      ],
    );
  }
}

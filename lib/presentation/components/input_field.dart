import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../styles/app_colors.dart';
import '../styles/text_styles.dart';

class PrsntTextInput extends StatefulWidget {
  PrsntTextInput(
      {Key? key,
      this.focusNode,
      required TextEditingController controller,
      this.validator,
      this.keyboardType,
      this.onTap,
      this.onRefocus,
      this.onFieldSubmitted,
      this.textInputAction,
      this.disabledColor,
      Widget? suffixIcon,
      Widget? prefixIcon,
      Widget? prefixWidget,
      String hint = '',
      this.showCounter = true,
      this.readOnly = false,
      this.maxLines = 1,
      this.maxLength,
      this.maxLengthEnforcement = MaxLengthEnforcement.none,
      this.textCapitalization = TextCapitalization.none,
      this.obscureText = false,
      this.autofocus = false,
      this.suffixIconPadding,
      this.borderRadius,
      this.hideBorders = false})
      : _controller = controller,
        _hint = hint,
        _suffixIcon = suffixIcon,
        _prefixIcon = prefixIcon,
        prefixWidget = prefixWidget,
        super(key: key);

  final Color? disabledColor;
  final FocusNode? focusNode;
  final TextEditingController _controller;
  final FormFieldValidator<String>? validator;
  final String _hint;
  final Widget? _suffixIcon;
  final TextInputType? keyboardType;
  final GestureTapCallback? onTap;
  final Function? onRefocus;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputAction? textInputAction;
  final bool readOnly;
  final int maxLines;
  final int? maxLength;
  final maxLengthEnforcement;
  final Widget? _prefixIcon;
  final Widget? prefixWidget;
  final bool showCounter;
  final TextCapitalization textCapitalization;
  final bool obscureText;
  final bool autofocus;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? suffixIconPadding;
  final bool hideBorders;

  @override
  _PrsntTextInputState createState() => _PrsntTextInputState();
}

class _PrsntTextInputState extends State<PrsntTextInput> {
  final FocusNode _focusNode = FocusNode();
  late StreamSubscription<bool> keyboardSubscription;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    keyboardSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: TextFormField(
        autofocus: widget.autofocus,
        obscureText: widget.obscureText,
        textCapitalization: widget.textCapitalization,
        maxLength: widget.maxLength,
        maxLengthEnforcement: widget.maxLengthEnforcement,
        readOnly: widget.readOnly,
        maxLines: widget.maxLines,
        focusNode: _focusNode,
        controller: widget._controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        keyboardType: widget.keyboardType,
        validator: widget.validator,
        style: TextStyles.inputTextStyle,
        onFieldSubmitted: widget.onFieldSubmitted,
        textInputAction: widget.textInputAction,
        onTap: widget.onTap,
        decoration: InputDecoration(
            counterText: widget.showCounter ? null : '',
            hintText: widget._hint,
            // filled: true,
            hintStyle: TextStyles.hintStyle,
            contentPadding: EdgeInsets.symmetric(
                horizontal: 16, vertical: widget.maxLines > 1 ? 16 : 16),
            enabledBorder: OutlineInputBorder(
              borderRadius: widget.borderRadius ?? BorderRadius.circular(2),
              borderSide: BorderSide(
                  color: widget.hideBorders
                      ? AppColors.transparent
                      : AppColors.santasGray,
                  width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: widget.borderRadius ?? BorderRadius.circular(2),
              borderSide: BorderSide(color: widget.hideBorders ? AppColors.transparent : AppColors.primaryColor, width: 1),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: widget.borderRadius ?? BorderRadius.circular(2),
              borderSide: BorderSide(color: widget.hideBorders ? AppColors.transparent : AppColors.red, width: 1),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: widget.borderRadius ?? BorderRadius.circular(2),
              borderSide: BorderSide(color: widget.hideBorders ? AppColors.transparent : AppColors.red, width: 1),
            ),
            suffixIcon: widget._suffixIcon != null
                ? Padding(
                    padding:
                        widget.suffixIconPadding ?? const EdgeInsets.all(12.0),
                    child: widget._suffixIcon,
                  )
                : null,
            prefix: widget.prefixWidget,
            prefixIcon: widget._prefixIcon != null
                ? Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: widget._prefixIcon,
                  )
                : null),
      ),
    );
  }
}

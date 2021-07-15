import 'package:flutter/material.dart';
import '../theme/colors.dart';
import '../theme/common_sizes.dart';
import '../theme/text_styles.dart';

typedef void StringCallback(String val);

class FormTextField extends StatelessWidget {
  final bool isObscure;
  final StringCallback onTextChanged;
  final FocusNode focusNode;
  final TextEditingController controller;
  final String hintText;
  FormTextField({
    required this.isObscure,
    required this.onTextChanged,
    required this.focusNode,
    required this.controller,
    required this.hintText,
  });
  Widget build(BuildContext context) {
    return TextField(
      decoration: new InputDecoration(
        isDense: true,
        hintText: hintText,
        fillColor: Color(
          ColorCode.textFormBackground,
        ),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              CustomSizes.textFormBorderRadius,
            ),
          ),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
      controller: controller,
      focusNode: focusNode,
      obscureText: isObscure,
      autocorrect: false,
      maxLines: 1,
      onChanged: onTextChanged,
      style: TextStyles.formTextStyle,
    );
  }
}

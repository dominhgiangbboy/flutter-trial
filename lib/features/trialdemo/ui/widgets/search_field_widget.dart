import 'package:flutter/material.dart';
import 'package:trialdemo/features/trialdemo/ui/theme/colors.dart';
import 'package:trialdemo/features/trialdemo/ui/theme/common_sizes.dart';
import 'package:trialdemo/features/trialdemo/ui/theme/text_styles.dart';

typedef void StringCallback(String val);
typedef void Callback();
const double paddingValue = 16.0;

class SearchField extends StatelessWidget {
  final bool isObscure;
  final StringCallback onTextChanged;
  final Callback onSearchClick;
  final FocusNode focusNode;
  final TextEditingController controller;
  final String hintText;
  SearchField({
    required this.isObscure,
    required this.onTextChanged,
    required this.focusNode,
    required this.controller,
    required this.hintText,
    required this.onSearchClick,
  });
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(
        paddingValue,
      ),
      child: TextField(
        textInputAction: TextInputAction.search,
        onSubmitted: (value) {
          this.onSearchClick();
        },
        decoration: new InputDecoration(
          isDense: true,
          hintText: hintText,
          fillColor: Color(
            ColorCode.textFormBackground,
          ),
          filled: true,
          suffixIcon: Padding(
            padding: EdgeInsets.all(8.0),
            child: IconButton(
              splashRadius: 20,
              splashColor: Color(ColorCode.darkBackground),
              onPressed: onSearchClick,
              icon: Icon(
                Icons.search_outlined,
              ),
            ),
          ),
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
      ),
    );
  }
}

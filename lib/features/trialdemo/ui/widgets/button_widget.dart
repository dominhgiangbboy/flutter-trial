import 'package:flutter/material.dart';
import 'package:trialdemo/core/platform/typedef_declaration.dart';
import '../theme/colors.dart';
import '../theme/text_styles.dart';

const double buttonRadius = 10.0;
const double paddingButton = 16.0;

class CancelButton extends StatelessWidget {
  final CallBack onPressEvent;
  final String buttonText;
  final FocusNode buttonFocusNode;
  CancelButton({
    required this.buttonText,
    required this.onPressEvent,
    required this.buttonFocusNode,
  });
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.all(
          paddingButton,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            buttonRadius,
          ),
        ),
        side: BorderSide(
          style: BorderStyle.none,
          width: 0.0,
        ),
        backgroundColor: Color(
          ColorCode.textFormBackground,
        ),
        primary: Color(
          ColorCode.darkBackground,
        ),
        onSurface: Colors.red,
      ),
      onPressed: onPressEvent,
      focusNode: buttonFocusNode,
      child: Text(
        buttonText,
        style: TextStyles.cancelButtonTextStyle,
      ),
    );
  }
}

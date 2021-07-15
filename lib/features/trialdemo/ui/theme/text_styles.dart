import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'common_sizes.dart';
import 'colors.dart';

class TextStyles {
  static final TextStyle splashScreenTitleTextStyle = TextStyle(
    color: Color(
      ColorCode.whiteBackground,
    ),
    fontWeight: FontWeight.w800,
    letterSpacing: CustomSizes.letterSpacingTitle,
    fontFamily: 'MyFlutterApp',
    fontSize: CustomSizes.fontSizeTitle,
  );
  static final TextStyle splashLoginTitleTextStyle = TextStyle(
    color: Color(
      ColorCode.mainTheme,
    ),
    fontWeight: FontWeight.w800,
    letterSpacing: CustomSizes.letterSpacingTitle,
    fontFamily: 'MyFlutterApp',
    fontSize: CustomSizes.fontSizeTitle,
  );
  static final TextStyle formTextStyle = TextStyle();
  static final TextStyle buttonTextStyle = TextStyle(
    fontSize: 20.0,
    letterSpacing: CustomSizes.letterSpacingTitle,
    fontWeight: FontWeight.w800,
    color: Color(
      ColorCode.whiteBackground,
    ),
  );
  static final TextStyle detailedTextStyle = TextStyle(
    fontSize: 32.0,
    letterSpacing: CustomSizes.letterSpacingTitle,
    fontWeight: FontWeight.w500,
    color: Color(
      ColorCode.darkBackground,
    ),
  );
  static final TextStyle cancelButtonTextStyle = TextStyle(
    fontSize: 20.0,
    letterSpacing: CustomSizes.letterSpacingTitle,
    fontWeight: FontWeight.w800,
    color: Colors.black12,
  );
  static final TextStyle itemInputStyle = TextStyle(
    fontSize: 20.0,
    letterSpacing: CustomSizes.letterSpacingTitle,
    fontWeight: FontWeight.w600,
    color: Color(
      ColorCode.whiteBackground,
    ),
  );
  static final TextStyle filterTextStyle = TextStyle(
    fontSize: 14.0,
    letterSpacing: CustomSizes.letterSpacingTitle,
    fontWeight: FontWeight.w500,
    color: Color(
      ColorCode.whiteBackground,
    ),
  );
  static final TextStyle itemHomeTextStyle = TextStyle(
    fontSize: 16.0,
    letterSpacing: CustomSizes.letterSpacingTitle,
    fontWeight: FontWeight.w600,
    color: Color(
      ColorCode.darkBackground,
    ),
  );
}

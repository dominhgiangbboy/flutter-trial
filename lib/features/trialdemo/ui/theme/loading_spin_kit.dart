import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'common_sizes.dart';

class LoadingSpinKit {
  static final spinkitThreeBound = SpinKitThreeBounce(
    color: Color(
      ColorCode.darkBackground,
    ),
    size: CustomSizes.loadingKitSize,
  );
  static final rotatingCircle = SpinKitRotatingCircle(
    color: Color(
      ColorCode.darkBackground,
    ),
  );
}

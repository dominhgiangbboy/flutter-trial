import 'dart:ui';

import 'package:get/get.dart';
import 'package:trialdemo/features/trialdemo/ui/theme/colors.dart';

// ------------------ Common snack bar -----
class SnackBarCommon {
  // ---- Error snack bar
  static void snackBarErrorShow(
    String title,
    String content,
  ) {
    Get.snackbar(
      title,
      content,
      backgroundColor: Color(
        ColorCode.errorColor,
      ),
      colorText: Color(
        ColorCode.textFormBackground,
      ),
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  // ---- Error snack bar
  static void snackBarSucessShow(
    String title,
    String content,
  ) {
    Get.snackbar(
      title,
      content,
      backgroundColor: Color(
        ColorCode.successColor,
      ),
      colorText: Color(
        ColorCode.whiteBackground,
      ),
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}

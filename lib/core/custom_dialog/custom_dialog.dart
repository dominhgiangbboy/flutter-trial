import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trialdemo/core/platform/typedef_declaration.dart';

// ------------------ Common snack bar -----
class DialogCommon {
  // ---- Error snack bar
  static void warningDialog(
    String title,
    String content,
    String buttonTextCancel,
    String buttonTextConfirm, {
    required CallBack cancelClick,
    required CallBack confirmClick,
  }) {
    Get.dialog(
      AlertDialog(
        title: Text(title),
        content: Text(content),
        elevation: 24,
        actions: [
          TextButton(
            onPressed: cancelClick,
            child: Text(buttonTextCancel),
          ),
          TextButton(
            onPressed: confirmClick,
            child: Text(buttonTextConfirm),
          ),
        ],
      ),
    );
  }
}

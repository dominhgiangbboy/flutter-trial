import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trialdemo/features/trialdemo/controller/input_screen/input_screen.dart';
import '../../theme/colors.dart';
import 'package:get/get.dart';

class InputScreen extends GetWidget<InputScreenController> {
  @override
  Widget build(BuildContext context) {
    final TextStyle _userNameFont = GoogleFonts.roboto(
      fontSize: 14,
      color: MyColor.darkBackground,
      fontWeight: FontWeight.w500,
    );
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox.expand(
        child: Container(
          color: Color(
            ColorCode.whiteBackground,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Container(
                  constraints: BoxConstraints(
                    minHeight: 100,
                  ),
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: MyColor.lightGray,
                    ),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Enter your post',
                    ),
                    controller: controller.controllerPost,
                    maxLines: null,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Enter your img link',
                    ),
                    maxLines: 1,
                    controller: controller.controllerImg,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      60,
                    ),
                    border: Border.all(
                      color: MyColor.mainTheme,
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {
                      controller.editPost(controller.thisPost.id);
                    },
                    child: Text(
                      "SEND",
                      style: TextStyle(
                        color: MyColor.mainTheme,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

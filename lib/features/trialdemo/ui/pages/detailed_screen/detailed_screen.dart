import 'package:flutter/material.dart';
import 'package:trialdemo/features/trialdemo/controller/detailed_screen/detailed_screen.dart';
import '../../theme/colors.dart';
import 'package:get/get.dart';

class DetailedScreen extends GetWidget<DetailedScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SizedBox.expand(
        child: Container(
          color: Color(
            ColorCode.whiteBackground,
          ),
        ),
      ),
    );
  }
}

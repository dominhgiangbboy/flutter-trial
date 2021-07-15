import 'package:flutter/material.dart';
import 'package:trialdemo/features/trialdemo/controller/splash_screen/splash_screen_controller.dart';
import 'package:trialdemo/features/trialdemo/ui/theme/loading_spin_kit.dart';
import '../../theme/colors.dart';
import 'package:get/get.dart';

class SplashScreen extends GetWidget<SplashScreenController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          color: Color(
            ColorCode.whiteBackground,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Image(
                image: AssetImage('assets/img/splash.png'),
              ),
              Spacer(),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: LoadingSpinKit.spinkitThreeBound,
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}

import '../controller/splash_screen/splash_screen_controller.dart';
import 'package:get/get.dart';

class SplashScreenBinding implements Bindings {
  @override
  void dependencies() async {
    Get.lazyPut<SplashScreenController>(() {
      return SplashScreenController();
    });
  }
}

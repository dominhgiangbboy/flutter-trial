import '../../routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SplashScreenController extends GetxController {
  onInit() {
    super.onInit();
    _goToHome();
  }

  // Route to Home screen
  void _goToHome() {
    // Delay for 5 seconds
    Future.delayed(const Duration(seconds: 2), () {
      // Here you can write your code
      Get.toNamed(
        Routes.INITIAL,
      );
    });
  }
}

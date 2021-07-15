import 'package:get/get.dart';
import 'package:trialdemo/features/trialdemo/controller/input_screen/input_screen.dart';

class InputScreenBinding implements Bindings {
  @override
  void dependencies() async {
    Get.lazyPut<InputScreenController>(() {
      return InputScreenController();
    });
  }
}

import 'package:get/get.dart';
import 'package:trialdemo/features/trialdemo/controller/detailed_screen/detailed_screen.dart';

class DetailedScreenBinding implements Bindings {
  @override
  void dependencies() async {
    Get.lazyPut<DetailedScreenController>(() {
      return DetailedScreenController();
    });
  }
}

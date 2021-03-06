import 'package:get/get.dart';

import '../controller/home/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() async {
    Get.lazyPut<HomeController>(() {
      return HomeController();
    });
  }
}

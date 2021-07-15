import 'package:get/get.dart';
import 'package:trialdemo/features/trialdemo/controller/new_feed_screen/new_feed_screen.dart';

class NewFeedScreenBinding implements Bindings {
  @override
  void dependencies() async {
    Get.lazyPut<NewFeedScreenController>(() {
      return NewFeedScreenController();
    });
  }
}

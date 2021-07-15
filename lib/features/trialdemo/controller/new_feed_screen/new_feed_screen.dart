import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class NewFeedScreenController extends GetxController {
  // get set welcometext
  final _welcomeText = ''.obs;
  get welcomeText => this._welcomeText.value;
  set welcomeText(value) => this._welcomeText.value = value;

  onInit() {
    super.onInit();
    var _arg = Get.arguments;
    var userName = _arg["userName"];
    this.welcomeText = "Chào mừng " + userName;
  }
}

import 'package:trialdemo/features/trialdemo/routes/app_pages.dart';

import '../../domain/entities/users_info.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  // Get welcome text
  final _welcomeText = ''.obs;
  get welcomeText => this._welcomeText.value;
  set welcomeText(value) => this._welcomeText.value = value;
  // get set Loading status
  final _isLoading = false.obs;
  get isLoading => this._isLoading.value;
  set isLoading(value) => this._isLoading.value = value;
  // Get passing data
  List<dynamic> itemsHome = List<dynamic>.empty().obs;

  // Get passing data
  List<dynamic> itemsPersonal = List<dynamic>.empty().obs;

  @override
  void onInit() {
    super.onInit();
  }

  routeToUserScreen(String userName) async {
    //input_screen
    this.isLoading = true;
    await Get.offAndToNamed(
      Routes.NEW_FEED_SCREEN,
      arguments: {'userName': userName},
    );
    return;
  }
}

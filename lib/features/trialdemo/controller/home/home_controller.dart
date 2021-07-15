import 'package:trialdemo/features/trialdemo/data/commons/common_data.dart';
import 'package:trialdemo/features/trialdemo/data/datasoures/user_info_local_data_source.dart';
import 'package:trialdemo/features/trialdemo/data/models/user_info_model.dart';
import 'package:trialdemo/features/trialdemo/routes/app_pages.dart';
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
  // Get user list to UI
  List<UserInfoModel> usersList = <UserInfoModel>[
    UserInfoModel(avatar: '', id: 0, name: ' Admin'),
  ].obs;

  @override
  void onInit() {
    super.onInit();
    _getAllUsers();
  }

  void _getAllUsers() async {
    isLoading = true;
    this.usersList.clear();
    var userListDataSource = UseListDataSourceImpl();
    List<UserInfoModel> _userList = await userListDataSource.getUserList();
    this.usersList.addAll(_userList);
    isLoading = false;
  }

  addUser() async {
    isLoading = true;
    var userList = UseListDataSourceImpl();
    var _status = await userList.addUser();
    if (_status == ResponseCode.responseSuccess) {
      _getAllUsers();
    } else if (_status == ResponseCode.responseFailed) {}
    isLoading = false;
  }

  routeToUserScreen(int index) async {
    this.isLoading = true;
    UserInfoModel _user = this.usersList[index];
    await Get.toNamed(
      Routes.NEW_FEED_SCREEN,
      arguments: _user,
    );
    this.isLoading = false;
    return;
  }
}

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:trialdemo/core/custom_dialog/custom_dialog.dart';
import 'package:trialdemo/core/snack_bar/snack_bar_show.dart';
import 'package:trialdemo/features/trialdemo/data/commons/common_data.dart';
import 'package:trialdemo/features/trialdemo/data/datasoures/post_list_data_source.dart';
import 'package:trialdemo/features/trialdemo/data/models/post_info_model.dart';
import 'package:trialdemo/features/trialdemo/data/models/user_info_model.dart';
import 'package:trialdemo/features/trialdemo/routes/app_pages.dart';

class NewFeedScreenController extends GetxController {
  // get set welcometext
  final _welcomeText = ''.obs;
  get welcomeText => this._welcomeText.value;
  set welcomeText(value) => this._welcomeText.value = value;
  // get set Loading status
  final _isLoading = false.obs;
  get isLoading => this._isLoading.value;
  set isLoading(value) => this._isLoading.value = value;

  // get set Loading status
  List<PostInfoModel> postsList = <PostInfoModel>[].obs;

  onInit() {
    super.onInit();
    UserInfoModel _arg = Get.arguments;
    var userName = _arg.name;
    this.welcomeText = "Welcome " + userName;
    getAllPosts();
  }

  void getAllPosts() async {
    isLoading = true;
    this.postsList.clear();
    var postListDataSource = PostLisDataSourceImpl();
    List<PostInfoModel> _userList = await postListDataSource.getPostList();
    this.postsList.addAll(_userList);

    isLoading = false;
  }

  addPost() async {
    isLoading = true;
    var postListDataSource = PostLisDataSourceImpl();
    int _status =
        await postListDataSource.generatePostList("New post", postsList[0].img);
    if (_status == ResponseCode.responseSuccess) {
      SnackBarCommon.snackBarSucessShow("", "Generate user successfully");
    }

    isLoading = false;
  }

  detailedScreenRoute(int index) async {
    PostInfoModel _arg = postsList[index];
    await Get.toNamed(
      Routes.DETAILED_SCREEN,
      arguments: _arg,
    );
  }

  inputScreenRoute(int index) async {
    PostInfoModel _arg = postsList[index];
    await Get.toNamed(
      Routes.INPUT_SCREEN,
      arguments: _arg,
    );
  }

  deleteAction(int index) async {
    isLoading = true;
    var postListDataSource = PostLisDataSourceImpl();
    int _status = await postListDataSource.deletePostList(index);
    if (_status == ResponseCode.responseSuccess) {
      SnackBarCommon.snackBarSucessShow("", "Delete user successfully");
      int _i = postsList.indexWhere((element) => element.id == index);
      postsList.removeAt(_i);
    }

    isLoading = false;
  }

  deleteConfirmation(int index) {
    DialogCommon.warningDialog(
      "Delete",
      "Are you sure to delete this post?",
      "Cancel",
      "Yes",
      cancelClick: () {
        Get.back();
      },
      confirmClick: () {
        deleteAction(index);
        Get.back();
      },
    );
  }
}

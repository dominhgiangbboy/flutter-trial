import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:trialdemo/features/trialdemo/data/models/comments_model.dart';
import 'package:trialdemo/features/trialdemo/data/models/post_info_model.dart';

class DetailedScreenController extends GetxController {
  // get set welcometext
  final _welcomeText = ''.obs;
  get welcomeText => this._welcomeText.value;
  set welcomeText(value) => this._welcomeText.value = value;
  // -- Comment list
  List<CommentsModel> commentsList = <CommentsModel>[].obs;

  PostInfoModel thisPost = PostInfoModel(
    name: 'Admin',
    id: 0,
    userid: 0,
    avatar: "",
    createdAt: "",
    post: "",
    img: "",
    comments: [],
  );
  onInit() {
    super.onInit();
    thisPost = Get.arguments;
    List _tempCommentList = this.thisPost.comments;
    _tempCommentList.forEach((element) {
      var _tempComment = CommentsModel.fromJson(element);
      commentsList.add(_tempComment);
    });
  }
}

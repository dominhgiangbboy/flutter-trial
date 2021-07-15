import 'package:get/get.dart';
import 'package:flutter/material.dart';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:trialdemo/features/trialdemo/controller/new_feed_screen/new_feed_screen.dart';
import 'package:trialdemo/features/trialdemo/data/commons/common_data.dart';
import 'package:trialdemo/features/trialdemo/data/datasoures/post_list_data_source.dart';
import 'package:trialdemo/features/trialdemo/data/models/comments_model.dart';
import 'package:trialdemo/features/trialdemo/data/models/post_info_model.dart';

class InputScreenController extends GetxController {
  // get set welcometext
  final _welcomeText = ''.obs;
  get welcomeText => this._welcomeText.value;
  set welcomeText(value) => this._welcomeText.value = value;

  //---

  NewFeedScreenController controllerNewFeed = Get.find();

  // get set Loading status
  final _isLoading = false.obs;
  get isLoading => this._isLoading.value;
  set isLoading(value) => this._isLoading.value = value;

  // -- Comment list
  List<CommentsModel> commentsList = <CommentsModel>[].obs;
  TextEditingController controllerPost = new TextEditingController();
  TextEditingController controllerImg = new TextEditingController();

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
    //------------------------------------
    controllerImg.text = thisPost.img;
    controllerPost.text = thisPost.post;
  }

  editPost(int index) async {
    var _imgLink = controllerImg.text;
    var _post = controllerPost.text;

    isLoading = true;
    var postListDataSource = PostLisDataSourceImpl();
    int _status =
        await postListDataSource.updatePostList(index, _post, _imgLink);
    if (_status == ResponseCode.responseSuccess) {
      controllerNewFeed.getAllPosts();
      Get.back();
    }
    isLoading = false;
  }
}

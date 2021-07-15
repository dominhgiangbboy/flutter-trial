import 'package:trialdemo/core/dio_http/dio.dart';
import 'package:trialdemo/features/trialdemo/data/commons/api_urls.dart';
import 'package:trialdemo/features/trialdemo/data/commons/common_data.dart';
import 'package:trialdemo/features/trialdemo/data/models/post_info_model.dart';

abstract class PostListDataSource {
  // ---- Get user list
  Future<List<PostInfoModel>> getPostList();
  Future<int> deletePostList(int index);
  Future<int> updatePostList(int index, String post, String imgLink);
}

class PostLisDataSourceImpl extends DioClient implements PostListDataSource {
  PostLisDataSourceImpl();

  @override
  Future<List<PostInfoModel>> getPostList() async {
    // Gets all users
    final response = await get(
      url: APIEndpoints.postsEndpoint,
    );
    var _dataPostList = response.data;
    List<PostInfoModel> _userList = [];
    _dataPostList.forEach(
      (dynamic user) => _userList.add(
        PostInfoModel.fromJson(user),
      ),
    );
    return _userList;
  }

  @override
  Future<int> deletePostList(int index) async {
    String indexString = index.toString();
    // Gets all users
    try {
      final response = await delete(
        url: APIEndpoints.postsEndpoint + '/$indexString',
      );
      return ResponseCode.responseSuccess;
    } catch (e) {
      return ResponseCode.responseFailed;
    }
  }

  @override
  Future<int> updatePostList(int index, String post, String imgLink) async {
    String indexString = index.toString();
    var _dataReq = {
      "post": post,
      "img": imgLink,
    };
    // put user by id
    try {
      final response = await put(
        url: APIEndpoints.postsEndpoint + '/$indexString',
        dataReq: _dataReq,
      );
      return ResponseCode.responseSuccess;
    } catch (e) {
      return ResponseCode.responseFailed;
    }
  }

  Future<int> generatePostList(String postString, String imgLink) async {
    var _dataReq = {
      "post": postString,
      "img": imgLink,
    };
    // put user by id
    try {
      final response = await post(
        url: APIEndpoints.postsEndpoint,
        dataReq: _dataReq,
      );
      return ResponseCode.responseSuccess;
    } catch (e) {
      return ResponseCode.responseFailed;
    }
  }
}

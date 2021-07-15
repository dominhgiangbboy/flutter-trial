import 'package:trialdemo/core/dio_http/dio.dart';
import 'package:trialdemo/core/snack_bar/snack_bar_show.dart';
import 'package:trialdemo/features/trialdemo/data/commons/api_urls.dart';
import 'package:trialdemo/features/trialdemo/data/commons/commonFunction.dart';
import 'package:trialdemo/features/trialdemo/data/commons/common_data.dart';

import '../models/user_info_model.dart';

abstract class UserListDataSource {
  // ---- Get user list
  Future<List<UserInfoModel>> getUserList();
}

class UseListDataSourceImpl extends DioClient implements UserListDataSource {
  UseListDataSourceImpl();

  @override
  Future<List<UserInfoModel>> getUserList() async {
    // Gets all users
    final response = await get(
      url: APIEndpoints.usersEndpoint,
    );
    var _dataUserList = response.data;
    List<UserInfoModel> _userList = [];
    _dataUserList.forEach(
      (dynamic user) => _userList.add(
        UserInfoModel.fromJson(user),
      ),
    );
    return _userList;
  }

  @override
  Future<int> addUser() async {
    // Gets all users
    var dataReq = {
      "userid": 1,
    };
    try {
      await post(url: APIEndpoints.usersEndpoint, dataReq: dataReq);
      SnackBarCommon.snackBarSucessShow("", "Success fully created user");
      return ResponseCode.responseSuccess;
    } catch (e) {
      SnackBarCommon.snackBarErrorShow(e.toString(), e.toString());
      return ResponseCode.responseFailed;
    }
  }
}

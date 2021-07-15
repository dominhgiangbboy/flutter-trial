import '../models/user_info_model.dart';

abstract class UserInfoRemoteDataSource {
  /// Calls the http://numbersapi.com/{number} endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<UserInfoModel> getUserInfo(int number);

  /// Calls the http://numbersapi.com/random endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<UserInfoModel> getUserList();
}

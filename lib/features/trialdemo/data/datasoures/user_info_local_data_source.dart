import '../models/user_info_model.dart';

abstract class UserInfoLocalDataSource {
  /// Gets the cached [NumberTriviaModel] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [NoLocalDataException] if no cached data is present.
  Future<UserInfoModel> getLastUserList();

  Future<void> cacheUserList(UserInfoModel userToCache);
}

const CACHED_NUMBER_TRIVIA = 'CACHED_NUMBER_TRIVIA';

class UserInfoLocalDataSourceImpl implements UserInfoLocalDataSource {
  UserInfoLocalDataSourceImpl();

  @override
  Future<void> cacheUserList(UserInfoModel userToCache) {
    // TODO: implement cacheUserList
    throw UnimplementedError();
  }

  @override
  Future<UserInfoModel> getLastUserList() {
    // TODO: implement cacheUserList
    throw UnimplementedError();
  }
}

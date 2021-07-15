import '../../domain/entities/users_info.dart';

class UserInfoModel extends UserInfoEntity {
  UserInfoModel({
    required String userName,
    required int userID,
  }) : super(
          userID: userID,
          userName: userName,
        );
  factory UserInfoModel.fromJson(Map<String, dynamic> json) {
    return UserInfoModel(
      userName: json['user_name'],
      userID: (json['user_id'] as num).toInt(),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'user_name': userName,
      'user_id': userID,
    };
  }
}

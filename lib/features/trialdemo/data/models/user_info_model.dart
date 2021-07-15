import '../../domain/entities/users_info.dart';

class UserInfoModel extends UserInfoEntity {
  UserInfoModel({
    required String name,
    required int id,
    required String avatar,
  }) : super(
          name: name,
          id: id,
          avatar: avatar,
        );
  factory UserInfoModel.fromJson(Map<String, dynamic> json) {
    return UserInfoModel(
      name: json['name'],
      id: int.tryParse(json['id']) ?? 0,
      avatar: json['avatar'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'id': id,
      'avatar': avatar,
    };
  }
}

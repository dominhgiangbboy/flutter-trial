import 'package:trialdemo/features/trialdemo/domain/entities/comments.dart';

class CommentsModel extends CommentsEntity {
  CommentsModel({
    required String name,
    required int id,
    required int userID,
    required String userName,
    required String avatar,
    required String comment,
  }) : super(
          name: name,
          id: id,
          userID: userID,
          userName: userName,
          avatar: avatar,
          comment: comment,
        );
  factory CommentsModel.fromJson(Map<String, dynamic> json) {
    return CommentsModel(
      name: json['name'] ?? "",
      avatar: json['avatar'],
      id: (json['id'] as num).toInt(),
      comment: json['comment'],
      userID: (json['userID'] as num).toInt(),
      userName: json['userName'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'id': id,
      'userID': userID,
      'userName': userName,
      'comment': comment,
      'avatar': avatar,
    };
  }
}

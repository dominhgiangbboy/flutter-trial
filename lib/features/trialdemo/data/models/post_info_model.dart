import 'package:trialdemo/features/trialdemo/domain/entities/posts_info.dart';

class PostInfoModel extends PostsInfoEntity {
  PostInfoModel({
    required String name,
    required int id,
    required int userid,
    required String avatar,
    required String createdAt,
    required String post,
    required String img,
    required List comments,
  }) : super(
          name: name,
          createdAt: createdAt,
          id: id,
          userid: userid,
          img: img,
          post: post,
          avatar: avatar,
          comments: comments,
        );
  factory PostInfoModel.fromJson(Map<String, dynamic> json) {
    return PostInfoModel(
      name: json['name'],
      id: int.tryParse(json['id'] ?? '0') ?? 0,
      avatar: json['avatar'],
      createdAt: json['createdAt'],
      post: json['post'],
      comments: json['comments'],
      userid: json['userid'],
      img: json['img'],
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'id': id,
      'avatar': avatar,
      'post': post,
      'comments': comments,
      'img': img,
      'createdAt': createdAt,
      'userid': userid,
    };
  }
}

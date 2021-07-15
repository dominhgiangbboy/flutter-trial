import 'package:equatable/equatable.dart';

class PostsInfoEntity extends Equatable {
  final String name;
  final int id;
  final int userid;
  final String avatar;
  final String img;
  final String post;
  final List comments;
  final String createdAt;

  // Variables can't be null
  PostsInfoEntity({
    required this.name,
    required this.id,
    required this.userid,
    required this.avatar,
    required this.post,
    required this.comments,
    required this.img,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [
        name,
        id,
        avatar,
      ];
}

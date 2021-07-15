import 'package:equatable/equatable.dart';

class CommentsEntity extends Equatable {
  final String name;
  final int id;
  final int userID;
  final String userName;
  final String comment;
  final String avatar;

  // Variables can't be null
  CommentsEntity({
    required this.name,
    required this.id,
    required this.userID,
    required this.userName,
    required this.comment,
    required this.avatar,
  });

  @override
  List<Object?> get props => [
        name,
        id,
        userID,
        userName,
        comment,
      ];
}

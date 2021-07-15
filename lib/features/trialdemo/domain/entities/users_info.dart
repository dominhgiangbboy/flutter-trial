import 'package:equatable/equatable.dart';

class UserInfoEntity extends Equatable {
  final String userName;
  final int userID;
  // Variables can't be null
  UserInfoEntity({
    required this.userName,
    required this.userID,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [userName, userID];
}

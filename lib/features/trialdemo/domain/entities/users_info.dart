import 'package:equatable/equatable.dart';

class UserInfoEntity extends Equatable {
  final String name;
  final int id;
  final String avatar;
  // Variables can't be null
  UserInfoEntity({
    required this.name,
    required this.id,
    required this.avatar,
  });

  @override
  List<Object?> get props => [
        name,
        id,
        avatar,
      ];
}

import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/users_info.dart';
import '../repositories/users_repositories.dart';

class GetUserList implements UseCase<UserInfoEntity, EmptyParams> {
  final UserInfoRepository repository;
  // API for user list
  GetUserList(this.repository);
  @override
  Future<Either<Failure, UserInfoEntity>> call(EmptyParams params) async {
    return await repository.getUserList();
  }
}



class EmptyParams {}

import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../entities/users_info.dart';
import '../repositories/users_repositories.dart';

class GetUserInfo implements UseCase<UserInfoEntity, Params> {
  final UserInfoRepository repository;
  GetUserInfo(this.repository);
  @override
  Future<Either<Failure, UserInfoEntity>> call(Params params) async {
    return await repository.getUserInfo(params.id);
  }
}

class Params {
  final int id;
  Params({required this.id});
}

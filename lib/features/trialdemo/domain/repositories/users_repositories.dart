import 'package:dartz/dartz.dart';
import '../../../../core/error/failures.dart';
import '../entities/users_info.dart';

abstract class UserInfoRepository {
  Future<Either<Failure, UserInfoEntity>> getUserList();
  Future<Either<Failure, UserInfoEntity>> getUserInfo(int id);
}

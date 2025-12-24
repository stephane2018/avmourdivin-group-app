import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../auth/domain/entities/user_entity.dart';

abstract class FollowersRepository {
  Future<Either<Failure, List<UserEntity>>> getFollowers(String userId);
  Future<Either<Failure, List<UserEntity>>> getFollowing(String userId);
}

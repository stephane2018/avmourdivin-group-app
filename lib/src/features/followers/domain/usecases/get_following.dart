import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../auth/domain/entities/user_entity.dart';
import '../repositories/followers_repository.dart';

class GetFollowing implements UseCase<List<UserEntity>, String> {
  final FollowersRepository repository;

  GetFollowing(this.repository);

  @override
  Future<Either<Failure, List<UserEntity>>> call(String userId) async {
    return await repository.getFollowing(userId);
  }
}

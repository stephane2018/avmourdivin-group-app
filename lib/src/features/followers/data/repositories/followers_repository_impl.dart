import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../auth/domain/entities/user_entity.dart';
import '../../domain/repositories/followers_repository.dart';
import '../datasources/followers_remote_data_source.dart';

class FollowersRepositoryImpl implements FollowersRepository {
  final FollowersRemoteDataSource remoteDataSource;

  FollowersRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<UserEntity>>> getFollowers(String userId) async {
    try {
      final remoteFollowers = await remoteDataSource.getFollowers(userId);
      return Right(remoteFollowers);
    } on Exception {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<UserEntity>>> getFollowing(String userId) async {
    try {
      final remoteFollowing = await remoteDataSource.getFollowing(userId);
      return Right(remoteFollowing);
    } on Exception {
      return Left(ServerFailure());
    }
  }
}

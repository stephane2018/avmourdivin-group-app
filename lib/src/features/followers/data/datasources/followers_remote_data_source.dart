import '../../../auth/domain/entities/user_entity.dart';

abstract class FollowersRemoteDataSource {
  Future<List<UserEntity>> getFollowers(String userId);
  Future<List<UserEntity>> getFollowing(String userId);
}

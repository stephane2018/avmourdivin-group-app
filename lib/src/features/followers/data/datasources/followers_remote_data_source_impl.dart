import '../../../auth/domain/entities/user_entity.dart';
import 'followers_remote_data_source.dart';

class FollowersRemoteDataSourceImpl implements FollowersRemoteDataSource {
  // Base de données factice d'utilisateurs
  final _users = {
    '1': const UserEntity(id: '1', email: 'user1@test.com', name: 'Alice'),
    '2': const UserEntity(id: '2', email: 'user2@test.com', name: 'Bob'),
    '3': const UserEntity(id: '3', email: 'user3@test.com', name: 'Charlie'),
    '4': const UserEntity(id: '4', email: 'user4@test.com', name: 'David'),
    '5': const UserEntity(id: '5', email: 'user5@test.com', name: 'Eve'),
  };

  // Relations de suivi factices: qui suit qui
  final _followersDb = {
    '1': {'2', '3'}, // Alice est suivie par Bob et Charlie
    '2': {'1'},       // Bob est suivi par Alice
    '3': {'1', '4'}, // Charlie est suivi par Alice et David
  };

  @override
  Future<List<UserEntity>> getFollowers(String userId) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final followerIds = _followersDb[userId] ?? {};
    return followerIds.map((id) => _users[id]!).toList();
  }

  @override
  Future<List<UserEntity>> getFollowing(String userId) async {
    await Future.delayed(const Duration(milliseconds: 500));
    final following = <UserEntity>[];
    _followersDb.forEach((key, value) {
      if (value.contains(userId)) {
        following.add(_users[key]!);
      }
    });
    return following;
  }
}

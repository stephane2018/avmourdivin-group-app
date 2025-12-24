import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../auth/domain/entities/user_entity.dart';
import '../providers/followers_providers.dart';

part 'followers_controller.g.dart';

@riverpod
class FollowersController extends _$FollowersController {
  @override
  FutureOr<List<UserEntity>> build(String userId) {
    return _getFollowers(userId);
  }

  Future<List<UserEntity>> _getFollowers(String userId) async {
    final getFollowersUseCase = ref.read(getFollowersUseCaseProvider);
    final result = await getFollowersUseCase(userId);
    return result.fold(
      (failure) => throw failure,
      (followers) => followers,
    );
  }
}

@riverpod
class FollowingController extends _$FollowingController {
  @override
  FutureOr<List<UserEntity>> build(String userId) {
    return _getFollowing(userId);
  }

  Future<List<UserEntity>> _getFollowing(String userId) async {
    final getFollowingUseCase = ref.read(getFollowingUseCaseProvider);
    final result = await getFollowingUseCase(userId);
    return result.fold(
      (failure) => throw failure,
      (following) => following,
    );
  }
}

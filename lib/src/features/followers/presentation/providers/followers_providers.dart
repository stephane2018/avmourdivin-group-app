import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/followers_remote_data_source.dart';
import '../../data/datasources/followers_remote_data_source_impl.dart';
import '../../data/repositories/followers_repository_impl.dart';
import '../../domain/repositories/followers_repository.dart';
import '../../domain/usecases/get_followers.dart';
import '../../domain/usecases/get_following.dart';

part 'followers_providers.g.dart';

@Riverpod(keepAlive: true)
FollowersRemoteDataSource followersRemoteDataSource(Ref ref) {
  return FollowersRemoteDataSourceImpl();
}

@Riverpod(keepAlive: true)
FollowersRepository followersRepository(Ref ref) {
  return FollowersRepositoryImpl(
    remoteDataSource: ref.watch(followersRemoteDataSourceProvider),
  );
}

@Riverpod(keepAlive: true)
GetFollowers getFollowersUseCase(Ref ref) {
  return GetFollowers(ref.watch(followersRepositoryProvider));
}

@Riverpod(keepAlive: true)
GetFollowing getFollowingUseCase(Ref ref) {
  return GetFollowing(ref.watch(followersRepositoryProvider));
}

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/groups_remote_data_source.dart';
import '../../data/datasources/groups_remote_data_source_impl.dart';
import '../../data/repositories/groups_repository_impl.dart';
import '../../domain/repositories/groups_repository.dart';
import '../../domain/usecases/get_groups.dart';

part 'groups_providers.g.dart';

@Riverpod(keepAlive: true)
GroupsRemoteDataSource groupsRemoteDataSource(Ref ref) {
  return GroupsRemoteDataSourceImpl();
}

@Riverpod(keepAlive: true)
GroupsRepository groupsRepository(Ref ref) {
  return GroupsRepositoryImpl(
    remoteDataSource: ref.watch(groupsRemoteDataSourceProvider),
  );
}

@Riverpod(keepAlive: true)
GetGroups getGroupsUseCase(Ref ref) {
  return GetGroups(ref.watch(groupsRepositoryProvider));
}

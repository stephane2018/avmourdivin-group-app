import '../../domain/entities/group_entity.dart';

abstract class GroupsRemoteDataSource {
  Future<List<GroupEntity>> getGroups();
}

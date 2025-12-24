import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/group_entity.dart';

abstract class GroupsRepository {
  Future<Either<Failure, List<GroupEntity>>> getGroups();
}

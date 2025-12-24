import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/group_entity.dart';
import '../repositories/groups_repository.dart';

class GetGroups implements UseCase<List<GroupEntity>, NoParams> {
  final GroupsRepository repository;

  GetGroups(this.repository);

  @override
  Future<Either<Failure, List<GroupEntity>>> call(NoParams params) async {
    return await repository.getGroups();
  }
}

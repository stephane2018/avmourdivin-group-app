import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/group_entity.dart';
import '../../domain/repositories/groups_repository.dart';
import '../datasources/groups_remote_data_source.dart';

class GroupsRepositoryImpl implements GroupsRepository {
  final GroupsRemoteDataSource remoteDataSource;

  GroupsRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<GroupEntity>>> getGroups() async {
    try {
      final remoteGroups = await remoteDataSource.getGroups();
      return Right(remoteGroups);
    } on Exception {
      return Left(ServerFailure());
    }
  }
}

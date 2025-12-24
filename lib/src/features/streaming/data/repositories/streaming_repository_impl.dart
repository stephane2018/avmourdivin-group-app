import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/stream_entity.dart';
import '../../domain/repositories/streaming_repository.dart';
import '../datasources/streaming_remote_data_source.dart';

class StreamingRepositoryImpl implements StreamingRepository {
  final StreamingRemoteDataSource remoteDataSource;

  StreamingRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<StreamEntity>>> getStreams() async {
    try {
      final remoteStreams = await remoteDataSource.getStreams();
      return Right(remoteStreams);
    } on Exception {
      return Left(ServerFailure());
    }
  }
}

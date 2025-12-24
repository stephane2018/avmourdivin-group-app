import 'package:dartz/dartz.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart' hide Failure;

import '../../../../core/error/failures.dart';
import '../../domain/entities/stream_entity.dart';
import '../../domain/repositories/streaming_repository.dart';
import '../datasources/streaming_remote_data_source.dart';

class StreamingRepositoryImpl implements StreamingRepository {
  final StreamingRemoteDataSource remoteDataSource;

  StreamingRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<StreamEntity>>> getCalls() async {
    try {
      final calls = await remoteDataSource.getCalls();
      final streamEntities = calls.map((call) => StreamEntity.fromCall(call)).toList();
      return Right(streamEntities);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<StreamEntity>>> getStreams() async {
    try {
      final streams = await remoteDataSource.getStreams();
      final streamEntities = streams.map((call) => StreamEntity.fromCall(call)).toList();
      return Right(streamEntities);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}

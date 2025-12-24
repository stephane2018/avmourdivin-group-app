import '../../domain/entities/stream_entity.dart';

abstract class StreamingRemoteDataSource {
  Future<List<StreamEntity>> getStreams();
}

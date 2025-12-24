import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/streaming_remote_data_source.dart';
import '../../data/datasources/streaming_remote_data_source_impl.dart';
import '../../data/repositories/streaming_repository_impl.dart';
import '../../domain/repositories/streaming_repository.dart';
import '../../domain/usecases/get_streams.dart';

part 'streaming_providers.g.dart';

@Riverpod(keepAlive: true)
StreamingRemoteDataSource streamingRemoteDataSource(Ref ref) {
  return StreamingRemoteDataSourceImpl();
}

@Riverpod(keepAlive: true)
StreamingRepository streamingRepository(Ref ref) {
  return StreamingRepositoryImpl(
    remoteDataSource: ref.watch(streamingRemoteDataSourceProvider),
  );
}

@Riverpod(keepAlive: true)
GetStreams getStreamsUseCase(Ref ref) {
  return GetStreams(ref.watch(streamingRepositoryProvider));
}

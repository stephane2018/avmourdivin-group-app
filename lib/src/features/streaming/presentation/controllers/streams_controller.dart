import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/stream_entity.dart';
import '../providers/streaming_providers.dart';

part 'streams_controller.g.dart';

@riverpod
class StreamsController extends _$StreamsController {
  @override
  FutureOr<List<StreamEntity>> build() {
    return _getStreams();
  }

  Future<List<StreamEntity>> _getStreams() async {
    final getStreamsUseCase = ref.read(getStreamsUseCaseProvider);
    final result = await getStreamsUseCase(NoParams());
    return result.fold(
      (failure) => throw failure,
      (streams) => streams,
    );
  }
}

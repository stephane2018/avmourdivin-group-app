import '../../domain/entities/stream_entity.dart';
import 'streaming_remote_data_source.dart';

class StreamingRemoteDataSourceImpl implements StreamingRemoteDataSource {
  @override
  Future<List<StreamEntity>> getStreams() async {
    // Simule un appel réseau
    await Future.delayed(const Duration(seconds: 1));

    return [
      const StreamEntity(
        id: '1',
        title: 'Session de questions/réponses en direct',
        thumbnailUrl: 'https://picsum.photos/seed/live1/400/225',
        channelName: 'AmourDivin TV',
        viewers: 1200,
        isLive: true,
      ),
      const StreamEntity(
        id: '2',
        title: 'Prédication du dimanche dernier',
        thumbnailUrl: 'https://picsum.photos/seed/sermon1/400/225',
        channelName: 'Pasteur John',
        viewers: 5400,
        isLive: false,
      ),
      const StreamEntity(
        id: '3',
        title: 'Étude biblique : Le livre de Jean',
        thumbnailUrl: 'https://picsum.photos/seed/bible/400/225',
        channelName: 'Groupe des jeunes',
        viewers: 350,
        isLive: true,
      ),
      const StreamEntity(
        id: '4',
        title: 'Concert de louange - Rediffusion',
        thumbnailUrl: 'https://picsum.photos/seed/worship/400/225',
        channelName: 'Worship Collective',
        viewers: 8900,
        isLive: false,
      ),
    ];
  }
}

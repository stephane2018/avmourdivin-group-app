import 'package:stream_video_flutter/stream_video_flutter.dart';

abstract class StreamingRemoteDataSource {
  Future<List<Call>> getCalls();
  Future<List<Call>> getStreams();
}

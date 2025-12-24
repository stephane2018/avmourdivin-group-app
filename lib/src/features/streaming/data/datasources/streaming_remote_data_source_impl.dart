import 'package:stream_video_flutter/stream_video_flutter.dart';

import 'streaming_remote_data_source.dart';

class StreamingRemoteDataSourceImpl implements StreamingRemoteDataSource {
  final StreamVideo client;

  StreamingRemoteDataSourceImpl(this.client);

  @override
  Future<List<Call>> getCalls() async {
    try {
      final result = await client.queryCalls(filterConditions: {'type': 'default'});
      return result.when(
        success: (response) {
          return response.calls.map((queriedCall) {
            final call = client.makeCall(
              callType: queriedCall.call.cid.type,
              id: queriedCall.call.cid.id,
            );
            // The call object will internally update its state based on the metadata.
            // We do not need to manually push state updates.
            return call;
          }).toList();
        },
        failure: (error) => throw error,
      );
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<List<Call>> getStreams() async {
    // This is a placeholder implementation. You should replace it with your actual logic.
    return [];
  }
}

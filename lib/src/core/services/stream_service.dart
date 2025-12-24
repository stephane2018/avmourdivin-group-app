import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';

class StreamService {
  late final StreamVideo client;

  Future<void> init() async {
    final apiKey = dotenv.env['STREAM_API_KEY'];
    if (apiKey == null) {
      throw Exception('Stream API Key not found in .env file');
    }

    client = StreamVideo(apiKey);
  }

  Future<void> connectUser(User user, String token) async {
    await client.connectUser(user, token);
  }

  Future<void> disconnectUser() async {
    await client.disconnectUser();
  }
}

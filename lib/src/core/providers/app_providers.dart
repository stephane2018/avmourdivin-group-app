import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../services/stream_service.dart';

part 'app_providers.g.dart';

@Riverpod(keepAlive: true)
StreamService streamService(Ref ref) {
  return StreamService();
}

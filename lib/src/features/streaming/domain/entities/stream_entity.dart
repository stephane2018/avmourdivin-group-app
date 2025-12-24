import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';

part 'stream_entity.freezed.dart';
part 'stream_entity.g.dart';

@freezed
// ignore: non_abstract_class_inherits_abstract_member
class StreamEntity with _$StreamEntity {
  const factory StreamEntity({
    required String id,
    required String title,
    required String thumbnailUrl,
    required String channelName,
    required int viewers,
    required bool isLive,
  }) = _StreamEntity;

  factory StreamEntity.fromJson(Map<String, dynamic> json) => _$StreamEntityFromJson(json);

  factory StreamEntity.fromCall(Call call) {
    return StreamEntity(
      id: call.id,
      title: call.state.value.custom['title'] as String? ?? 'Live sans titre',
      thumbnailUrl: call.state.value.custom['thumbnailUrl'] as String? ?? 'https://picsum.photos/400/225',
      channelName: call.state.value.createdByUser.name,
      viewers: call.state.value.participantCount,
      isLive: call.state.value.liveStartedAt != null,
    );
  }
}

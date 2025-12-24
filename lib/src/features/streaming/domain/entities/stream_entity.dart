import 'package:freezed_annotation/freezed_annotation.dart';

part 'stream_entity.freezed.dart';
part 'stream_entity.g.dart';

@freezed
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
}

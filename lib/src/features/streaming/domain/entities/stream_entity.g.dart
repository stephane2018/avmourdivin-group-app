// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StreamEntity _$StreamEntityFromJson(Map<String, dynamic> json) =>
    _StreamEntity(
      id: json['id'] as String,
      title: json['title'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
      channelName: json['channelName'] as String,
      viewers: (json['viewers'] as num).toInt(),
      isLive: json['isLive'] as bool,
    );

Map<String, dynamic> _$StreamEntityToJson(_StreamEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnailUrl': instance.thumbnailUrl,
      'channelName': instance.channelName,
      'viewers': instance.viewers,
      'isLive': instance.isLive,
    };

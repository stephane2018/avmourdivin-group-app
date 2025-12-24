import 'package:freezed_annotation/freezed_annotation.dart';

part 'group_entity.freezed.dart';
part 'group_entity.g.dart';

@freezed
// ignore: non_abstract_class_inherits_abstract_member
class GroupEntity with _$GroupEntity {
  const factory GroupEntity({
    required String id,
    required String name,
    required String description,
    required String createdBy,
    String? bannerUrl,
    @Default([]) List<String> members,
  }) = _GroupEntity;

  factory GroupEntity.fromJson(Map<String, dynamic> json) => _$GroupEntityFromJson(json);
}

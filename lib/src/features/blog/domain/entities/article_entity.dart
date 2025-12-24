import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_entity.freezed.dart';
part 'article_entity.g.dart';

@freezed
// ignore: non_abstract_class_inherits_abstract_member
class ArticleEntity with _$ArticleEntity {
  const factory ArticleEntity({
    required String id,
    required String title,
    required String content,
    required String authorId,
    required DateTime createdAt,
    String? imageUrl,
  }) = _ArticleEntity;

  factory ArticleEntity.fromJson(Map<String, dynamic> json) => _$ArticleEntityFromJson(json);
}

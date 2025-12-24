import '../../domain/entities/article_entity.dart';

abstract class BlogRemoteDataSource {
  Future<List<ArticleEntity>> getArticles();
}

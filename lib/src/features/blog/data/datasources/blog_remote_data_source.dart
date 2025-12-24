import '../../domain/entities/article_entity.dart';
import '../../domain/usecases/create_article.dart';

abstract class BlogRemoteDataSource {
  Future<List<ArticleEntity>> getArticles();
  Future<ArticleEntity> createArticle(CreateArticleParams params);
}

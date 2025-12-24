import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/article_entity.dart';
import '../usecases/create_article.dart';

abstract class BlogRepository {
  Future<Either<Failure, List<ArticleEntity>>> getArticles();
  Future<Either<Failure, ArticleEntity>> createArticle(CreateArticleParams params);
}

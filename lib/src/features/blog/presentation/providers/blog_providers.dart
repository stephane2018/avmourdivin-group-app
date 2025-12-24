import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/blog_remote_data_source.dart';
import '../../data/datasources/blog_remote_data_source_impl.dart';
import '../../data/repositories/blog_repository_impl.dart';
import '../../domain/repositories/blog_repository.dart';
import '../../domain/usecases/create_article.dart';
import '../../domain/usecases/get_articles.dart';

part 'blog_providers.g.dart';

@Riverpod(keepAlive: true)
BlogRemoteDataSource blogRemoteDataSource(Ref ref) {
  return BlogRemoteDataSourceImpl();
}

@Riverpod(keepAlive: true)
BlogRepository blogRepository(Ref ref) {
  return BlogRepositoryImpl(
    remoteDataSource: ref.watch(blogRemoteDataSourceProvider),
  );
}

@Riverpod(keepAlive: true)
GetArticles getArticlesUseCase(Ref ref) {
  return GetArticles(ref.watch(blogRepositoryProvider));
}

@Riverpod(keepAlive: true)
CreateArticle createArticleUseCase(Ref ref) {
  return CreateArticle(ref.watch(blogRepositoryProvider));
}

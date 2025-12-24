import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/article_entity.dart';
import '../providers/blog_providers.dart';

part 'articles_controller.g.dart';

@riverpod
class ArticlesController extends _$ArticlesController {
  @override
  FutureOr<List<ArticleEntity>> build() {
    return _getArticles();
  }

  Future<List<ArticleEntity>> _getArticles() async {
    final getArticlesUseCase = ref.read(getArticlesUseCaseProvider);
    final result = await getArticlesUseCase(NoParams());
    return result.fold(
      (failure) => throw failure,
      (articles) => articles,
    );
  }
}

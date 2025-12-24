import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/article_entity.dart';
import '../../domain/usecases/create_article.dart';
import '../providers/blog_providers.dart';

part 'create_article_controller.g.dart';

@riverpod
class CreateArticleController extends _$CreateArticleController {
  @override
  FutureOr<ArticleEntity?> build() {
    return null;
  }

  Future<void> createArticle({
    required String title,
    required String content,
    required String authorId,
  }) async {
    state = const AsyncValue.loading();
    final createArticleUseCase = ref.read(createArticleUseCaseProvider);
    final result = await createArticleUseCase(
      CreateArticleParams(title: title, content: content, authorId: authorId),
    );

    result.fold(
      (failure) => state = AsyncValue.error(failure, StackTrace.current),
      (article) => state = AsyncValue.data(article),
    );
  }
}

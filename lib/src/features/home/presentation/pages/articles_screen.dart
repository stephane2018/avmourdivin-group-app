import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../blog/presentation/controllers/articles_controller.dart';
import '../../../blog/presentation/widgets/article_card.dart';
import '../../../blog/presentation/widgets/article_card_skeleton.dart';
import '../../../../shared/presentation/widgets/error_display.dart';

class ArticlesScreen extends ConsumerWidget {
  const ArticlesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final articlesState = ref.watch(articlesControllerProvider);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/create-article'),
        child: const Icon(Icons.add),
      ),
      body: articlesState.when(
        data: (articles) => ListView.builder(
          itemCount: articles.length,
          itemBuilder: (context, index) {
            final article = articles[index];
            return ArticleCard(article: article);
          },
        ),
        loading: () => ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => const ArticleCardSkeleton(),
        ),
        error: (error, stackTrace) => ErrorDisplay(
          message: error.toString(),
          onRetry: () => ref.invalidate(articlesControllerProvider),
        ),
      ),
    );
  }
}

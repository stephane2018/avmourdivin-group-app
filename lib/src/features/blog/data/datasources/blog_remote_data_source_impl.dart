import 'dart:math';

import '../../domain/entities/article_entity.dart';
import '../../domain/usecases/create_article.dart';
import 'blog_remote_data_source.dart';

class BlogRemoteDataSourceImpl implements BlogRemoteDataSource {
  final List<ArticleEntity> _articles = [
    ArticleEntity(
      id: '1',
      title: 'Bienvenue sur le blog !',
      content: 'Ceci est le premier article de notre blog. Nous sommes ravis de vous accueillir.',
      authorId: '1',
      createdAt: DateTime.now().subtract(const Duration(days: 1)),
      imageUrl: 'https://picsum.photos/seed/picsum/400/200',
    ),
    ArticleEntity(
      id: '2',
      title: 'Découvrez notre nouvelle fonctionnalité',
      content: 'Une nouvelle fonctionnalité passionnante est maintenant disponible. Découvrez comment elle peut vous aider.',
      authorId: '1',
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
      imageUrl: 'https://picsum.photos/seed/lorem/400/200',
    ),
    ArticleEntity(
      id: '3',
      title: 'Conseils pour une meilleure expérience',
      content: 'Voici quelques conseils pour tirer le meilleur parti de notre application.',
      authorId: '2',
      createdAt: DateTime.now().subtract(const Duration(minutes: 30)),
      imageUrl: 'https://picsum.photos/seed/ipsum/400/200',
    ),
  ];
  @override
  Future<List<ArticleEntity>> getArticles() async {
    // Simule un appel réseau
    await Future.delayed(const Duration(seconds: 1));
    return _articles;
  }

  @override
  Future<ArticleEntity> createArticle(CreateArticleParams params) async {
    await Future.delayed(const Duration(seconds: 1));
    final newArticle = ArticleEntity(
      id: Random().nextInt(10000).toString(),
      title: params.title,
      content: params.content,
      authorId: params.authorId,
      createdAt: DateTime.now(),
    );
    _articles.insert(0, newArticle);
    return newArticle;
  }
}

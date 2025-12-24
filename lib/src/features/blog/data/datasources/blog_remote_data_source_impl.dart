import '../../domain/entities/article_entity.dart';
import 'blog_remote_data_source.dart';

class BlogRemoteDataSourceImpl implements BlogRemoteDataSource {
  @override
  Future<List<ArticleEntity>> getArticles() async {
    // Simule un appel réseau
    await Future.delayed(const Duration(seconds: 1));

    return [
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
  }
}

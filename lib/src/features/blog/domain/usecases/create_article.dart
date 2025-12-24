import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/article_entity.dart';
import '../repositories/blog_repository.dart';

class CreateArticle implements UseCase<ArticleEntity, CreateArticleParams> {
  final BlogRepository repository;

  CreateArticle(this.repository);

  @override
  Future<Either<Failure, ArticleEntity>> call(CreateArticleParams params) async {
    return await repository.createArticle(params);
  }
}

class CreateArticleParams extends Equatable {
  final String title;
  final String content;
  final String authorId;

  const CreateArticleParams({
    required this.title,
    required this.content,
    required this.authorId,
  });

  @override
  List<Object> get props => [title, content, authorId];
}

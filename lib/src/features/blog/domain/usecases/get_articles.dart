import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../entities/article_entity.dart';
import '../repositories/blog_repository.dart';

class GetArticles implements UseCase<List<ArticleEntity>, NoParams> {
  final BlogRepository repository;

  GetArticles(this.repository);

  @override
  Future<Either<Failure, List<ArticleEntity>>> call(NoParams params) async {
    return await repository.getArticles();
  }
}

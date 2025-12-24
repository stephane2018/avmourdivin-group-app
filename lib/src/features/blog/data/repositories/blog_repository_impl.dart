import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/article_entity.dart';
import '../../domain/repositories/blog_repository.dart';
import '../datasources/blog_remote_data_source.dart';

class BlogRepositoryImpl implements BlogRepository {
  final BlogRemoteDataSource remoteDataSource;

  BlogRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<ArticleEntity>>> getArticles() async {
    try {
      final remoteArticles = await remoteDataSource.getArticles();
      return Right(remoteArticles);
    } on Exception {
      return Left(ServerFailure());
    }
  }
}

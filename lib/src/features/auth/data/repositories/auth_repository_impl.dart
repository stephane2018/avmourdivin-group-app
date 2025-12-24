import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/repositories/auth_repository.dart';
import '../datasources/auth_remote_data_source.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  // final NetworkInfo networkInfo; // Sera ajouté plus tard pour vérifier la connexion

  AuthRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, UserEntity>> login(
      {required String email, required String password}) async {
    try {
      final remoteUser = await remoteDataSource.login(email: email, password: password);
      return Right(remoteUser);
    } on Exception {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, UserEntity>> register(
      {required String email, required String password, String? name}) async {
    try {
      final remoteUser = await remoteDataSource.register(email: email, password: password, name: name);
      return Right(remoteUser);
    } on Exception {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
     try {
      await remoteDataSource.logout();
      return const Right(null);
    } on Exception {
      return Left(ServerFailure());
    }
  }

  @override
  Stream<UserEntity?> get user {
    // Pour l'instant, nous n'implémentons pas le stream d'utilisateur.
    // Cela sera fait avec une source de données locale ou un service d'authentification réel.
    return Stream.value(null);
  }
}

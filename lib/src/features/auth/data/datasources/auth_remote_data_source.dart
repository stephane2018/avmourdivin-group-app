import '../../domain/entities/user_entity.dart';

abstract class AuthRemoteDataSource {
  Stream<UserEntity?> get user;
  Future<UserEntity> login({required String email, required String password});
  Future<UserEntity> register({required String email, required String password, String? name});
  Future<void> logout();
}


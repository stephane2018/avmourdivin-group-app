import '../../domain/entities/user_entity.dart';

abstract class AuthRemoteDataSource {
  Future<UserEntity> login({required String email, required String password});
  Future<UserEntity> register({required String email, required String password, String? name});
  Future<void> logout();
}

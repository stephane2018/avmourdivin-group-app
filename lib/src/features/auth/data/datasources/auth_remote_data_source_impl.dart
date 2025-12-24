import '../../domain/entities/user_entity.dart';
import 'auth_remote_data_source.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  @override
  Future<UserEntity> login({required String email, required String password}) async {
    // Simule un appel réseau
    await Future.delayed(const Duration(seconds: 1));

    if (email == 'test@test.com' && password == 'password') {
      return const UserEntity(
        id: '1',
        email: 'test@test.com',
        name: 'Test User',
      );
    } else {
      throw Exception('Failed to login');
    }
  }

  @override
  Future<UserEntity> register(
      {required String email, required String password, String? name}) async {
    // Simule un appel réseau
    await Future.delayed(const Duration(seconds: 1));

    return UserEntity(
      id: '2',
      email: email,
      name: name ?? 'New User',
    );
  }

  @override
  Future<void> logout() async {
    // Simule un appel réseau
    await Future.delayed(const Duration(seconds: 1));
    return;
  }
}

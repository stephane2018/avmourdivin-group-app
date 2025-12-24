import 'dart:async';

import '../../domain/entities/user_entity.dart';
import 'auth_remote_data_source.dart';

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final _userStreamController = StreamController<UserEntity?>.broadcast();

  @override
  Stream<UserEntity?> get user => _userStreamController.stream;
  @override
  Future<UserEntity> login({required String email, required String password}) async {
    // Simule un appel réseau
    await Future.delayed(const Duration(seconds: 1));

    if (email == 'test@test.com' && password == 'password') {
      const user = UserEntity(
        id: '1',
        email: 'test@test.com',
        name: 'Test User',
      );
      _userStreamController.add(user);
      return user;
    } else {
      throw Exception('Failed to login');
    }
  }

  @override
  Future<UserEntity> register(
      {required String email, required String password, String? name}) async {
    // Simule un appel réseau
    await Future.delayed(const Duration(seconds: 1));

    final user = UserEntity(
      id: '2',
      email: email,
      name: name ?? 'New User',
    );
    _userStreamController.add(user);
    return user;
  }

  @override
  Future<void> logout() async {
    // Simule un appel réseau
    await Future.delayed(const Duration(seconds: 1));
    _userStreamController.add(null);
    return;
  }
}

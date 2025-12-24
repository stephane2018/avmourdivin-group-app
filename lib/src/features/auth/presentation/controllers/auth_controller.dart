import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/user_entity.dart';
import '../../domain/usecases/login.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:stream_video_flutter/stream_video_flutter.dart';

import '../../../../core/providers/app_providers.dart';
import '../../domain/usecases/register.dart';
import '../providers/auth_providers.dart';

part 'auth_controller.g.dart';

@Riverpod(keepAlive: true)
class AuthController extends _$AuthController {
  @override
  FutureOr<UserEntity?> build() {
    // Écoute les changements d'état de l'utilisateur et met à jour l'état du provider
    ref.watch(authRepositoryProvider).user.listen((user) {
      state = AsyncValue.data(user);
    });

    return null; // L'état initial est null, puis mis à jour par le stream
  }

  Future<void> login(String email, String password) async {
    state = const AsyncValue.loading();
    final loginUseCase = ref.read(loginUseCaseProvider);
    final result = await loginUseCase(LoginParams(email: email, password: password));
    result.fold(
      (failure) => state = AsyncValue.error(failure, StackTrace.current),
      (user) {
        _connectUserToStream(user);
        state = AsyncValue.data(user);
      }
    );
  }

  Future<void> register(String email, String password, {String? name}) async {
    state = const AsyncValue.loading();
    final registerUseCase = ref.read(registerUseCaseProvider);
    final result = await registerUseCase(RegisterParams(email: email, password: password, name: name));
    result.fold(
      (failure) => state = AsyncValue.error(failure, StackTrace.current),
      (user) {
        _connectUserToStream(user);
        state = AsyncValue.data(user);
      },
    );
  }

  Future<void> _connectUserToStream(UserEntity userEntity) async {
    final streamService = ref.read(streamServiceProvider);
    final devUserId = dotenv.env['STREAM_DEV_USER_ID'];
    final devUserToken = dotenv.env['STREAM_DEV_USER_TOKEN'];

    if (devUserId == null || devUserToken == null) {
      throw Exception('Stream Dev User ID or Token not found in .env file');
    }

    final user = User(
      info: UserInfo(
        id: devUserId,
        name: userEntity.name ?? 'Utilisateur Anonyme',
        image: userEntity.avatarUrl,
      ),
    );

    await streamService.connectUser(user, devUserToken);
  }

  Future<void> logout() async {
    await ref.read(streamServiceProvider).disconnectUser();
    await ref.read(authRepositoryProvider).logout();
    state = const AsyncValue.data(null);
  }
}

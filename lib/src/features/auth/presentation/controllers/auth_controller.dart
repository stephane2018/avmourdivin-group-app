import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/user_entity.dart';
import '../../domain/usecases/login.dart';
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
      (user) => state = AsyncValue.data(user), // Le stream mettra aussi à jour l'état
    );
  }

  Future<void> register(String email, String password, {String? name}) async {
    state = const AsyncValue.loading();
    final registerUseCase = ref.read(registerUseCaseProvider);
    final result = await registerUseCase(RegisterParams(email: email, password: password, name: name));
    result.fold(
      (failure) => state = AsyncValue.error(failure, StackTrace.current),
      (user) => state = AsyncValue.data(user),
    );
  }

  Future<void> logout() async {
    await ref.read(authRepositoryProvider).logout();
    state = const AsyncValue.data(null);
  }
}

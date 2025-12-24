import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/user_entity.dart';
import '../../domain/usecases/login.dart';
import '../providers/auth_providers.dart';

part 'login_controller.g.dart';

@riverpod
class LoginController extends _$LoginController {
  @override
  FutureOr<UserEntity?> build() {
    return null;
  }

  Future<void> login(String email, String password) async {
    state = const AsyncValue.loading();
    final loginUseCase = ref.read(loginUseCaseProvider);
    final result = await loginUseCase(LoginParams(email: email, password: password));

    result.fold(
      (failure) => state = AsyncValue.error(failure, StackTrace.current),
      (user) => state = AsyncValue.data(user),
    );
  }
}

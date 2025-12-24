import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/user_entity.dart';
import '../../domain/usecases/register.dart';
import '../providers/auth_providers.dart';

part 'register_controller.g.dart';

@riverpod
class RegisterController extends _$RegisterController {
  @override
  FutureOr<UserEntity?> build() {
    return null;
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
}

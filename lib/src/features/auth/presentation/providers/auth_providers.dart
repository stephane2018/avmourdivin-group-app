import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/auth_remote_data_source.dart';
import '../../data/datasources/auth_remote_data_source_impl.dart';
import '../../data/repositories/auth_repository_impl.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/usecases/login.dart';
import '../../domain/usecases/register.dart';

part 'auth_providers.g.dart';

@Riverpod(keepAlive: true)
AuthRemoteDataSource authRemoteDataSource(Ref ref) {
  return AuthRemoteDataSourceImpl();
}

@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) {
  return AuthRepositoryImpl(
    remoteDataSource: ref.watch(authRemoteDataSourceProvider),
  );
}

@Riverpod(keepAlive: true)
Login loginUseCase(Ref ref) {
  return Login(ref.watch(authRepositoryProvider));
}

@Riverpod(keepAlive: true)
Register registerUseCase(Ref ref) {
  return Register(ref.watch(authRepositoryProvider));
}

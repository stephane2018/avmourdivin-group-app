// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'followers_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(followersRemoteDataSource)
const followersRemoteDataSourceProvider = FollowersRemoteDataSourceProvider._();

final class FollowersRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          FollowersRemoteDataSource,
          FollowersRemoteDataSource,
          FollowersRemoteDataSource
        >
    with $Provider<FollowersRemoteDataSource> {
  const FollowersRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'followersRemoteDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$followersRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<FollowersRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FollowersRemoteDataSource create(Ref ref) {
    return followersRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FollowersRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FollowersRemoteDataSource>(value),
    );
  }
}

String _$followersRemoteDataSourceHash() =>
    r'3ca3ae38da474653f199c0526e1f280f072198aa';

@ProviderFor(followersRepository)
const followersRepositoryProvider = FollowersRepositoryProvider._();

final class FollowersRepositoryProvider
    extends
        $FunctionalProvider<
          FollowersRepository,
          FollowersRepository,
          FollowersRepository
        >
    with $Provider<FollowersRepository> {
  const FollowersRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'followersRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$followersRepositoryHash();

  @$internal
  @override
  $ProviderElement<FollowersRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FollowersRepository create(Ref ref) {
    return followersRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FollowersRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FollowersRepository>(value),
    );
  }
}

String _$followersRepositoryHash() =>
    r'e1b870a1d7b6ef200ddd32c05a5476d22e63a7ec';

@ProviderFor(getFollowersUseCase)
const getFollowersUseCaseProvider = GetFollowersUseCaseProvider._();

final class GetFollowersUseCaseProvider
    extends $FunctionalProvider<GetFollowers, GetFollowers, GetFollowers>
    with $Provider<GetFollowers> {
  const GetFollowersUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getFollowersUseCaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getFollowersUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetFollowers> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetFollowers create(Ref ref) {
    return getFollowersUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetFollowers value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetFollowers>(value),
    );
  }
}

String _$getFollowersUseCaseHash() =>
    r'5f8aaecf3347df4fea2f7cf8f43258041c15b838';

@ProviderFor(getFollowingUseCase)
const getFollowingUseCaseProvider = GetFollowingUseCaseProvider._();

final class GetFollowingUseCaseProvider
    extends $FunctionalProvider<GetFollowing, GetFollowing, GetFollowing>
    with $Provider<GetFollowing> {
  const GetFollowingUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getFollowingUseCaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getFollowingUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetFollowing> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetFollowing create(Ref ref) {
    return getFollowingUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetFollowing value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetFollowing>(value),
    );
  }
}

String _$getFollowingUseCaseHash() =>
    r'aee131ff373d4a13022e7c1c37ad35fca7de096d';

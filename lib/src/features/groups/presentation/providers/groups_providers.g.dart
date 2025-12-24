// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groups_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(groupsRemoteDataSource)
const groupsRemoteDataSourceProvider = GroupsRemoteDataSourceProvider._();

final class GroupsRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          GroupsRemoteDataSource,
          GroupsRemoteDataSource,
          GroupsRemoteDataSource
        >
    with $Provider<GroupsRemoteDataSource> {
  const GroupsRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'groupsRemoteDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$groupsRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<GroupsRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GroupsRemoteDataSource create(Ref ref) {
    return groupsRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GroupsRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GroupsRemoteDataSource>(value),
    );
  }
}

String _$groupsRemoteDataSourceHash() =>
    r'95ec4a6b7f3cb7bc093e9c09adee6da4b5ab3edf';

@ProviderFor(groupsRepository)
const groupsRepositoryProvider = GroupsRepositoryProvider._();

final class GroupsRepositoryProvider
    extends
        $FunctionalProvider<
          GroupsRepository,
          GroupsRepository,
          GroupsRepository
        >
    with $Provider<GroupsRepository> {
  const GroupsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'groupsRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$groupsRepositoryHash();

  @$internal
  @override
  $ProviderElement<GroupsRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GroupsRepository create(Ref ref) {
    return groupsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GroupsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GroupsRepository>(value),
    );
  }
}

String _$groupsRepositoryHash() => r'7b34b2e0ee8ac042314873f449a92bfef3506cde';

@ProviderFor(getGroupsUseCase)
const getGroupsUseCaseProvider = GetGroupsUseCaseProvider._();

final class GetGroupsUseCaseProvider
    extends $FunctionalProvider<GetGroups, GetGroups, GetGroups>
    with $Provider<GetGroups> {
  const GetGroupsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getGroupsUseCaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getGroupsUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetGroups> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetGroups create(Ref ref) {
    return getGroupsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetGroups value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetGroups>(value),
    );
  }
}

String _$getGroupsUseCaseHash() => r'f864dedc2c6fbe2aa047c694f35257c05dd3828d';

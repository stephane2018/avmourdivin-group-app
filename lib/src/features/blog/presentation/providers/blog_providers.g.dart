// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(blogRemoteDataSource)
const blogRemoteDataSourceProvider = BlogRemoteDataSourceProvider._();

final class BlogRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          BlogRemoteDataSource,
          BlogRemoteDataSource,
          BlogRemoteDataSource
        >
    with $Provider<BlogRemoteDataSource> {
  const BlogRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'blogRemoteDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$blogRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<BlogRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  BlogRemoteDataSource create(Ref ref) {
    return blogRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BlogRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BlogRemoteDataSource>(value),
    );
  }
}

String _$blogRemoteDataSourceHash() =>
    r'7eee3a55269d4a170a897084d8123804f712d8aa';

@ProviderFor(blogRepository)
const blogRepositoryProvider = BlogRepositoryProvider._();

final class BlogRepositoryProvider
    extends $FunctionalProvider<BlogRepository, BlogRepository, BlogRepository>
    with $Provider<BlogRepository> {
  const BlogRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'blogRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$blogRepositoryHash();

  @$internal
  @override
  $ProviderElement<BlogRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  BlogRepository create(Ref ref) {
    return blogRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BlogRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BlogRepository>(value),
    );
  }
}

String _$blogRepositoryHash() => r'f65e7e0a26f82fc33ba10efec0b80d64de5da178';

@ProviderFor(getArticlesUseCase)
const getArticlesUseCaseProvider = GetArticlesUseCaseProvider._();

final class GetArticlesUseCaseProvider
    extends $FunctionalProvider<GetArticles, GetArticles, GetArticles>
    with $Provider<GetArticles> {
  const GetArticlesUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getArticlesUseCaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getArticlesUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetArticles> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetArticles create(Ref ref) {
    return getArticlesUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetArticles value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetArticles>(value),
    );
  }
}

String _$getArticlesUseCaseHash() =>
    r'4a9216e5b587ac2f5faba232f2692ca305ed8cae';

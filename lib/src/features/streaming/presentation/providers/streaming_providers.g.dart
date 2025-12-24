// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streaming_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(streamingRemoteDataSource)
const streamingRemoteDataSourceProvider = StreamingRemoteDataSourceProvider._();

final class StreamingRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          StreamingRemoteDataSource,
          StreamingRemoteDataSource,
          StreamingRemoteDataSource
        >
    with $Provider<StreamingRemoteDataSource> {
  const StreamingRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'streamingRemoteDataSourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$streamingRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<StreamingRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  StreamingRemoteDataSource create(Ref ref) {
    return streamingRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StreamingRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<StreamingRemoteDataSource>(value),
    );
  }
}

String _$streamingRemoteDataSourceHash() =>
    r'98d65015507ba986e5d66bf78a64b8ee220f2b71';

@ProviderFor(streamingRepository)
const streamingRepositoryProvider = StreamingRepositoryProvider._();

final class StreamingRepositoryProvider
    extends
        $FunctionalProvider<
          StreamingRepository,
          StreamingRepository,
          StreamingRepository
        >
    with $Provider<StreamingRepository> {
  const StreamingRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'streamingRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$streamingRepositoryHash();

  @$internal
  @override
  $ProviderElement<StreamingRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  StreamingRepository create(Ref ref) {
    return streamingRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StreamingRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<StreamingRepository>(value),
    );
  }
}

String _$streamingRepositoryHash() =>
    r'5dc27ffe90eda521c055f3421bc08c4ba60dc99e';

@ProviderFor(getStreamsUseCase)
const getStreamsUseCaseProvider = GetStreamsUseCaseProvider._();

final class GetStreamsUseCaseProvider
    extends $FunctionalProvider<GetStreams, GetStreams, GetStreams>
    with $Provider<GetStreams> {
  const GetStreamsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getStreamsUseCaseProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getStreamsUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetStreams> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetStreams create(Ref ref) {
    return getStreamsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetStreams value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetStreams>(value),
    );
  }
}

String _$getStreamsUseCaseHash() => r'f9a47553340f9fc2500802ae70acb7e2791dc7d0';

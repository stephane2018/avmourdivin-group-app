// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(streamService)
const streamServiceProvider = StreamServiceProvider._();

final class StreamServiceProvider
    extends $FunctionalProvider<StreamService, StreamService, StreamService>
    with $Provider<StreamService> {
  const StreamServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'streamServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$streamServiceHash();

  @$internal
  @override
  $ProviderElement<StreamService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  StreamService create(Ref ref) {
    return streamService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(StreamService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<StreamService>(value),
    );
  }
}

String _$streamServiceHash() => r'efc4865dfb1cf591380643ff5cb5c1ad11e36f66';

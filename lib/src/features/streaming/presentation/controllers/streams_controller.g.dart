// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streams_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(StreamsController)
const streamsControllerProvider = StreamsControllerProvider._();

final class StreamsControllerProvider
    extends $AsyncNotifierProvider<StreamsController, List<StreamEntity>> {
  const StreamsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'streamsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$streamsControllerHash();

  @$internal
  @override
  StreamsController create() => StreamsController();
}

String _$streamsControllerHash() => r'c90f1f9534913cb99a401dbbc0df9de507a7c968';

abstract class _$StreamsController extends $AsyncNotifier<List<StreamEntity>> {
  FutureOr<List<StreamEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<StreamEntity>>, List<StreamEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<StreamEntity>>, List<StreamEntity>>,
              AsyncValue<List<StreamEntity>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

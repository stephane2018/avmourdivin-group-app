// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ArticlesController)
const articlesControllerProvider = ArticlesControllerProvider._();

final class ArticlesControllerProvider
    extends $AsyncNotifierProvider<ArticlesController, List<ArticleEntity>> {
  const ArticlesControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'articlesControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$articlesControllerHash();

  @$internal
  @override
  ArticlesController create() => ArticlesController();
}

String _$articlesControllerHash() =>
    r'5363f4ef422ebf97893f3fccab61f62ac0b9d264';

abstract class _$ArticlesController
    extends $AsyncNotifier<List<ArticleEntity>> {
  FutureOr<List<ArticleEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<ArticleEntity>>, List<ArticleEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<ArticleEntity>>, List<ArticleEntity>>,
              AsyncValue<List<ArticleEntity>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

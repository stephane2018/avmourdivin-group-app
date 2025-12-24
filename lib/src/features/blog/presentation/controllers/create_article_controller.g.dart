// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_article_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateArticleController)
const createArticleControllerProvider = CreateArticleControllerProvider._();

final class CreateArticleControllerProvider
    extends $AsyncNotifierProvider<CreateArticleController, ArticleEntity?> {
  const CreateArticleControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createArticleControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createArticleControllerHash();

  @$internal
  @override
  CreateArticleController create() => CreateArticleController();
}

String _$createArticleControllerHash() =>
    r'3f56357f84527937ddfe17b511fb7f31eb21d164';

abstract class _$CreateArticleController
    extends $AsyncNotifier<ArticleEntity?> {
  FutureOr<ArticleEntity?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<ArticleEntity?>, ArticleEntity?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<ArticleEntity?>, ArticleEntity?>,
              AsyncValue<ArticleEntity?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

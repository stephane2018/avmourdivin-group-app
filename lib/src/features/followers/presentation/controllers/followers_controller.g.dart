// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'followers_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FollowersController)
const followersControllerProvider = FollowersControllerFamily._();

final class FollowersControllerProvider
    extends $AsyncNotifierProvider<FollowersController, List<UserEntity>> {
  const FollowersControllerProvider._({
    required FollowersControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'followersControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$followersControllerHash();

  @override
  String toString() {
    return r'followersControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  FollowersController create() => FollowersController();

  @override
  bool operator ==(Object other) {
    return other is FollowersControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$followersControllerHash() =>
    r'4d89698f4b53717eec9e54acfc6f344eefe123ae';

final class FollowersControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          FollowersController,
          AsyncValue<List<UserEntity>>,
          List<UserEntity>,
          FutureOr<List<UserEntity>>,
          String
        > {
  const FollowersControllerFamily._()
    : super(
        retry: null,
        name: r'followersControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FollowersControllerProvider call(String userId) =>
      FollowersControllerProvider._(argument: userId, from: this);

  @override
  String toString() => r'followersControllerProvider';
}

abstract class _$FollowersController extends $AsyncNotifier<List<UserEntity>> {
  late final _$args = ref.$arg as String;
  String get userId => _$args;

  FutureOr<List<UserEntity>> build(String userId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref as $Ref<AsyncValue<List<UserEntity>>, List<UserEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<UserEntity>>, List<UserEntity>>,
              AsyncValue<List<UserEntity>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(FollowingController)
const followingControllerProvider = FollowingControllerFamily._();

final class FollowingControllerProvider
    extends $AsyncNotifierProvider<FollowingController, List<UserEntity>> {
  const FollowingControllerProvider._({
    required FollowingControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'followingControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$followingControllerHash();

  @override
  String toString() {
    return r'followingControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  FollowingController create() => FollowingController();

  @override
  bool operator ==(Object other) {
    return other is FollowingControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$followingControllerHash() =>
    r'a520b0ba60c82e838124a08c944ccd62b2d3c273';

final class FollowingControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          FollowingController,
          AsyncValue<List<UserEntity>>,
          List<UserEntity>,
          FutureOr<List<UserEntity>>,
          String
        > {
  const FollowingControllerFamily._()
    : super(
        retry: null,
        name: r'followingControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FollowingControllerProvider call(String userId) =>
      FollowingControllerProvider._(argument: userId, from: this);

  @override
  String toString() => r'followingControllerProvider';
}

abstract class _$FollowingController extends $AsyncNotifier<List<UserEntity>> {
  late final _$args = ref.$arg as String;
  String get userId => _$args;

  FutureOr<List<UserEntity>> build(String userId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref as $Ref<AsyncValue<List<UserEntity>>, List<UserEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<UserEntity>>, List<UserEntity>>,
              AsyncValue<List<UserEntity>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

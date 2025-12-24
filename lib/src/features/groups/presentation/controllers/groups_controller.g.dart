// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groups_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GroupsController)
const groupsControllerProvider = GroupsControllerProvider._();

final class GroupsControllerProvider
    extends $AsyncNotifierProvider<GroupsController, List<GroupEntity>> {
  const GroupsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'groupsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$groupsControllerHash();

  @$internal
  @override
  GroupsController create() => GroupsController();
}

String _$groupsControllerHash() => r'53546367d9e3c25fb301fa6a9d384239c222db64';

abstract class _$GroupsController extends $AsyncNotifier<List<GroupEntity>> {
  FutureOr<List<GroupEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<GroupEntity>>, List<GroupEntity>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<GroupEntity>>, List<GroupEntity>>,
              AsyncValue<List<GroupEntity>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

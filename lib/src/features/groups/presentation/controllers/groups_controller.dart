import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/group_entity.dart';
import '../providers/groups_providers.dart';

part 'groups_controller.g.dart';

@riverpod
class GroupsController extends _$GroupsController {
  @override
  FutureOr<List<GroupEntity>> build() {
    return _getGroups();
  }

  Future<List<GroupEntity>> _getGroups() async {
    final getGroupsUseCase = ref.read(getGroupsUseCaseProvider);
    final result = await getGroupsUseCase(NoParams());
    return result.fold(
      (failure) => throw failure,
      (groups) => groups,
    );
  }
}
